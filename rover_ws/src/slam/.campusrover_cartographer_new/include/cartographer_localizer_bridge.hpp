#include <ros/ros.h>

#include <unordered_set>

#include <cartographer_ros_msgs/StartTrajectory.h>
#include <cartographer_ros_msgs/FinishTrajectory.h>
#include <cartographer_ros_msgs/DeleteTrajectory.h>
#include <cartographer_ros_msgs/WriteState.h>
#include <cartographer_ros_msgs/SubmapList.h>
#include <cartographer_ros_msgs/MapLoad.h>

#include <campusrover_msgs/MapLoadInfo.h>
#include <campusrover_msgs/MapInitPose.h>

#include "campusrover_msgs/WorkingFloor.h"
#include "campusrover_msgs/LocalizerSwitch.h"
#include "campusrover_msgs/LocalizerLauncher.h"

#include <std_srvs/Empty.h>

#include <geometry_msgs/TransformStamped.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>

class CartographerLocalizerBridge
{
  struct CgMapState
  {
    int trajectory_map = 0;
    int trajectory_robot = 1;
    bool map_exist = true;
  };
 private:
  // ROS
  ros::NodeHandle n_;
  std::string map_folder_;
  std::string carto_configuration_dir_;
  std::string carto_basename_default_;
  std::string carto_basename_2d_hokuyo_;
  std::string carto_basename_2d_ydlidar_;
  std::string carto_basename_3d_vlp16_;

  // For Cartographer Luke modified
  ros::ServiceClient carto_map_load_;
  ros::ServiceClient carto_cr_start_trajectory_;
  ros::ServiceClient carto_finish_trajectory_;
  ros::ServiceClient carto_delete_trajectory_;
  ros::ServiceClient carto_write_state_;

  // For Cumpus Rover System
  ros::ServiceClient cr_get_map_info_;
  ros::ServiceClient cr_get_init_point_;
  ros::ServiceClient cr_launch_carto_;
  ros::Publisher working_floor_pub_;
  ros::Subscriber cr_init_pose_sub_;
  
  // Cartographer
  ros::Subscriber carto_submap_sub_;
  ros::ServiceServer cr_enable_localizer_srv_;
  ros::ServiceServer cr_delete_map_srv_;
  ros::ServiceServer cr_load_map_srv_;

  // Class variables
  std::string wk_building_; // working building 
  std::string wk_floor_; // working floor
  CgMapState carto_map_state_;
  std::unordered_set<int> existing_submaps_;
  bool submap_ready_ = false;

  void getParams();
  void initPoseCallback(const geometry_msgs::PoseWithCovarianceStamped::ConstPtr &msg);
  void submapCallback(const cartographer_ros_msgs::SubmapList::ConstPtr &msg);
  
  // enable localizer 
  bool enLocalizerService(campusrover_msgs::LocalizerSwitch::Request &req, campusrover_msgs::LocalizerSwitch::Response &res);
  bool deleteMapService(std_srvs::Empty::Request &req, std_srvs::Empty::Response &res);
  bool loadMapService(campusrover_msgs::MapLoadInfo::Request &req, campusrover_msgs::MapLoadInfo::Response &res);
  
  void updateTransform(const geometry_msgs::TransformStamped tf);
  void initTransform();
  void updateBaseMap( CgMapState &state, const std::string building, const std::string floor);
  bool checkServicesExist();
  bool isSubmapExist(int key);
  
 public:
  CartographerLocalizerBridge(/* args */);
  ~CartographerLocalizerBridge();
};
