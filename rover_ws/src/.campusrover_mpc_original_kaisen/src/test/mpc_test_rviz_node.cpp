#include <ros/ros.h>
#include <std_msgs/Bool.h>
#include <nav_msgs/OccupancyGrid.h>
#include <nav_msgs/Path.h>
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/Twist.h>
#include <std_msgs/Empty.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <visualization_msgs/InteractiveMarkerFeedback.h>
#include <visualization_msgs/Marker.h>
#include <campusrover_msgs/BubbleMPC.h>


#include "tf/transform_listener.h"
#include "tf/message_filter.h"
#include "message_filters/subscriber.h"

#include "mpc_parking_bubble.hpp"
#include "bubble_safe_zone.hpp"


ros::Publisher g_cmd_vel_pub;
ros::Publisher g_way_py_pub;
ros::Publisher g_bubble_marker_pub;
ros::Publisher g_bubble_id_marker_pub;
ros::Publisher g_mpc_predict_path_pub;
ros::Publisher g_finish_pub;
ros::Publisher g_clear_twist_pub;

ros::ServiceServer g_enabel_mpc_server;

mpcParkingBubble *g_mpc_parking_ptr;
nav_msgs::Path g_way_pts;
tf::TransformListener *g_tf;
std::string target_frame("map");
bool g_flag_compute = false, g_flag_bubble = false;
bubbleSafeZone *g_bbs_zone;
geometry_msgs::PoseStamped g_odom_pose;
nav_msgs::Path g_bubbles;
geometry_msgs::Twist g_cmd_vel;

double g_robot_radius, g_away_dis;

void odomCallback(const nav_msgs::Odometry::ConstPtr &msg_ptr)
{
  g_odom_pose.header = msg_ptr->header;
  g_odom_pose.pose = msg_ptr->pose.pose;
  g_mpc_parking_ptr->UpdateState(msg_ptr);
  if(g_flag_compute && g_way_pts.poses.size()>0)
  {
    tf::Quaternion q_odom_pose(
    g_odom_pose.pose.orientation.x,
    g_odom_pose.pose.orientation.y,
    g_odom_pose.pose.orientation.z,
    g_odom_pose.pose.orientation.w);
    tf::Quaternion q_way_pts(
    g_way_pts.poses.back().pose.orientation.x,
    g_way_pts.poses.back().pose.orientation.y,
    g_way_pts.poses.back().pose.orientation.z,
    g_way_pts.poses.back().pose.orientation.w);
      
    double dis_to_goal = sqrt(pow(g_odom_pose.pose.position.x - g_way_pts.poses.back().pose.position.x, 2) + pow(g_odom_pose.pose.position.y - g_way_pts.poses.back().pose.position.y, 2));
    double th_to_goal = abs(tf::getYaw(q_odom_pose) - tf::getYaw(q_way_pts) );
    // std::cout << "dis to goal : " << dis_to_goal << "\t th to goal : " << th_to_goal << std::endl;

    if(dis_to_goal<0.1 && th_to_goal<0.01 && g_cmd_vel.linear.x<0.01)
    // if(dis_to_goal<0.1 )
    // if(0)
    {
      g_flag_compute = false;
      g_flag_bubble = false;
      g_way_pts.poses.clear();
      ROS_INFO("[MPC] Arrived");
      g_mpc_parking_ptr->PrintComputeTime();
      std_msgs::Bool msg;
      std_msgs::Empty msg_empty;
      msg.data = true;
      g_finish_pub.publish(msg);
      g_clear_twist_pub.publish(msg_empty);
      
    }
  }

}

void executionCallback(const std_msgs::Empty::ConstPtr& msg)
{
  // if (g_bbs_zone->CreateBubble(g_bubbles, g_odom_pose, g_way_pts, 0.33))
  // {
  //   g_mpc_parking_ptr->UpdateBubbles(g_bubbles);
  //   g_bbs_zone->VisualizeBubble(g_bubbles);
  //   //delete markers
  //   visualization_msgs::Marker marker;
  //   visualization_msgs::MarkerArray marker_array;
  //   marker.header.frame_id = "map";
  //   marker.header.stamp = ros::Time();
  //   marker.action = visualization_msgs::Marker::DELETEALL;
  //   marker_array.markers.push_back(marker);
  //   g_bubble_marker_pub.publish(marker_array);
  //   g_bubble_id_marker_pub.publish(marker_array);
  //   //visualize markers
  //   visualization_msgs::MarkerArray bubble_marker;
  //   bubble_marker = g_bbs_zone->GetBubbleMarkers();
  //   visualization_msgs::MarkerArray bubble_id_marker;
  //   bubble_id_marker = g_bbs_zone->GetBubbleIdMarkers();
  //   g_bubble_marker_pub.publish(bubble_marker);
  //   g_bubble_id_marker_pub.publish(bubble_id_marker);
  // } 
  std_msgs::Empty msg_empty;
  g_clear_twist_pub.publish(msg_empty);
  g_bubbles.poses.clear();
  g_robot_radius = 0.33;
  g_away_dis = 0.05;
  g_flag_compute = true;
}

void navGoalCallback(const boost::shared_ptr<const geometry_msgs::PoseStamped> &msg_ptr)
{
  // check in target frame
  geometry_msgs::PoseStamped pose_out;
  pose_out.header.frame_id = target_frame;
  try 
  {
    g_tf->transformPose(target_frame, *msg_ptr, pose_out);
  }
  catch (tf::TransformException &ex) 
  {
    printf ("Failure %s\n", ex.what()); //Print exception which was caught
  }
  // append way point
  if (g_flag_compute && g_flag_bubble)
  {
    std::cout << "delete last pose " << std::endl;
    g_way_pts.poses.pop_back();
  }
  std::cout << "append pose " << g_way_pts.poses.size() << std::endl;
  g_way_pts.header.frame_id = target_frame;
  g_way_pts.poses.push_back(pose_out);

  // pub marker
  visualization_msgs::Marker marker;
  marker.header.frame_id = "map";
  marker.header.stamp = ros::Time();
  marker.ns = "way_points";
  marker.id = g_way_pts.poses.size();
  marker.type = visualization_msgs::Marker::ARROW;
  marker.action = visualization_msgs::Marker::ADD;
  marker.pose = pose_out.pose;
  marker.scale.x = 0.3;
  marker.scale.y = 0.1;
  marker.scale.z = 0.01;
  marker.color.a = 1.0; // Don't forget to set the alpha!
  marker.color.r = 1.0;
  marker.color.g = 0.76;
  marker.color.b = 0.0;
  g_way_py_pub.publish(marker);
}

void updateBubble(const ros::TimerEvent& event)
{

  int bubble_idx;
  geometry_msgs::Pose ref_pose, way_pose;

  if(g_flag_compute)
  {
    // ros::Time time_p = ros::Time::now();
    if (g_bbs_zone->CreateBubble(g_bubbles, g_odom_pose, g_way_pts, g_robot_radius, g_away_dis))
    {
      // std::cout << "create bubble time :" << (ros::Time::now() - time_p).toSec() << std::endl;
      g_mpc_parking_ptr->UpdateBubbles(g_bubbles);
      g_mpc_parking_ptr->GetParameter(bubble_idx, ref_pose, way_pose, g_odom_pose, g_bubbles);
      // g_bbs_zone->VisualizeBubble(g_bubbles);
      g_bbs_zone->VisualizeBubbleAndParameter(g_bubbles, bubble_idx, ref_pose, way_pose);
      //delete markers
      visualization_msgs::Marker marker;
      visualization_msgs::MarkerArray marker_array;
      marker.header.frame_id = "map";
      marker.header.stamp = ros::Time();
      marker.action = visualization_msgs::Marker::DELETEALL;
      marker_array.markers.push_back(marker);
      g_bubble_marker_pub.publish(marker_array);
      g_bubble_id_marker_pub.publish(marker_array);
      //visualize markers
      visualization_msgs::MarkerArray bubble_marker;
      bubble_marker = g_bbs_zone->GetBubbleMarkers();
      visualization_msgs::MarkerArray bubble_id_marker;
      bubble_id_marker = g_bbs_zone->GetBubbleIdMarkers();
      g_bubble_marker_pub.publish(bubble_marker);
      g_bubble_id_marker_pub.publish(bubble_id_marker);

      if(!g_flag_bubble)
      {
        g_mpc_parking_ptr->ResetParameter();
        g_mpc_parking_ptr->InitialParameter();
        g_flag_bubble = true;
      }

    }
    else
    {
      std::cout << "[mpc_test_rviz_node] : bubble create failed" << std::endl;
    }
  }
}

void mpcCompute(const ros::TimerEvent& event)//NSim
{
  // get current pose
  if (g_flag_compute && g_flag_bubble)
  {
    ros::Time time_p = ros::Time::now();
    geometry_msgs::Twist cmd_vel;
    cmd_vel = g_mpc_parking_ptr->Compute();
    if(cmd_vel.linear.z != 87)
    {
      g_cmd_vel=cmd_vel;
    }
    else
    {
      if(std::abs(g_cmd_vel.linear.x)<=0.03)g_cmd_vel.linear.x=0;
      else if(g_cmd_vel.linear.x>0.03)g_cmd_vel.linear.x-=0.03;
      else if(g_cmd_vel.linear.x<-0.03)g_cmd_vel.linear.x+=0.03;

      if(std::abs(g_cmd_vel.angular.z)<=0.05)g_cmd_vel.angular.z=0;
      else if(g_cmd_vel.angular.z>0.05)g_cmd_vel.angular.z-=0.05;
      else if(g_cmd_vel.angular.z<-0.05)g_cmd_vel.angular.z+=0.05;
    }
    std::cout << "mpc compute time :" << (ros::Time::now() - time_p).toSec() << "\tlinear : " << g_cmd_vel.linear.x << "\tangular : " << g_cmd_vel.angular.z << std::endl;
    g_cmd_vel_pub.publish(g_cmd_vel);
    nav_msgs::Path predict_path;
    if(g_mpc_parking_ptr->GetMpcPredictPath(predict_path))
      g_mpc_predict_path_pub.publish(predict_path);
  }
}


void initialPoseCallback(const geometry_msgs::PoseWithCovarianceStampedPtr& msg)
{
  g_flag_compute = false;
  g_flag_bubble = false;
  g_way_pts.poses.clear();
  // delete all markers
  visualization_msgs::Marker marker;
  visualization_msgs::MarkerArray marker_array;
  marker.header.frame_id = "map";
  marker.header.stamp = ros::Time();
  marker.action = visualization_msgs::Marker::DELETEALL;
  g_way_py_pub.publish(marker);
  marker_array.markers.push_back(marker);
  g_bubble_marker_pub.publish(marker_array);
  g_bubble_id_marker_pub.publish(marker_array);
}

void costmapCallback(const nav_msgs::OccupancyGrid::ConstPtr &msg_ptr) 
{
  g_bbs_zone->UpdateMap(*msg_ptr);
}

void obstaclePointCallback(const visualization_msgs::InteractiveMarkerFeedback::ConstPtr &point) 
{
  g_bbs_zone->AddObstacleToMap(*point);
}

bool enable_service(campusrover_msgs::BubbleMPC::Request &req, campusrover_msgs::BubbleMPC::Response &res)
{
  std::cout << "[mpc_parking_bubble] : receive request : "<< req.enable <<"\trobot_radius"<< req.robot_radius <<"\taway_dis:"<<req.away_dis<<"\tg_way_pts.poses.size() = "<< g_way_pts.poses.size() << std::endl;

  if(req.enable)
  {
    g_bubbles.poses.clear();
    g_flag_compute = true;

    g_robot_radius = req.robot_radius;
    g_away_dis = req.away_dis;
  }
  else
  {
    g_way_pts.poses.clear();
    g_flag_compute = false;
  }
  res.msg = "receive";
  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "mpc_test_rviz_node");
  g_mpc_parking_ptr = new mpcParkingBubble();
  g_bbs_zone = new bubbleSafeZone();
  ros::NodeHandle nh;
  g_tf = new tf::TransformListener();
  g_cmd_vel_pub = nh.advertise<geometry_msgs::Twist>("/cmd_vel", 100);
  g_way_py_pub = nh.advertise<visualization_msgs::Marker>( "way_pt_pub", 0 );
  g_bubble_marker_pub = nh.advertise<visualization_msgs::MarkerArray>( "bubble_marker", 0 );
  g_bubble_id_marker_pub = nh.advertise<visualization_msgs::MarkerArray>( "bubble_id_marker", 0 );
  g_mpc_predict_path_pub = nh.advertise<nav_msgs::Path>( "mpc_predict_path", 0 );
  g_finish_pub = nh.advertise<std_msgs::Bool>("/mpc_finish", 0);
  g_clear_twist_pub = nh.advertise<std_msgs::Empty>("/clear_twist", 0);

  g_enabel_mpc_server = nh.advertiseService("enable_mpc", enable_service);
  // Goal subscribe
  message_filters::Subscriber<geometry_msgs::PoseStamped> mpc_goal_sub;
  mpc_goal_sub.subscribe(nh, "/goal", 10);
  tf::MessageFilter<geometry_msgs::PoseStamped> *tf_filter;
  tf_filter = new tf::MessageFilter<geometry_msgs::PoseStamped>(mpc_goal_sub, *g_tf, std::string("map"), 10);
  tf_filter->registerCallback( boost::bind(navGoalCallback, _1) );
  // Odom subscribe
  ros::Subscriber odom_sub = nh.subscribe("odom", 10, odomCallback);
  ros::Subscriber initpose_sub = nh.subscribe("initialpose", 1, initialPoseCallback);
  ros::Subscriber cost_map_sub = nh.subscribe("/costmap", 10, costmapCallback);
  ros::Subscriber execution_mpc_sub = nh.subscribe("/execution_mpc", 10, executionCallback);
  ros::Subscriber obstacle_point_sub = nh.subscribe("/basic_controls/feedback", 10, obstaclePointCallback);
  ros::Timer timer_mpc = nh.createTimer(ros::Duration(0.1), mpcCompute);
  ros::Timer timer_bubble = nh.createTimer(ros::Duration(0.2), updateBubble);
  ros::MultiThreadedSpinner spinner(3);
  spinner.spin();
  return 0;
}
