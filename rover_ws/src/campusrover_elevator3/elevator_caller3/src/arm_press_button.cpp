#include <ros/ros.h>
#include <std_msgs/String.h>
#include <std_msgs/Bool.h>
#include <std_msgs/Int16.h>
#include <geometry_msgs/Pose.h>
#include <std_srvs/SetBool.h>
#include <tf/tf.h>
#include <tf/transform_listener.h>
#include "tf/message_filter.h"
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#include <tf/transform_datatypes.h>
#include <tf/transform_broadcaster.h>
#include <cmath>
#include <geometry_msgs/Twist.h>
#include <sensor_msgs/JointState.h>
#include <campusrover_msgs/ButtonPoses.h>
#include <campusrover_msgs/ArmTablePoseStatus.h>
#include <campusrover_msgs/poseture_srv.h>
#include <campusrover_msgs/position_srv.h> 
#include <campusrover_msgs/ArmTablePosition.h> 


#define PI 3.14159265358979323846  /* pi */

std::string target_label;

double PressDis = 0.08; //unit: mm
bool arm_stop;
bool press_next;
bool z_moving ;
int get_enter_mode ;
// 假定tf_listener是一個有效的tf::TransformListener對象
// 全局变量声明为指针
tf::TransformListener* tf_listener;

ros::Subscriber RecognizedButtonPosesSub, button_lable_sub_, MotorNoMoveSub, Camera2ArmbaseSub, TablePoseSub, EnterModeSub;
ros::Publisher arm_plan_pub_, arm_acting_pub_, baselink2button_pub, camera2baselink_pub_, NameTargetModePub, press_pub_ ;
ros::ServiceClient NameTargetClient, PoseTargetClient, PoseTargetNoActingClient, TablePositionClient, MotionPlanClient;
ros::ServiceServer CallPressButtonService, CallNameTargetService, CallPoseTargetService;

geometry_msgs::PoseStamped baselink2button_stamped;
campusrover_msgs::position_srv target_pose ;
std_msgs::Bool arm_acting, arm_plan_result; 
campusrover_msgs::ArmTablePosition table_position;

void TablePositionClientCallService(ros::ServiceClient &client,campusrover_msgs::ArmTablePosition &srv) ;
bool MotionPlanClientCallService(ros::ServiceClient &client,campusrover_msgs::position_srv &srv) ;

bool NameTargetClientCallService(ros::ServiceClient &client,campusrover_msgs::poseture_srv &srv) ;
bool PoseTargetClientCallService(ros::ServiceClient &client,campusrover_msgs::position_srv &srv) ;

bool PressButtonClientCallService(ros::ServiceClient &client,campusrover_msgs::position_srv &srv);
bool PoseTargetNoActionClientCallService(ros::ServiceClient &client,campusrover_msgs::position_srv &srv);

bool CallNameTargetCallback(campusrover_msgs::poseture_srv::Request &req, campusrover_msgs::poseture_srv::Response &res);
bool CallPoseTargetCallback(campusrover_msgs::position_srv::Request &req, campusrover_msgs::position_srv::Response &res);
bool CallPressButtonCallback(campusrover_msgs::position_srv::Request &req, campusrover_msgs::position_srv::Response &res);

void get_parameters(ros::NodeHandle n_private)
{
  n_private.param<double>("press_dis", PressDis, 0.05);
}

void MotorNoMoveCallback(const std_msgs::Bool::ConstPtr& msg)
{
  arm_stop = msg->data;
  if (arm_stop)
  {
    arm_acting.data=false;
    arm_acting_pub_.publish(arm_acting);
    ROS_INFO("[arm press button] -> done");
    press_next = true ;
  }
}

void TablePoseCallback(const campusrover_msgs::ArmTablePoseStatus& msg)
{
  table_position.request.position = msg.position ;
  static campusrover_msgs::ArmTablePoseStatus previous_position ;
  if (msg.position.z == previous_position.position.z) 
  {
    // 如果當前位置和上一次位置一樣，表示在沒在移動
    z_moving = false;
  }
  previous_position.position = msg.position;

}

void EnterModeCallback(const std_msgs::Int16& msg)
{
  get_enter_mode = msg.data ;
}

void TablePositionClientCallService(ros::ServiceClient &client, campusrover_msgs::ArmTablePosition &srv)
{
  while (!client.call(srv))
  {
    ROS_ERROR("[arm press button] table position function : Failed to call service");
    ros::Duration(1.0).sleep();
  }
}

bool MotionPlanClientCallService(ros::ServiceClient &client,campusrover_msgs::position_srv &srv)
{
  while (!client.call(srv))
  {
    ROS_ERROR("[arm press button] motion plan : Failed to call service");
    ros::Duration(1.0).sleep();
  }
  return client.call(srv);
}

bool NameTargetClientCallService(ros::ServiceClient &client,campusrover_msgs::poseture_srv &srv)
{
  ROS_INFO("[arm press button] name target : %s", srv.request.name.c_str());
  if (client.call(srv) == true)
  {
    arm_acting.data=true;
    arm_acting_pub_.publish(arm_acting);
    ROS_INFO("[arm press button]name target -> moving");
  }
  else
  {
    ROS_ERROR("[Arm Press Button] Name Target : Failed to call service");
    ros::Duration(1.0).sleep();
  }
  return client.call(srv);
}

bool PoseTargetClientCallService(ros::ServiceClient &client,campusrover_msgs::position_srv &srv)
{
  ROS_INFO("[arm press button] pose target : ");
  if (client.call(srv) == true)
  {
    arm_acting.data=true;
    arm_acting_pub_.publish(arm_acting);
    ROS_INFO("[arm press button] pose target -> moving");
  }
  else
  {
    ROS_ERROR("[Arm Press Button] pose Target : Failed to call service");
    ros::Duration(1.0).sleep();
  }
  return client.call(srv);
}

bool PoseTargetNoActionClientCallService(ros::ServiceClient &client,campusrover_msgs::position_srv &srv)
{
  ROS_INFO("[arm press button] pose no action target : ");
  bool plan_success ;
  if (client.call(srv))
  {
    plan_success = true ;
  }
  else
  {
    plan_success = false ;
  }
  return plan_success;
}

bool CallNameTargetCallback(campusrover_msgs::poseture_srv::Request &req, campusrover_msgs::poseture_srv::Response &res)
{
  campusrover_msgs::poseture_srv nametarget;
  nametarget.request.name = req.name;
  bool nametarget_res = NameTargetClientCallService(NameTargetClient,nametarget);
  res.in_workspace = nametarget_res ;
  return res.in_workspace;
}

bool CallPoseTargetCallback(campusrover_msgs::position_srv::Request &req, campusrover_msgs::position_srv::Response &res)
{
  campusrover_msgs::position_srv posetarget;
  posetarget.request.x = req.x;
  posetarget.request.y = req.y;
  posetarget.request.z = req.z;
  if (req.roll >= 3.14 && req.pitch >= 3.14)
  {
    posetarget.request.roll = 3.141593 ;
    posetarget.request.pitch = 3.141593 ;
  }
  else if (req.roll >= 3.14 && req.pitch <= -3.14)
  {
    posetarget.request.roll = 3.141593 ;
    posetarget.request.pitch = -3.141593 ;
  }
  else if (req.roll == 0 && req.pitch == 0)
  {
    posetarget.request.roll = 0 ;
    posetarget.request.pitch = 0 ;
  }
  else
  {
    return false;
  }
  posetarget.request.yaw = req.yaw;
  
  bool posetarget_res = PoseTargetClientCallService(PoseTargetClient,posetarget);
  // roll pitch  3.141593   3.141593
  // roll pitch  3.141593  -3.141593 
  // roll pitch      0          0 
  res.in_workspace = posetarget_res ;
  return res.in_workspace;
}

bool CallPressButtonCallback(campusrover_msgs::position_srv::Request &req, campusrover_msgs::position_srv::Response &res)
{
  campusrover_msgs::position_srv pose_target;
  pose_target.request.x = req.x;
  pose_target.request.y = req.y;
  pose_target.request.z = req.z;
  if (req.roll >= 3.14 && req.pitch >= 3.14)
  {
    pose_target.request.roll = 3.141593 ;
    pose_target.request.pitch = 3.141593 ;
  }
  else if (req.roll >= 3.14 && req.pitch <= -3.14)
  {
    pose_target.request.roll = 3.141593 ;
    pose_target.request.pitch = -3.141593 ;
  }
  else if (req.roll == 0 && req.pitch == 0)
  {
    pose_target.request.roll = 0 ;
    pose_target.request.pitch = 0 ;
  }
  else
  {
    return false;
  }
  pose_target.request.yaw = req.yaw;
  bool pressbutton_res = MotionPlanClientCallService(MotionPlanClient,pose_target);
  res.in_workspace = pressbutton_res ;
  return res.in_workspace;
}

void ButtonLabelCallback(const std_msgs::String &msg)
{
  target_label = msg.data;
  std::cout << "[press_button_pose]label :" << target_label <<std::endl;
}

void RecognizedButtonPosesCallback(const campusrover_msgs::ButtonPoses &msg)
{
  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tf_listener(tfBuffer);
  geometry_msgs::TransformStamped t_from_camera_to_baselink ;  

  // from campusrover_ai 's topic RecognizedButtonPoses
  geometry_msgs::Pose button_pose;

  int len = msg.button_poses.end() - msg.button_poses.begin();

  for(int i=0; i<len; i++)
  {
    button_pose = msg.button_poses[i].pose;
    if(msg.button_poses[i].label == target_label)
    {
      // 創建一個PoseStamped，包含原始pose和frame_id
      geometry_msgs::PoseStamped camera_pose_stamped, baselink2button_stamped;
      camera_pose_stamped.pose = button_pose;
      camera_pose_stamped.header.frame_id = "arm/link_camera";
      camera_pose_stamped.header.stamp = ros::Time::now();


      // 轉換到目標frame
      t_from_camera_to_baselink = tfBuffer.lookupTransform("arm/base_link", "arm/link_camera", ros::Time(0), ros::Duration(2.0) );
      tf2::doTransform(camera_pose_stamped, baselink2button_stamped, t_from_camera_to_baselink);

      // 转换后的姿态现在存储在 baselink2button_stamped.pose 中
      ROS_INFO("Transformed Pose in arm/link_end frame: Position [%f, %f, %f], Orientation [%f, %f, %f, %f]",
                baselink2button_stamped.pose.position.x,baselink2button_stamped.pose.position.y,baselink2button_stamped.pose.position.z,
                baselink2button_stamped.pose.orientation.x,baselink2button_stamped.pose.orientation.y,
                baselink2button_stamped.pose.orientation.z,baselink2button_stamped.pose.orientation.w);

            // 构建四元数
      tf::Quaternion quaternion(
        baselink2button_stamped.pose.orientation.x,
        baselink2button_stamped.pose.orientation.y,
        baselink2button_stamped.pose.orientation.z,
        baselink2button_stamped.pose.orientation.w
      );

      // 将四元数转换为3x3矩阵
      tf::Matrix3x3 m(quaternion);

      // 将3x3矩阵转换为欧拉角
      double roll, pitch, yaw;
      m.getRPY(roll, pitch, yaw);

      double end_effect_goal_z = 0.139250;//0.129250;

      if ( std::abs(baselink2button_stamped.pose.position.z - end_effect_goal_z) > 0.005  && z_moving == false)
      {
        double d_z = baselink2button_stamped.pose.position.z - end_effect_goal_z ;
        table_position.request.position.z = table_position.request.position.z + d_z ;
        TablePositionClientCallService(TablePositionClient,table_position);
        z_moving = true;
      }      

      if ( std::abs(baselink2button_stamped.pose.position.z - end_effect_goal_z) <= 0.005)
      {
        campusrover_msgs::position_srv press_target;
        press_target.request.x = baselink2button_stamped.pose.position.x;
        press_target.request.y = baselink2button_stamped.pose.position.y;
        press_target.request.z = baselink2button_stamped.pose.position.z;
        if (std::abs(roll) >= 3.054326537 && std::abs(pitch) >= 3.054326537)
        {
          press_target.request.roll = 3.141593 ;
          press_target.request.pitch = 3.141593 ;
        }
        else if (std::abs(roll) <= 0.0872664626 && std::abs(pitch) <= 0.0872664626)
        {
          press_target.request.roll = 0 ;
          press_target.request.pitch = 0 ;
        }
        press_target.request.yaw = yaw;

        MotionPlanClientCallService(MotionPlanClient,press_target);
        // PressButtonClientCallService(PoseTargetClient,press_target);
      }
    
      break;
    }
  }

}

void Camera2ArmbaseCallback(const geometry_msgs::PoseStamped &msg)
{
  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tf_listener(tfBuffer);

  // from campusrover_ai 's topic RecognizedButtonPoses
  geometry_msgs::TransformStamped t_from_camera_to_baselink ;
  geometry_msgs::Pose button_pose;
  button_pose = msg.pose;

  geometry_msgs::Pose baselink2button;
  // 創建一個PoseStamped，包含原始pose和frame_id
  geometry_msgs::PoseStamped camera_pose_stamped, baselink2button_stamped;
  camera_pose_stamped.pose = button_pose;
  camera_pose_stamped.header.frame_id = "arm/link_camera";
  camera_pose_stamped.header.stamp = ros::Time::now();

  // 轉換到目標frame
  try
  {
    t_from_camera_to_baselink = tfBuffer.lookupTransform("arm/base_link", "arm/link_camera", ros::Time(0), ros::Duration(2.0) );
    tf2::doTransform(camera_pose_stamped, baselink2button_stamped, t_from_camera_to_baselink);
  }
  catch (tf2::TransformException &ex)
  {
    ROS_WARN("[ArmPressButton] t_from_camera_to_baselink: %s", ex.what());
    ros::Duration(0.1).sleep();
    return;
  }

  // 构建四元数
  tf::Quaternion quaternion(baselink2button_stamped.pose.orientation.x, baselink2button_stamped.pose.orientation.y, baselink2button_stamped.pose.orientation.z, baselink2button_stamped.pose.orientation.w);

  // 将四元数转换为3x3矩阵
  tf::Matrix3x3 m(quaternion);

  // 将3x3矩阵转换为欧拉角
  double roll, pitch, yaw;
  m.getRPY(roll, pitch, yaw);

  double button_dis = sqrt(pow(baselink2button_stamped.pose.position.x, 2) + pow(baselink2button_stamped.pose.position.y, 2));
  double droop_dis = button_dis * sin(8 * M_PI / 180.0);
  double end_effect_goal_z = 0.129250 + droop_dis;//0.129250+0.025;

  if ( std::abs(baselink2button_stamped.pose.position.z - end_effect_goal_z) > 0.005  && z_moving == false)
  {
    ROS_INFO("[ArmPressButton] adjust z");
    double d_z = baselink2button_stamped.pose.position.z - end_effect_goal_z ;
    table_position.request.position.z = table_position.request.position.z + d_z ;
    TablePositionClientCallService(TablePositionClient,table_position);
    z_moving = true;
  }      

  if ( std::abs(baselink2button_stamped.pose.position.z - end_effect_goal_z) <= 0.005)
  {
    ROS_INFO("[ArmPressButton] press_target");
    campusrover_msgs::position_srv press_target;
    press_target.request.x = baselink2button_stamped.pose.position.x;
    press_target.request.y = baselink2button_stamped.pose.position.y;
    press_target.request.z = baselink2button_stamped.pose.position.z;
    if (std::abs(roll) >= 3.054326537 && std::abs(pitch) >= 3.054326537)
    {
      press_target.request.roll = 3.141593 ;
      press_target.request.pitch = 3.141593 ;
    }
    else if (std::abs(roll) <= 0.0872664626 && std::abs(pitch) <= 0.0872664626)
    {
      press_target.request.roll = 0 ;
      press_target.request.pitch = 0 ;
    }
    press_target.request.yaw = yaw;

    geometry_msgs::Twist press_para;
    press_para.linear.x = press_target.request.x ;
    press_para.linear.y = press_target.request.y ;
    press_para.linear.z = press_target.request.z ;
    press_para.angular.x = press_target.request.roll ;
    press_para.angular.y = press_target.request.pitch ;                        
    press_para.angular.z = press_target.request.yaw ;
    press_pub_.publish(press_para);

    ROS_INFO("[ArmPressButton] call MotionPlan");
    MotionPlanClientCallService(MotionPlanClient,press_target);
  }

}

int main(int argc, char ** argv)
{
  ros::init(argc, argv, "scara_arm_press");
  ros::NodeHandle nh;
  ros::NodeHandle nh_private("~");

  // 在ros::init之后构造tf_listener对象
  tf_listener = new tf::TransformListener;
  
  get_parameters(nh_private);

  RecognizedButtonPosesSub = nh.subscribe("recognized_button_poses", 1, RecognizedButtonPosesCallback);    
  button_lable_sub_ = nh.subscribe("button_label", 1, ButtonLabelCallback);
  MotorNoMoveSub = nh.subscribe("motors_no_moving", 10, MotorNoMoveCallback);
  Camera2ArmbaseSub = nh.subscribe("camera2button", 10, Camera2ArmbaseCallback);
  TablePoseSub = nh.subscribe("table_pose", 10, TablePoseCallback);
  EnterModeSub = nh.subscribe("enter_mode", 10, EnterModeCallback);

  NameTargetClient = nh.serviceClient<campusrover_msgs::poseture_srv>("arm/name_target");
  PoseTargetClient = nh.serviceClient<campusrover_msgs::position_srv>("arm/pose_target");
  PoseTargetNoActingClient = nh.serviceClient<campusrover_msgs::position_srv>("/arm/pose_target_no_acting");
  TablePositionClient = nh.serviceClient<campusrover_msgs::ArmTablePosition>("table_position");
  MotionPlanClient = nh.serviceClient<campusrover_msgs::position_srv>("arm/motion_plan");    

  CallNameTargetService = nh.advertiseService("call_name_target", CallNameTargetCallback);
  CallPoseTargetService = nh.advertiseService("call_pose_target", CallPoseTargetCallback);
  CallPressButtonService = nh.advertiseService("call_press_button", CallPressButtonCallback);

  arm_plan_pub_ = nh.advertise<std_msgs::Bool>("/arm_plan_result", 10);
  arm_acting_pub_ = nh.advertise<std_msgs::Bool>("/arm_acting", 10);
  baselink2button_pub = nh.advertise<geometry_msgs::Pose>("/baselink2button", 10);
  camera2baselink_pub_ = nh.advertise<geometry_msgs::Pose>("/camera2baselink", 10);
  NameTargetModePub = nh.advertise<std_msgs::Int16>("/name_target_mode", 1);
  press_pub_ = nh.advertise<geometry_msgs::Twist>("/press_parameter", 10);
  
  ros::AsyncSpinner spinner(2);
  spinner.start();
  ros::waitForShutdown();

  // 确保在程序结束时删除tf_listener，避免内存泄漏
  delete tf_listener;

  return 0;
}
