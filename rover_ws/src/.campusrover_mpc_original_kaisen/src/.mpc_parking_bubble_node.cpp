#include <ros/ros.h>
#include <std_msgs/Bool.h>
#include <nav_msgs/OccupancyGrid.h>
#include <nav_msgs/Path.h>
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/Twist.h>
#include <std_msgs/Empty.h>
#include <std_srvs/SetBool.h>
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


ros::Publisher bubble_info_pub ;

ros::Publisher g_cmd_vel_pub, bubble_mpc_status_pub_, bubble_mpc_info_pub_;
ros::Publisher g_way_py_pub;
ros::Publisher g_finish_pub;
ros::Publisher g_bubble_marker_pub;
ros::Publisher g_bubble_id_marker_pub;
ros::Publisher g_mpc_predict_path_pub;

ros::ServiceServer g_enabel_mpc_server;

double g_robot_radius, g_away_dis;
geometry_msgs::Twist g_cmd_vel;

std::string g_target_frame("odom");
geometry_msgs::PoseStamped g_odom_pose;
nav_msgs::Path g_bubbles;
nav_msgs::Path g_way_pts;
bool g_flag_compute = false, g_flag_bubble = false;
tf::TransformListener *g_tf;
mpcParkingBubble *g_mpc_parking_ptr;
bubbleSafeZone *g_bbs_zone;
void get_parameters(ros::NodeHandle n_private)
{
  n_private.param<std::string>("odom_frame", g_target_frame, "odom");
}

void odomCallback(const nav_msgs::Odometry::ConstPtr& msg_ptr)
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
    if(dis_to_goal<0.1 && th_to_goal<0.01 && g_cmd_vel.linear.x<0.1)
    {
      g_flag_compute = false;
      g_flag_bubble = false;
      std::cout<<"odom x" <<g_odom_pose.pose.position.x << "\todom u"<<g_odom_pose.pose.position.y<<std::endl; 
      std::cout<<"goal x" <<g_way_pts.poses.back().pose.position.x << "\tgoal u"<<g_way_pts.poses.back().pose.position.y<<std::endl; 
      g_way_pts.poses.clear();
      ROS_INFO("[mpc_parking_bubble] Arrived");
      g_mpc_parking_ptr->PrintComputeTime();
      std_msgs::Bool msg;
      std_msgs::Empty msg_empty;
      msg.data = true;
      g_finish_pub.publish(msg);

      std::cout<<"dis_to_goal"<<dis_to_goal << "\tth_to_goal"<<th_to_goal<<std::endl; 
      
    }
    else
    {
      std_msgs::Bool msg;
      msg.data = false;
      g_finish_pub.publish(msg);      
    }
  }

}

void executionCallback(const std_msgs::Empty::ConstPtr& msg)
{
  g_bubbles.poses.clear();
  g_flag_compute = true;
}

bool enable_service(campusrover_msgs::BubbleMPC::Request &req, campusrover_msgs::BubbleMPC::Response &res)
{
  std::cout << "[mpc_parking_bubble] : receive request : "<< req.enable <<"\trobot_radius"<< req.robot_radius <<"\taway_dis:"<<req.away_dis<<"\tg_way_pts.poses.size() = "<< g_way_pts.poses.size() << std::endl;
  
  geometry_msgs::Twist bubble_info;
  bubble_info.linear.x = float(req.enable);
  bubble_info.linear.y = req.robot_radius;
  bubble_info.linear.z = req.away_dis;
  bubble_info.angular.x = float(g_way_pts.poses.size());
  bubble_info_pub.publish(bubble_info);

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

void navGoalCallback(const boost::shared_ptr<const geometry_msgs::PoseStamped> &msg_ptr)
{

  geometry_msgs::PoseStamped pose_out;

  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tfListener(tfBuffer);
  pose_out.header = msg_ptr->header;
  if(msg_ptr->header.frame_id == g_target_frame)
  {
    pose_out.pose = msg_ptr->pose;
  }
  else
  {
    try
    {
      tfBuffer.transform(*msg_ptr, pose_out, g_target_frame);
    }
    catch (tf2::TransformException &ex)
    {
      ros::Duration(0.1).sleep();
      return;
    }
  }


  // // check in target frame
  // pose_out.header.frame_id = g_target_frame;
  // try 
  // {
  //   g_tf->transformPose(g_target_frame, *msg_ptr, pose_out);
  //   // pose_out.pose = msg_ptr->pose;
  // }
  // catch (tf::TransformException &ex) 
  // {
  //   printf ("Failure %s\n", ex.what()); //Print exception which was caught
  // }


  // append way point
  if (g_flag_compute && g_flag_bubble)
  {
    std::cout << "delete last pose " << std::endl;
    g_way_pts.poses.pop_back();
  }
  std::cout << "[mpc_parking_bubble] append pose " << g_way_pts.poses.size() << std::endl;
  g_way_pts.header.frame_id = g_target_frame;
  g_way_pts.poses.push_back(pose_out);

  // pub marker
  visualization_msgs::Marker marker;
  marker.header.frame_id = g_target_frame;
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
    if (g_way_pts.poses.size()==0)
    {
      
      std::cout << "[mpc_parking_bubble] : g_way_pts.poses.size() = "<< g_way_pts.poses.size() << "g_flag_compute : "<< g_flag_compute << std::endl;
      
      return;
    }
    if (g_bbs_zone->CreateBubble(g_bubbles, g_odom_pose, g_way_pts, g_robot_radius, g_away_dis))
    {
      // std::cout << "create bubble time :" << (ros::Time::now() - time_p).toSec() << std::endl;
      nav_msgs::Path update_bubble ;
      update_bubble = g_mpc_parking_ptr->UpdateBubbles(g_bubbles);
      bubble_mpc_info_pub_.publish(update_bubble);
      g_mpc_parking_ptr->GetParameter(bubble_idx, ref_pose, way_pose, g_odom_pose, g_bubbles);
      // g_bbs_zone->VisualizeBubble(g_bubbles);
      g_bbs_zone->VisualizeBubbleAndParameter(g_bubbles, bubble_idx, ref_pose, way_pose);
      //delete markers
      // visualization_msgs::Marker marker;
      // visualization_msgs::MarkerArray marker_array;
      // marker.header.frame_id = g_target_frame;
      // marker.header.stamp = ros::Time();
      // marker.action = visualization_msgs::Marker::DELETEALL;
      // marker_array.markers.push_back(marker);
      // g_bubble_marker_pub.publish(marker_array);
      // g_bubble_id_marker_pub.publish(marker_array);
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
      std::cout << "[mpc_parking_bubble] : bubble create failed" << std::endl;
    }
  }
}

void mpcGoalCallback(const nav_msgs::Path::ConstPtr& msg)
{

  geometry_msgs::PoseStamped pose_out;
  nav_msgs::Path way_pts;
  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tfListener(tfBuffer);

  way_pts.header.frame_id = g_target_frame;
  if(msg->header.frame_id == g_target_frame)
  {
    way_pts.poses = msg->poses;
  }
  else
  {
    way_pts.poses.clear();
    for(int i=0; i< msg->poses.size(); i++)
    {
      try
      {
        tfBuffer.transform(msg->poses[i] , pose_out, g_target_frame);
      }
      catch (tf2::TransformException &ex)
      {
        ROS_WARN("[mpc_parking_bubble] mpc goal transform: %s", ex.what());
        ros::Duration(0.1).sleep();
        return;
      }
      way_pts.poses.push_back(pose_out);

    }
  }
  g_way_pts = way_pts;
  // std::cout << "[mpc_parking_bubble] receive goal : " <<  g_flag_compute  << std::endl;
  // check in target frame
  // geometry_msgs::PoseStamped pose_in, pose_out;
  // pose_in.header = msg->header;
  // pose_in.pose = 
  // try 
  // {
  //   g_tf->transformPose(g_target_frame, *msg, pose_out);
  // }
  // catch (tf::TransformException &ex) 
  // {
  //   printf ("Failure %s\n", ex.what()); //Print exception which was caught
  // }
  // update mpc param (goal)

  // g_way_pts.poses = msg->poses;
}

void costmapCallback(const nav_msgs::OccupancyGrid::ConstPtr& msg_ptr)
{
  g_bbs_zone->UpdateMap(*msg_ptr);
}

void decreaseSpeed(geometry_msgs::Twist &cmd_vel)
{
  if(std::abs(cmd_vel.linear.x)<=0.1)cmd_vel.linear.x=0;
  else if(cmd_vel.linear.x>0.1)cmd_vel.linear.x-=0.1;
  else if(cmd_vel.linear.x<-0.1)cmd_vel.linear.x+=0.1;

  if(std::abs(cmd_vel.angular.z)<=0.1)cmd_vel.angular.z=0;
  else if(cmd_vel.angular.z>0.1)cmd_vel.angular.z-=0.1;
  else if(cmd_vel.angular.z<-0.1)cmd_vel.angular.z+=0.1;

}

void mpcCompute(const ros::TimerEvent& event)
{
  if (g_flag_compute && g_flag_bubble)
  {
    geometry_msgs::Twist cmd_vel;
    ros::Time time_p = ros::Time::now();
    cmd_vel = g_mpc_parking_ptr->Compute();
    bubble_mpc_status_pub_.publish(cmd_vel);
    if(cmd_vel.linear.z == 87)//error
    {
      decreaseSpeed(g_cmd_vel);
      std::cout << "mpc compute error:" << (ros::Time::now() - time_p).toSec() << "\tlinear : " << g_cmd_vel.linear.x << "\tangular : " << g_cmd_vel.angular.z << std::endl;
    }
    else
    {
      g_cmd_vel = cmd_vel;
      //std::cout << "mpc compute time :" << (ros::Time::now() - time_p).toSec() << "\tlinear : " << g_cmd_vel.linear.x << "\tangular : " << g_cmd_vel.angular.z << std::endl;
      nav_msgs::Path predict_path;
      if(g_mpc_parking_ptr->GetMpcPredictPath(predict_path))
        g_mpc_predict_path_pub.publish(predict_path);
    }
    g_cmd_vel_pub.publish(g_cmd_vel);
  }
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "mpc_parking_bubble_node");
  ros::NodeHandle nh_private("~");
  get_parameters(nh_private);
  g_mpc_parking_ptr = new mpcParkingBubble();
  g_bbs_zone = new bubbleSafeZone();
  // std::cout << "create " << std::endl;
  ros::NodeHandle nh;

  bubble_info_pub = nh.advertise<geometry_msgs::Twist>("/bubble_info", 10);

  bubble_mpc_status_pub_ = nh.advertise<geometry_msgs::Twist>("/bubble_mpc_status", 1);
  bubble_mpc_info_pub_ = nh.advertise<geometry_msgs::Twist>("/bubble_mpc_info", 1);

  g_cmd_vel_pub = nh.advertise<geometry_msgs::Twist>("/mpc_cmd_vel", 100);
  g_way_py_pub = nh.advertise<visualization_msgs::Marker>( "way_pt_pub", 0 );
  g_finish_pub = nh.advertise<std_msgs::Bool>("/mpc_finish", 0);
  g_bubble_marker_pub = nh.advertise<visualization_msgs::MarkerArray>( "bubble_marker", 0 );
  g_bubble_id_marker_pub = nh.advertise<visualization_msgs::MarkerArray>( "bubble_id_marker", 0 );
  g_mpc_predict_path_pub = nh.advertise<nav_msgs::Path>( "mpc_predict_path", 0 );

  g_enabel_mpc_server = nh.advertiseService("enable_mpc", enable_service);
  // Goal subscribe
  // message_filters::Subscriber<geometry_msgs::PoseStamped> mpc_goal_rviz_sub;
  // mpc_goal_rviz_sub.subscribe(nh, "/move_base_simple/goal", 10);
  // tf::MessageFilter<geometry_msgs::PoseStamped> *tf_filter;
  // tf_filter = new tf::MessageFilter<geometry_msgs::PoseStamped>(mpc_goal_rviz_sub, *g_tf,  std::string("odom"), 10);
  // tf_filter->registerCallback( boost::bind(navGoalCallback, _1) );
  ros::Subscriber mpc_goal_rviz_sub = nh.subscribe("/move_base_simple/goal", 10, navGoalCallback);

  ros::Subscriber odom_sub = nh.subscribe("odom", 10, odomCallback);
  ros::Subscriber mpc_goal_sub = nh.subscribe("/mpc_goal", 10, mpcGoalCallback);
  ros::Subscriber cost_map_sub = nh.subscribe("/costmap", 10, costmapCallback);
  ros::Subscriber execution_mpc_sub = nh.subscribe("/execution_mpc", 10, executionCallback);

  ros::Timer timer = nh.createTimer(ros::Duration(0.1), mpcCompute);
  ros::Timer timer_bubble = nh.createTimer(ros::Duration(0.2), updateBubble);
  ros::MultiThreadedSpinner spinner(4);
  spinner.spin();
  return 0;
}
