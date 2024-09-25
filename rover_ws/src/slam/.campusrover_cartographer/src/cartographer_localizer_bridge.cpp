#include <iostream>

#include <thread>
#include <chrono>

#include <tf2_ros/static_transform_broadcaster.h>
#include <tf/transform_datatypes.h>
#include <tf/LinearMath/Matrix3x3.h>
#include "cartographer_localizer_bridge.hpp"


void CartographerLocalizerBridge::getParams()
{
  ros::NodeHandle n_private("~");
  n_private.param<std::string>("map_folder", map_folder_, "/");
  n_private.param<std::string>("carto_configuration_dir", carto_configuration_dir_, "/");
  n_private.param<std::string>("carto_basename_default", carto_basename_default_, "campusrover_2d_odom.lua");
}

bool CartographerLocalizerBridge::loadMapService(
  campusrover_msgs::MapLoadInfo::Request &req,
  campusrover_msgs::MapLoadInfo::Response &res)
{
  wk_building_ = req.building;
  wk_floor_ = req.floor;
  if (cr_get_map_info_.waitForExistence(ros::Duration(5, 0)))
  {
    campusrover_msgs::MapLoadInfo map_info_srv;
    map_info_srv.request.building = wk_building_;
    map_info_srv.request.floor = wk_floor_;
    if (cr_get_map_info_.call(map_info_srv))
    updateTransform(map_info_srv.response.tf);
    updateBaseMap(carto_map_state_, wk_building_, wk_floor_);
    campusrover_msgs::WorkingFloor wf_msg;
    wf_msg.building = wk_building_;
    wf_msg.floor = wk_floor_;
    working_floor_pub_.publish(wf_msg);
    return true;
  }
  else
  {
    ROS_ERROR("calling get_map_info service timeout!");
    return false;
  }
  
}

void CartographerLocalizerBridge::initPoseCallback(
  const geometry_msgs::PoseWithCovarianceStamped::ConstPtr &msg)
{
  // Finish trajectory
  cartographer_ros_msgs::FinishTrajectory cft_finish_srv;
  cft_finish_srv.request.trajectory_id = carto_map_state_.trajectory_robot;
  if (!carto_finish_trajectory_.call(cft_finish_srv)) 
  { 
    ROS_ERROR("Failed to Finish robot trajectory");
    return;
  }
  // Active a new trajectory
  int new_traj_id = std::max(carto_map_state_.trajectory_map, carto_map_state_.trajectory_robot) + 1; // new trajectory id
  cartographer_ros_msgs::StartTrajectory cft_start_srv;
  cft_start_srv.request.configuration_directory = carto_configuration_dir_;
  cft_start_srv.request.configuration_basename = carto_basename_default_;
  cft_start_srv.request.use_initial_pose = true;
  cft_start_srv.request.initial_pose = msg->pose.pose;
  cft_start_srv.request.relative_to_trajectory_id = carto_map_state_.trajectory_map;
  if (!carto_cr_start_trajectory_.call(cft_start_srv)) {
    ROS_ERROR("Failed to start robot trajectory");
    return;
  }
  carto_map_state_.trajectory_robot = new_traj_id;
}

void CartographerLocalizerBridge::submapCallback(
  const cartographer_ros_msgs::SubmapList::ConstPtr &msg)
{
  existing_submaps_.clear();
  for (const auto &submap: msg->submap)
  {
    existing_submaps_.insert(submap.trajectory_id);
  }
  submap_ready_ = true;
}

bool CartographerLocalizerBridge::enLocalizerService(
  campusrover_msgs::LocalizerSwitch::Request &req,
  campusrover_msgs::LocalizerSwitch::Response &res)
{
  if (req.mode ==  campusrover_msgs::LocalizerSwitch::Request::MODE_DISABLE)
  {
  }
  else if(req.mode ==  campusrover_msgs::LocalizerSwitch::Request::MODE_ENABLE)
  {
    campusrover_msgs::MapInitPose cr_map_inti_pose_srv;
    cr_map_inti_pose_srv.request.building = req.building;
    cr_map_inti_pose_srv.request.floor = req.floor;
    cr_map_inti_pose_srv.request.init_point = req.init_point;
    std::cout << "[Carto Bridge] Obtainding init point from: \n" << cr_map_inti_pose_srv.request << std::endl;
    if (!cr_get_init_point_.call(cr_map_inti_pose_srv)) 
    { 
      res.message = "Failed to load initial point from database";
      return false; 
    }
    std::cout << "[Carto Bridge] Obtainded point: \n" << cr_map_inti_pose_srv.response << std::endl;
    cartographer_ros_msgs::StartTrajectory cft_start_srv;
    int new_traj_id = std::max(carto_map_state_.trajectory_map, carto_map_state_.trajectory_robot) + 1; // new trajectory id
    cft_start_srv.request.configuration_directory = carto_configuration_dir_;
    cft_start_srv.request.configuration_basename = carto_basename_default_;
    cft_start_srv.request.use_initial_pose = true;
    cft_start_srv.request.initial_pose = cr_map_inti_pose_srv.response.pose.pose;
    cft_start_srv.request.relative_to_trajectory_id = carto_map_state_.trajectory_map;
    std::cout << "[Carto Bridge] Starting trajectory: [map id, traj id] = [" 
              << cft_start_srv.request.relative_to_trajectory_id << ", " 
              << new_traj_id << "]" << std::endl;
    if (!carto_cr_start_trajectory_.call(cft_start_srv)) {
      std::cout << "[Carto Bridge] Starting trajectory failed" << std::endl;
      res.message = "Failed to start new trajectory with id "
      + std::to_string(new_traj_id);
      return false;
    }
    std::cout << "[Carto Bridge] Starting trajectory success" << std::endl;
    carto_map_state_.trajectory_robot = new_traj_id;
    res.message = "Success to start new trajectory with id "
      + std::to_string(new_traj_id);
    return true;
  }
  else if(campusrover_msgs::LocalizerSwitch::Request::MODE_PURE_2D_SCANMATCHING)
  {

  }
}

bool CartographerLocalizerBridge::deleteMapService(
    std_srvs::Empty::Request &req,
    std_srvs::Empty::Response &res)
{
  cartographer_ros_msgs::DeleteTrajectory cft_delect_srv;
  cft_delect_srv.request.trajectory_id = carto_map_state_.trajectory_map;
  if (!carto_map_state_.map_exist)
  {
    return true;
  }
  ROS_INFO("[Carto Bridge] Wait for delecting trajectory: %d ...\n", cft_delect_srv.request.trajectory_id);
  if (carto_delete_trajectory_.call(cft_delect_srv))
  {
    while (isSubmapExist(cft_delect_srv.request.trajectory_id))
    {
      std::this_thread::sleep_for(std::chrono::milliseconds(500));
    }
    carto_map_state_.map_exist = false;
    return true;
  }
  else
  {
    return false;
  }
}

void CartographerLocalizerBridge::updateTransform(
  const geometry_msgs::TransformStamped tf)
{
  static tf2_ros::StaticTransformBroadcaster world_map_tf;
  geometry_msgs::TransformStamped tf_current(tf);
  tf_current.header.stamp = ros::Time::now();
  world_map_tf.sendTransform(tf_current);
}

void CartographerLocalizerBridge::initTransform()
{
  geometry_msgs::TransformStamped tf;
  tf.child_frame_id = "map";
  tf.header.frame_id = "world";
  tf.header.stamp = ros::Time::now();
  tf.transform.rotation.x = 0;
  tf.transform.rotation.y = 0;
  tf.transform.rotation.z = 0;
  tf.transform.rotation.w = 1;
  tf.transform.translation.x = 0;
  tf.transform.translation.y = 0;
  tf.transform.translation.z = 0;
  updateTransform(tf);
}

void CartographerLocalizerBridge::updateBaseMap(CgMapState &state, 
  const std::string building,
  const std::string floor)
{
  cartographer_ros_msgs::FinishTrajectory cft_finish_srv;
  cft_finish_srv.request.trajectory_id = state.trajectory_robot;
  if (carto_finish_trajectory_.call(cft_finish_srv))
  {
    if (state.map_exist)
    {
      cartographer_ros_msgs::DeleteTrajectory cft_delect_srv;
      cft_delect_srv.request.trajectory_id = state.trajectory_map;
      if (carto_delete_trajectory_.call(cft_delect_srv))
      {
        ROS_INFO("[Carto Bridge] Wait for delecting Map: %d ...\n", cft_delect_srv.request.trajectory_id);
        while (isSubmapExist(cft_delect_srv.request.trajectory_id))
        {
          std::this_thread::sleep_for(std::chrono::milliseconds(500));
        }
        state.map_exist = false;
        ROS_INFO("[Carto Bridge] Map is deleted\n");
      }
    }
    if (!state.map_exist)
    {
      cartographer_ros_msgs::MapLoad cft_loadmap_srv;
      int new_idx = std::max(state.trajectory_map, state.trajectory_robot) + 1;
      std::string prifixB = "";
      std::string prifixF = "";
      std::string floor_str = "";
      if (building == "vlp16_campus")
      {
        prifixB = "ZONE";
        floor_str = floor;
      }
      else
      {
        if (std::stoi(floor) >= 0)
        {
          prifixF = "F";
          floor_str = floor;
        }
        else
        {
          prifixB = "B";
          floor_str = floor.substr(1, floor.size()-1);
        }
      }
      cft_loadmap_srv.request.filename 
        = map_folder_+building+"/"+prifixB+floor_str+prifixF+".pbstream";
      ROS_INFO("[Carto Bridge] Wait for loading the map: %s ...\n", cft_loadmap_srv.request.filename.c_str());
      if (carto_map_load_.call(cft_loadmap_srv))
      {
        submap_ready_ = false;
        while (!isSubmapExist(new_idx))
        {
          std::this_thread::sleep_for(std::chrono::milliseconds(500));
        }
        state.trajectory_map = new_idx;
        state.map_exist = true;
        ROS_INFO("[Carto Bridge] Map is loaded\n");
      }
    }
  }
}

bool CartographerLocalizerBridge::checkServicesExist()
{
  ROS_INFO("Checking carto_map_load service\n");
  if (!carto_map_load_.waitForExistence(ros::Duration(10, 0))){return false; }
  ROS_INFO("Checking carto_cr_start_trajectory service\n");
  if (!carto_cr_start_trajectory_.waitForExistence(ros::Duration(10, 0))){return false; }
  ROS_INFO("Checking carto_finish_trajectory service\n");
  if (!carto_finish_trajectory_.waitForExistence(ros::Duration(10, 0))){return false; }
  ROS_INFO("Checking carto_delete_trajectory service\n");
  if (!carto_delete_trajectory_.waitForExistence(ros::Duration(10, 0))){return false; }
  ROS_INFO("Checking carto_write_state service\n");
  if (!carto_write_state_.waitForExistence(ros::Duration(10, 0))){return false; }
  ROS_INFO("Checking cr_get_map_info service\n");
  if (!cr_get_map_info_.waitForExistence(ros::Duration(10, 0))){return false; }
  ROS_INFO("Checking cr_get_init_point service\n");
  if (!cr_get_init_point_.waitForExistence(ros::Duration(10, 0))){return false; }
  ROS_INFO("Checking cr_launch_carto service\n");
  if (!cr_launch_carto_.waitForExistence(ros::Duration(10, 0))){return false; }
  ROS_INFO("All service are checked\n");
  return true;
}

bool CartographerLocalizerBridge::isSubmapExist(int key)
{
  if (submap_ready_)
  {
    return existing_submaps_.count(key);
  }
  else
  {
    return false;
  }
}

CartographerLocalizerBridge::CartographerLocalizerBridge(/* args */)
{
  getParams();
  initTransform();
  // Cartographer Luke modified
  carto_map_load_            = n_.serviceClient<cartographer_ros_msgs::MapLoad>("map_load");
  carto_cr_start_trajectory_ = n_.serviceClient<cartographer_ros_msgs::StartTrajectory>("start_trajectory");
  carto_finish_trajectory_   = n_.serviceClient<cartographer_ros_msgs::FinishTrajectory>("finish_trajectory");
  carto_delete_trajectory_   = n_.serviceClient<cartographer_ros_msgs::DeleteTrajectory>("delete_trajectory");
  carto_write_state_         = n_.serviceClient<cartographer_ros_msgs::WriteState>("write_state");
  // Cumpus Rover System
  cr_get_map_info_   = n_.serviceClient<campusrover_msgs::MapLoadInfo>("get_map_info");
  cr_get_init_point_ = n_.serviceClient<campusrover_msgs::MapInitPose>("get_init_point");
  cr_launch_carto_   = n_.serviceClient<campusrover_msgs::LocalizerLauncher>("launch_cartographer");

  if (!checkServicesExist())
  {
    ROS_ERROR("Service is not exist!");
  }

  working_floor_pub_ = n_.advertise<campusrover_msgs::WorkingFloor>("working_floor", 10, true); 

  cr_init_pose_sub_ = n_.subscribe("init_pose", 10, &CartographerLocalizerBridge::initPoseCallback, this);
  carto_submap_sub_ = n_.subscribe("submap_list", 10, &CartographerLocalizerBridge::submapCallback, this);

  cr_enable_localizer_srv_ = n_.advertiseService(
    "enable_localizer", 
    &CartographerLocalizerBridge::enLocalizerService,
    this);
  cr_delete_map_srv_ = n_.advertiseService(
    "delete_map",
    &CartographerLocalizerBridge::deleteMapService,
    this);
  cr_load_map_srv_ = n_.advertiseService(
    "load_map",
    &CartographerLocalizerBridge::loadMapService,
    this);
}

CartographerLocalizerBridge::~CartographerLocalizerBridge()
{
  n_.shutdown();
}
