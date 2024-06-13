#include <ros/ros.h>
#include <std_msgs/String.h>
#include <std_msgs/Empty.h>
#include <std_msgs/Bool.h>
#include <std_msgs/Int16.h>
#include <geometry_msgs/Pose.h>
#include "std_srvs/SetBool.h"
#include "tf/transform_listener.h"
#include "tf2_geometry_msgs/tf2_geometry_msgs.h"
#include <geometry_msgs/Twist.h>
#include <sensor_msgs/JointState.h>
#include <campusrover_msgs/ButtonPoses.h>

#define PI 3.14159265358979323846

std::string target_label;
int mode = 0;
std::string ArmFrameId = "arm_base_link";
double PressDis = 8; // unit: mm
ros::Time time_after_arm_move;

ros::Subscriber RecognizedButtonPosesSub, ButtonLabelSub, ElevatorCallerModeSub;
ros::Publisher VsEstimatePub, VisualServoPub;
ros::ServiceClient EnableVisualServoClient;

std_msgs::Bool arm_acting, arm_plan_result; 
bool EnableVisualServoCallService(ros::ServiceClient &client, std_srvs::SetBool &srv);
void SetVisualServoTargetPose(const geometry_msgs::PoseStamped &pose);

void ButtonLabelCallback(const std_msgs::String &msg)
{
  target_label = msg.data;
  if (msg.data.substr(0, 1) == "B") {
    target_label = "-" + msg.data.substr(1);
  }
  ROS_INFO_STREAM("[press_button_pose] Label: " << target_label);
}

void RecognizedButtonPosesCallback(const campusrover_msgs::ButtonPoses &msg)
{
  geometry_msgs::PoseStamped TargetButtonPose;
  TargetButtonPose.header.frame_id = msg.header.frame_id;
  TargetButtonPose.header.stamp = msg.header.stamp;

  for (const auto& button_pose : msg.button_poses) {
    if (button_pose.label == target_label) {
      TargetButtonPose.pose = button_pose.pose;
      ROS_INFO("Transformed Pose: [%f, %f, %f]", 
               TargetButtonPose.pose.position.x,
               TargetButtonPose.pose.position.y,
               TargetButtonPose.pose.position.z);
      break;
    }
  }

  if (mode == 3 || mode == 31 || mode == 32 || mode == 6 || mode == 61 || mode == 62) {
    std_srvs::SetBool req;
    req.request.data = true;
    if (EnableVisualServoCallService(EnableVisualServoClient, req)) {
      SetVisualServoTargetPose(TargetButtonPose);
    }
  }
}

void SetVisualServoTargetPose(const geometry_msgs::PoseStamped &pose)
{
  VsEstimatePub.publish(pose);
  VisualServoPub.publish(pose);
}

bool EnableVisualServoCallService(ros::ServiceClient &client, std_srvs::SetBool &srv)
{
  if (client.call(srv)) {
    ROS_INFO("[State Controller] Visual Servo Enabled");
    return true;
  } else {
    ROS_ERROR("[State Controller] Failed to enable Visual Servo");
    return false;
  }
}

void ElevatorCallerModeCallback(const std_msgs::Int16 &msg)
{
  mode = msg.data;
}

int main(int argc, char ** argv)
{
  ros::init(argc, argv, "six_dof_arm_node");
  ros::NodeHandle nh;
  
  RecognizedButtonPosesSub = nh.subscribe("recognized_button_poses", 1, RecognizedButtonPosesCallback);    
  ButtonLabelSub = nh.subscribe("button_label", 1, ButtonLabelCallback);
  ElevatorCallerModeSub = nh.subscribe("elevator_caller_mode", 1, ElevatorCallerModeCallback); 
  EnableVisualServoClient = nh.serviceClient<std_srvs::SetBool>("/enable_vs");

  VsEstimatePub = nh.advertise<geometry_msgs::PoseStamped>("/vs_est_goal", 1);
  VisualServoPub = nh.advertise<geometry_msgs::PoseStamped>("/vs_goal", 1);

  ros::AsyncSpinner spinner(2);
  spinner.start();
  ros::waitForShutdown();
}

