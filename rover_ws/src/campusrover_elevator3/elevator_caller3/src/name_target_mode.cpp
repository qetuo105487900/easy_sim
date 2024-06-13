#include <ros/ros.h>
#include <std_msgs/String.h>
#include <std_msgs/Bool.h>
#include <geometry_msgs/Pose.h>
#include "std_srvs/SetBool.h"
#include <tf/tf.h>
#include <tf/transform_listener.h>
#include "tf/message_filter.h"
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#include <tf/transform_datatypes.h>
#include <std_msgs/Int16.h>
#include <geometry_msgs/Twist.h>
#include <sensor_msgs/JointState.h>
#include <campusrover_msgs/ButtonPoses.h>
#include <campusrover_msgs/poseture_srv.h>
#include <campusrover_msgs/position_srv.h> 

#define PI 3.14159265358979323846  /* pi */

ros::Subscriber name_target_mode_sub;
ros::ServiceClient NameTargetClient, PoseTargetClient, PressButtonClient;

void Enable_CallNameTargetClient_CallService(ros::ServiceClient &client,campusrover_msgs::poseture_srv &srv);
void Enable_CallPoseTargetClient_CallService(ros::ServiceClient &client,campusrover_msgs::position_srv &srv);
void Enable_CallPressButtonClient_CallService(ros::ServiceClient &client,campusrover_msgs::position_srv &srv);

void Enable_CallNameTargetClient_CallService(ros::ServiceClient &client, campusrover_msgs::poseture_srv &srv)
{
  while (!client.call(srv))
  {
    ROS_ERROR("[State Controller] Enable CallNameTargetClient : Failed to call service");
    ros::Duration(1.0).sleep();
  }
}

void Enable_CallPoseTargetClient_CallService(ros::ServiceClient &client, campusrover_msgs::position_srv &srv)
{
  while (!client.call(srv))
  {
    ROS_ERROR("[State Controller] Enable CallPressButtonClient : Failed to call service");
    ros::Duration(1.0).sleep();
  }
}

void Enable_CallPressButtonClient_CallService(ros::ServiceClient &client, campusrover_msgs::position_srv &srv)
{
  while (!client.call(srv))
  {
    ROS_ERROR("[State Controller] Enable CallPressButtonClient : Failed to call service");
    ros::Duration(1.0).sleep();
  }
}

void NameTargetModeCallback(const std_msgs::Int16::ConstPtr& msg)
{
  int mode;
  mode = msg->data;

  if (mode == 0)
  {
    ROS_INFO("[nametarget mode]: %s", "home");
    campusrover_msgs::poseture_srv nametarget;
    nametarget.request.name = "home";  
    Enable_CallNameTargetClient_CallService(NameTargetClient,nametarget);
  }
  else if (mode == 1)
  {
    ROS_INFO("[nametarget mode]: %s", "press_c");
    campusrover_msgs::poseture_srv nametarget;
    nametarget.request.name = "press_c";  
    Enable_CallNameTargetClient_CallService(NameTargetClient,nametarget);
  }
  else if (mode == 2)
  {
    ROS_INFO("[nametarget mode]: %s", "press_r");
    campusrover_msgs::poseture_srv nametarget;
    nametarget.request.name = "press_r";  
    Enable_CallNameTargetClient_CallService(NameTargetClient,nametarget);
  }
  else if (mode == 3)
  {
    ROS_INFO("[nametarget mode]: %s", "press_l");
    campusrover_msgs::poseture_srv nametarget;
    nametarget.request.name = "press_l";  
    Enable_CallNameTargetClient_CallService(NameTargetClient,nametarget);
  }    
  else if (mode == 4)
  {
    ROS_INFO("[nametarget mode]: %s", "zero");
    campusrover_msgs::poseture_srv nametarget;
    nametarget.request.name = "zero";  
    Enable_CallNameTargetClient_CallService(NameTargetClient,nametarget);
  }    
}

int main(int argc, char ** argv)
{
    ros::init(argc, argv, "name_target_mode_node");
    ros::NodeHandle nh;
    ros::NodeHandle nh_private("~");

    name_target_mode_sub = nh.subscribe("name_target_mode", 1, NameTargetModeCallback);

    NameTargetClient = nh.serviceClient<campusrover_msgs::poseture_srv>("call_name_target");
    PoseTargetClient = nh.serviceClient<campusrover_msgs::position_srv>("call_pose_target");
    PressButtonClient = nh.serviceClient<campusrover_msgs::position_srv>("call_press_button");

    ros::AsyncSpinner spinner(2);
    spinner.start();
    ros::waitForShutdown();

    return 0;
}
