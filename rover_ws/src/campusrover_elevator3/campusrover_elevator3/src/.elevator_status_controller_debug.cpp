#include <ros/ros.h>
#include <math.h>
#include <iostream>
#include <string>

#include <std_msgs/Header.h>
#include <std_msgs/Int16.h>
#include <std_msgs/Bool.h>
#include <std_srvs/SetBool.h>
#include <tf2/LinearMath/Quaternion.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#include <tf/transform_broadcaster.h>
#include <tf2_ros/transform_listener.h>

#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseArray.h>
#include <campusrover_msgs/ElevatorPose.h>
#include <campusrover_msgs/ElevatorPoseArray.h>

#include <nav_msgs/Path.h>

#include <sensor_msgs/LaserScan.h>

#include <visualization_msgs/Marker.h>
#include <visualization_msgs/MarkerArray.h>

//campus rover srvs
#include <campusrover_msgs/InitFloor.h>
#include <campusrover_msgs/PressButton.h> 
#include <campusrover_msgs/ElevatorControlInterface.h>
#include <campusrover_msgs/ElevatorInfoReader.h>
#include <campusrover_msgs/ElevatorStatusChecker.h>
#include <campusrover_msgs/ArmTablePosition.h>
#include <campusrover_msgs/ArmTableHomeReturn.h> 
#include <campusrover_msgs/BubbleMPC.h> 
#include <campusrover_msgs/ButtonTracking.h> 
//campus rover msgs
#include <campusrover_msgs/ArmTablePoseStatus.h>
#include <campusrover_msgs/ElevatorControlStatus.h>
#include <campusrover_msgs/DoorStatus.h>
#include <campusrover_msgs/FloorStatus.h>
#include <campusrover_msgs/HmiStatus.h>
#include <campusrover_msgs/ButtonPoses.h>

using namespace std;

#define M_PI 3.14159265358979323846  /* pi */

ros::Subscriber elevator_caller_sub_,door_status_sub_,floor_status_sub_,elevator_info_sub_,elevator_pose_sub_,table_pose_sub_,mpc_finish_sub_, panel_pose_sub_, button_detection_sub_ , can_press_sub_;
ros::Publisher control_status_pub_, finish_pub_, hmi_pub_,elevator_info_pub_, status_timer_pub_, mpc_goal_pub_, elevator_caller_pub_, panel_enable_pub_, mpc_estimate_pub_ ;
ros::ServiceClient init_floor_srv_client_, button_srv_client_, arm_table_position_srv_client_, arm_table_home_return_srv_client_, mpc_enable_client_, elevator_info_reader_cliend_, EnableButtonTrackingClient;

geometry_msgs::PoseArray elevator_pose_;
geometry_msgs::Pose robot_tf_pose_;
geometry_msgs::PoseStamped panel_pose;

geometry_msgs::PoseArray mpc_est_posearray;
geometry_msgs::Pose mpc_est_pose;

int control_status_ = campusrover_msgs::ElevatorControlStatus::STANDBY;
int current_floor_;
int init_floor_;
int elevator_caller_status_ = 0;
string start_elevator_id = "e-1";
int elevator_id = -1;
int target_floor_;
string door_status_;
std::vector<string> doors_status_;
std::vector<string> elevator_id_names;
campusrover_msgs::ElevatorInfoArray elevators_info;

std::string TargetButtonName;
double button_stamp;
std::vector<double> door_open_stamp;

double table_y_position_home_;
double table_z_position_home_;
double table_y_position_outside_;
double table_z_position_outside_;
double table_y_position_inside_;
double table_z_position_inside_;

double arm_table_range_y_;
double panel_yaw_;
std::vector<double> elevator_yaw_;

bool arm_return_status_ = false;
bool arm_return_checker_ = false;
bool elevator_pose_ckeck_done_ = false;
bool arrive_target_floor_ = false;
bool control_status_first_time_ = true;
bool table_home_return_ckeck_done_ =false;
bool table_position_ckeck_done_ =false;
bool button_parking_ckeck_done_ = false;
bool mpc_arrive_ckeck_done_ = false, bubble_mpc_start = false;
bool elevator_caller_ckeck_done_ = false;
bool panel_pose_reset=true, elevator_pose_reset=true;
bool button_activate = false;
bool enable_multi_ = true;
bool CAN_PRESS = false ;

void InitFloorCallService(ros::ServiceClient &client,campusrover_msgs::InitFloor &srv) ;
void PressButtonCallService(ros::ServiceClient &client,campusrover_msgs::PressButton &srv) ;
void EnableButtonTrackingCallService(ros::ServiceClient &client,campusrover_msgs::ButtonTracking &srv);
void ArmPositionFunctionCallService(ros::ServiceClient &client,campusrover_msgs::ArmTablePosition &srv);
void ArmHomeReturnFunctionCallService(ros::ServiceClient &client,campusrover_msgs::ArmTableHomeReturn &srv);
void EnableBubbleMpcCallService(ros::ServiceClient &client, campusrover_msgs::BubbleMPC &srv);
void UpdateCampusRoverPoseFromTF();

//-----------------------------------------------------------------------------------------------
void get_parameters(ros::NodeHandle n_private)
{
  n_private.param<double>("table_y_position_home", table_y_position_home_, 0.2);
  n_private.param<double>("table_z_position_home", table_z_position_home_, 0.0);
  n_private.param<double>("table_y_position_outside", table_y_position_outside_, 0.2);
  n_private.param<double>("table_z_position_outside", table_z_position_outside_, 0.4);
  n_private.param<double>("table_y_position_inside", table_y_position_inside_, 0.46);//-0.95 +(0.65- 1.08)= -0.3 :0.25 + 0.3 = 0.55
  n_private.param<double>("table_z_position_inside", table_z_position_inside_, 0.48); //1.02-0.54=0.48

  //arm table
  n_private.param<double>("arm_table_range_y", arm_table_range_y_, 0.225);

}
//----------------------------------------------------------------------------------------------
void TimerCallback(const ros::TimerEvent &event)
{
  static campusrover_msgs::ElevatorControlStatus status;
  static campusrover_msgs::InitFloor init_param;
  static campusrover_msgs::PressButton button_param;
  static campusrover_msgs::ArmTablePosition table_position_msg;
  static campusrover_msgs::ArmTableHomeReturn home_return_msg;
  static geometry_msgs::PoseStamped mpc_goal;
  static nav_msgs::Path mpc_goal_path;
  static std_msgs::String finish_msgs;
  static std_msgs::Header status_time;
  static std_srvs::SetBool mpc_enable;
  static campusrover_msgs::BubbleMPC bubble_mpc_enable;
  static campusrover_msgs::HmiStatus hmi_msg;
  static std_msgs::Int16 mode_msg;
  static bool button_parking_start_ = false;
  static double elevator_center_x;

  UpdateCampusRoverPoseFromTF();

  if(control_status_ == status.STANDBY)// move to front of button (outside)
  {
    elevator_pose_ckeck_done_ = false;
    arrive_target_floor_ = false;
    control_status_first_time_ = true;
    table_home_return_ckeck_done_ =false;
    table_position_ckeck_done_ =false;
    button_activate = false;
  }
  else if(control_status_ == status.MOVE_TO_OUTSIDE_BUTTON)// move to front of button (outside)
  {
    if(control_status_first_time_)
    {
      status_time.frame_id = "moving_to_outside_button";
      status_time.stamp = ros::Time::now();
      //Speaking
      hmi_msg.staus = campusrover_msgs::HmiStatus::STAUS_FORWARD;
      hmi_pub_.publish(hmi_msg);
      ros::Duration(1.0).sleep();

      if(!enable_multi_)
        status.elevator_id = elevator_id;

      //init floor 
      init_param.request.init_floor = init_floor_;
      InitFloorCallService(init_floor_srv_client_, init_param);

      std_msgs::Bool msg;
      msg.data = true;
      panel_enable_pub_.publish(msg); //true, see panel pose
      
      if(target_floor_ - init_floor_> 0)
      {
        TargetButtonName="(";
      }
      else
      {
        TargetButtonName=")";
      }
      button_param.request.button_type.data=TargetButtonName;
      PressButtonCallService(button_srv_client_,button_param);

      control_status_first_time_ = false;
    }

    if(elevator_caller_status_ == 1 &&  status_time.frame_id != "Searching Panel")
    {
      status_time.frame_id = "Searching Panel";
      status_time.stamp = ros::Time::now();
    }
    else if(elevator_caller_status_ == 4 &&  status_time.frame_id != "Panel MPC + VS")
    {
      status_time.frame_id = "Panel MPC + VS";
      status_time.stamp = ros::Time::now();
    }
    else if(elevator_caller_status_ == 3 &&  status_time.frame_id != "Button + VS")
    {
      status_time.frame_id = "Button + VS";
      status_time.stamp = ros::Time::now();
    }

    if(elevator_caller_ckeck_done_)
    {
      status_time.frame_id = "moving_to_standby";
      status_time.stamp = ros::Time::now();
      mpc_arrive_ckeck_done_ = false;
      
      control_status_first_time_ = true;
      elevator_caller_ckeck_done_ = false;
      std_msgs::Bool msg;
      msg.data = false;
      panel_enable_pub_.publish(msg); //false, don't see panel pose
      control_status_ = status.MOVE_TO_OUTSIDE_STANDBY_POSITION;
    }

  }
  else if(control_status_ == status.MOVE_TO_OUTSIDE_STANDBY_POSITION)// MOVE_TO_OUTSIDE_STANDBY_POSITION
  {
    static bool find_elevator_pose=false;
    mpc_est_posearray.poses.clear();
    mpc_goal_path.poses.clear();
    if(control_status_first_time_)
    {
      bubble_mpc_start = false;
      bubble_mpc_enable.request.enable = true;
      bubble_mpc_enable.request.robot_radius = 0.33;
      bubble_mpc_enable.request.away_dis = 0.3;
      EnableBubbleMpcCallService(mpc_enable_client_, bubble_mpc_enable);
      
      if(!enable_multi_)
      {
        //Table position move 
        table_position_msg.request.position.y = table_y_position_outside_;
        table_position_msg.request.position.z = table_z_position_outside_;
        ArmPositionFunctionCallService(arm_table_position_srv_client_, table_position_msg);
      }
      control_status_first_time_ = false;
    }
    else if (!control_status_first_time_ && !mpc_arrive_ckeck_done_)  
    {

      if(!bubble_mpc_start)
      {
        bubble_mpc_enable.request.enable = true;
        bubble_mpc_enable.request.robot_radius = 0.33;
        bubble_mpc_enable.request.away_dis = 0.3;
        EnableBubbleMpcCallService(mpc_enable_client_, bubble_mpc_enable);
      }


      if(enable_multi_ || (!enable_multi_ && !elevator_pose_ckeck_done_))
      {
        mpc_goal.pose.position.x = panel_pose.pose.position.x - 2.0*cos(panel_yaw_);
        mpc_goal.pose.position.y = panel_pose.pose.position.y - 2.0*sin(panel_yaw_);
        mpc_goal.pose.orientation = panel_pose.pose.orientation;
      }
      else if(elevator_pose_ckeck_done_ && !find_elevator_pose)
      {
        mpc_goal.pose.position.x = elevator_pose_.poses.at(elevator_id).position.x - 2.3*cos(elevator_yaw_.at(elevator_id));
        mpc_goal.pose.position.y = elevator_pose_.poses.at(elevator_id).position.y - 2.3*sin(elevator_yaw_.at(elevator_id));

        tf::Quaternion q(elevator_pose_.poses.at(elevator_id).orientation.x,
                              elevator_pose_.poses.at(elevator_id).orientation.y,
                              elevator_pose_.poses.at(elevator_id).orientation.z,
                              elevator_pose_.poses.at(elevator_id).orientation.w);
        double goal_yaw;
        if(elevator_id==0)
        {
          goal_yaw = tf::getYaw(q) - 5*M_PI/180;
        }
        else
        {
          goal_yaw = tf::getYaw(q) + 5*M_PI/180;
        }

        if(goal_yaw > M_PI)
          goal_yaw = -2*M_PI + goal_yaw;
        else if(goal_yaw < -M_PI)
          goal_yaw = 2*M_PI + goal_yaw;

        tf2::Quaternion goal_q;
        goal_q.setRPY(0.0,0.0,goal_yaw);

        mpc_goal.pose.orientation = tf2::toMsg(goal_q);

        find_elevator_pose = true;
      }
      mpc_goal.header = panel_pose.header;
      
      mpc_goal.header.stamp = ros::Time::now();


      mpc_goal_path.header = mpc_goal.header;
      mpc_goal_path.header.stamp = ros::Time::now();
      mpc_goal_path.poses.push_back(mpc_goal);

      mpc_goal_pub_.publish(mpc_goal_path);

      mpc_est_pose = mpc_goal.pose;
      mpc_est_posearray.header = mpc_goal_path.header;
      mpc_est_posearray.poses.push_back(mpc_est_pose);
      mpc_estimate_pub_.publish(mpc_est_posearray);
    }
    else if (!control_status_first_time_ && mpc_arrive_ckeck_done_ && (find_elevator_pose || enable_multi_))  
    {
      control_status_first_time_ = true;
      mpc_arrive_ckeck_done_ = false;
      control_status_ = status.WAIT_FOR_OUTSIDE_DOOR_OPEN;
    } 

  }
  else if(control_status_ == status.WAIT_FOR_OUTSIDE_DOOR_OPEN)// waiting door open
  {
    if(control_status_first_time_)
    {
      status_time.frame_id = "waiting_outside_door";
      status_time.stamp = ros::Time::now();
      control_status_first_time_ = false;
    }
    if(door_status_ == "open" && button_activate == false )
    {
      if(enable_multi_)
      {
        if(door_open_stamp[0] > button_stamp && button_stamp>0)
        {
          elevator_id = 0;
        }
        else if(door_open_stamp[1] > button_stamp && button_stamp>0)
        {
          elevator_id = 1;
        }
      }

      if(elevator_id != -1) 
      {
        campusrover_msgs::ButtonTracking btn_rocg;
        btn_rocg.request.enable = false;
        EnableButtonTrackingCallService(EnableButtonTrackingClient, btn_rocg);
        
        control_status_first_time_ = true;
        status_time.frame_id = "opened_outside_door";
        status_time.stamp = ros::Time::now();
        status.elevator_id = elevator_id;
        control_status_ = status.ENTER_ELEVATOR_OUTSIDE;
        mpc_arrive_ckeck_done_ = false;
      }
      
    }
    
  }
  else if(control_status_ == status.ENTER_ELEVATOR_OUTSIDE)//enter the elevator
  {
    elevator_center_x = elevators_info.elevator_infos[elevator_id].elevator_size.x / 2 + elevators_info.elevator_infos[elevator_id].elevator_door_size.x;
    if(control_status_first_time_)
    {
      if(doors_status_.at(elevator_id) == "open")
      {
        status_time.frame_id = "moving_to_inside_standby";
        status_time.stamp = ros::Time::now();

        //Table position move 
        table_position_msg.request.position.y = table_y_position_inside_;
        table_position_msg.request.position.z = table_z_position_inside_;
        ArmPositionFunctionCallService(arm_table_position_srv_client_, table_position_msg);
        
        //MPC move 
        bubble_mpc_enable.request.enable = true;
        bubble_mpc_enable.request.robot_radius = 0.33;
        bubble_mpc_enable.request.away_dis = 0.055;
        EnableBubbleMpcCallService(mpc_enable_client_, bubble_mpc_enable);

        //Speaking
        hmi_msg.staus = campusrover_msgs::HmiStatus::STAUS_ENTER_ELEVATOR;
        hmi_pub_.publish(hmi_msg);
        ros::Duration(0.5).sleep();

        control_status_first_time_ = false;
      }
      else if (doors_status_.at(elevator_id) == "close")
      {
        control_status_first_time_ = true;
        mpc_arrive_ckeck_done_ = false;
        control_status_ = status.MOVE_TO_OUTSIDE_BUTTON;
      }
    }
    else if (!control_status_first_time_ && 
            (doors_status_.at(elevator_id) == "close" || doors_status_.at(elevator_id) == "open_cant_enter") && 
            elevator_pose_.poses.at(elevator_id).position.z == 1)
    {
      if (status_time.frame_id != "arrive_outside_standby(after fail)")
      {
        if(status_time.frame_id != "moving_to_inside_standby_failed")
        {
          status_time.frame_id = "moving_to_inside_standby_failed";
          status_time.stamp = ros::Time::now();
        }
        
        if(enable_multi_)
        {
          mpc_goal.pose.position.x = panel_pose.pose.position.x - 2.0*cos(panel_yaw_);
          mpc_goal.pose.position.y = panel_pose.pose.position.y - 2.0*sin(panel_yaw_);
          mpc_goal.pose.orientation = panel_pose.pose.orientation;
        }
        else
        {
          mpc_goal.pose.position.x = elevator_pose_.poses.at(elevator_id).position.x - 2.3*cos(elevator_yaw_.at(elevator_id));
          mpc_goal.pose.position.y = elevator_pose_.poses.at(elevator_id).position.y - 2.3*sin(elevator_yaw_.at(elevator_id));

          tf::Quaternion q(elevator_pose_.poses.at(elevator_id).orientation.x,
                                elevator_pose_.poses.at(elevator_id).orientation.y,
                                elevator_pose_.poses.at(elevator_id).orientation.z,
                                elevator_pose_.poses.at(elevator_id).orientation.w);
          double goal_yaw;
          if(elevator_id == 0)
          {
            goal_yaw = tf::getYaw(q) - 5*M_PI/180;
          }
          else
          {
            goal_yaw = tf::getYaw(q) + 5*M_PI/180;
          }

          if(goal_yaw > M_PI)
            goal_yaw = -2*M_PI + goal_yaw;
          else if(goal_yaw < -M_PI)
            goal_yaw = 2*M_PI + goal_yaw;

          tf2::Quaternion goal_q;
          goal_q.setRPY(0.0,0.0,goal_yaw);

          mpc_goal.pose.orientation = tf2::toMsg(goal_q);
        }
        mpc_goal.header = panel_pose.header;
        mpc_goal.header.stamp = ros::Time::now();
        mpc_goal_path.header = panel_pose.header;
        mpc_goal_path.header.stamp = ros::Time::now();
        mpc_goal_path.poses.clear();
        mpc_goal_path.poses.push_back(mpc_goal);
        mpc_goal_pub_.publish(mpc_goal_path);

        mpc_est_pose = mpc_goal.pose;
        mpc_est_posearray.header = mpc_goal_path.header;
        mpc_est_posearray.poses.clear();
        mpc_est_posearray.poses.push_back(mpc_est_pose);
        mpc_estimate_pub_.publish(mpc_est_posearray);
      }
    }

    if (doors_status_.at(elevator_id) == "open" && elevator_pose_.poses.at(elevator_id).position.z == 1)
    {
      if(status_time.frame_id != "moving_to_inside_standby")
      {
        status_time.frame_id = "moving_to_inside_standby";
        status_time.stamp = ros::Time::now();
      }

      if(!bubble_mpc_start)
      {
        bubble_mpc_enable.request.enable = true;
        bubble_mpc_enable.request.robot_radius = 0.33;
        bubble_mpc_enable.request.away_dis = 0.055;
        EnableBubbleMpcCallService(mpc_enable_client_, bubble_mpc_enable);
      }

      mpc_goal_path.header = elevator_pose_.header;
      mpc_goal_path.header.stamp = ros::Time::now();
      mpc_goal_path.poses.clear();
      mpc_est_posearray.header = mpc_goal_path.header;
      mpc_est_posearray.poses.clear();

      mpc_goal.pose.orientation = elevator_pose_.poses.at(elevator_id).orientation;
      mpc_goal.header = elevator_pose_.header;
      mpc_goal.header.stamp = ros::Time::now();

      //MPC move 
      mpc_goal.pose.position.x = elevator_pose_.poses.at(elevator_id).position.x - 1.1*cos(elevator_yaw_.at(elevator_id)); //(outside) 1.1m back of elevator door
      mpc_goal.pose.position.y = elevator_pose_.poses.at(elevator_id).position.y - 1.1*sin(elevator_yaw_.at(elevator_id));
      mpc_est_pose = mpc_goal.pose;
      mpc_est_posearray.poses.push_back(mpc_est_pose);
      mpc_goal_path.poses.push_back(mpc_goal);

      mpc_goal.pose.position.x = elevator_pose_.poses.at(elevator_id).position.x + 0.2*cos(elevator_yaw_.at(elevator_id));  //(inside) 0.2m front of elevator door
      mpc_goal.pose.position.y = elevator_pose_.poses.at(elevator_id).position.y + 0.2*sin(elevator_yaw_.at(elevator_id));;
      mpc_est_pose = mpc_goal.pose;
      mpc_est_posearray.poses.push_back(mpc_est_pose);
      mpc_goal_path.poses.push_back(mpc_goal);
     
      // (inside) at elevator center
      mpc_goal.pose.position.x = elevator_pose_.poses.at(elevator_id).position.x + elevator_center_x*cos(elevator_yaw_.at(elevator_id)) + elevators_info.elevator_infos[elevator_id].inside_button_position.orientation.x*cos(elevator_yaw_.at(elevator_id)) - elevators_info.elevator_infos[elevator_id].inside_button_position.orientation.y*sin(elevator_yaw_.at(elevator_id));
      mpc_goal.pose.position.y = elevator_pose_.poses.at(elevator_id).position.y + elevator_center_x*sin(elevator_yaw_.at(elevator_id)) + elevators_info.elevator_infos[elevator_id].inside_button_position.orientation.x*sin(elevator_yaw_.at(elevator_id)) + elevators_info.elevator_infos[elevator_id].inside_button_position.orientation.y*cos(elevator_yaw_.at(elevator_id));
      mpc_est_pose = mpc_goal.pose;
      mpc_est_posearray.poses.push_back(mpc_est_pose);
      mpc_goal_path.poses.push_back(mpc_goal);

      mpc_goal_pub_.publish(mpc_goal_path);
      mpc_estimate_pub_.publish(mpc_est_posearray);
    }

    if (elevator_pose_.poses.at(elevator_id).position.z == -1)
    {
      button_param.request.button_type.data = to_string(target_floor_);
      PressButtonCallService(button_srv_client_,button_param);

      status_time.frame_id = "enter_elevator_inside_no_rotate";
      status_time.stamp = ros::Time::now();
      control_status_ = status.ENTER_ELEVATOR_INSIDE_NO_ROTATE;
    }

    if (!control_status_first_time_ && elevator_pose_.poses.at(elevator_id).position.z == 1 && mpc_arrive_ckeck_done_)
    {
      if(status_time.frame_id != "arrive_outside_standby(after fail)")
      {
        status_time.frame_id = "arrive_outside_standby(after fail)";
        status_time.stamp = ros::Time::now();
      }
      bubble_mpc_start = false;
      if(doors_status_.at(elevator_id) == "close")
      {
        control_status_first_time_ = true;
        mpc_arrive_ckeck_done_ = false;
        control_status_ = status.MOVE_TO_OUTSIDE_BUTTON;
      }
    }    
  }
  else if(control_status_ == status.ENTER_ELEVATOR_INSIDE_NO_ROTATE)//ENTER_ELEVATOR_INSIDE_NO_ROTATE
  {
    double turn_angle = elevators_info.elevator_infos[elevator_id].inside_button_position.orientation.w; //turn right 70 degree
    
    if (elevator_pose_.poses.at(elevator_id).position.z == -1 && (turn_angle >= -90 && turn_angle <=-60)) //Table position move r
    {
      table_position_msg.request.position.y = 0.02;
      table_position_msg.request.position.z = 0.5;
      ArmPositionFunctionCallService(arm_table_position_srv_client_, table_position_msg);

      // press r
      // std_msgs::String name_target;
      // name_target.data = "press_r";
      // ArmNameTargetPub.publish(name_target);

      std_msgs::Int16 msg;
      msg.data = 81; // 81 WAIT_PRESS_NUMBER_R
      elevator_caller_pub_.publish(msg);

      status_time.frame_id = "arrive_inside_standby";
      status_time.stamp = ros::Time::now();
      control_status_first_time_ = true;
    }

    else if (elevator_pose_.poses.at(elevator_id).position.z == -1 && (turn_angle >= 60 && turn_angle <= 90)) //Table position move l
    {
      table_position_msg.request.position.y = 0.32;
      table_position_msg.request.position.z = 0.5;
      ArmPositionFunctionCallService(arm_table_position_srv_client_, table_position_msg);
      // press l
      // std_msgs::String name_target;
      // name_target.data = "press_1";
      // ArmNameTargetPub.publish(name_target);
      
      std_msgs::Int16 msg;
      msg.data = 82; // 82 WAIT_PRESS_NUMBER_L
      elevator_caller_pub_.publish(msg);

      status_time.frame_id = "arrive_inside_standby";
      status_time.stamp = ros::Time::now();
      control_status_first_time_ = true;   
    }
    else if (elevator_pose_.poses.at(elevator_id).position.z == -1 && (turn_angle > -60 && turn_angle < 60)) //Table position move c
    {
      table_position_msg.request.position.y = 0.15;
      table_position_msg.request.position.z = 0.5;
      ArmPositionFunctionCallService(arm_table_position_srv_client_, table_position_msg);
      // press c
      // std_msgs::String name_target;
      // name_target.data = "press_c";
      // ArmNameTargetPub.publish(name_target);
      
      std_msgs::Int16 msg;
      msg.data = 8; // 8 WAIT_PRESS_NUMBER
      elevator_caller_pub_.publish(msg);

      status_time.frame_id = "arrive_inside_standby";
      status_time.stamp = ros::Time::now();
      control_status_first_time_ = true;
    }

    if ( CAN_PRESS == true )
    {
      control_status_ = status.MOVE_TO_INSIDE_BUTTON_NO_ROTATE;  
    }
    else
    {
      std_msgs::Int16 msg;
      msg.data = -1; // -1 STANDBY
      elevator_caller_pub_.publish(msg);
      control_status_ = status.ENTER_ELEVATOR_INSIDE_ROTATE;  
    }
  }

  else if(control_status_ == status.MOVE_TO_INSIDE_BUTTON_NO_ROTATE)//MOVE_TO_INSIDE_BUTTON_NO_ROTATE
  {
    if(control_status_first_time_)// && mpc_arrive_ckeck_done_)
    {
      status_time.frame_id = "moving_to_inside_button_no_rotate";
      status_time.stamp = ros::Time::now();
      //Speaking
      hmi_msg.staus = campusrover_msgs::HmiStatus::STAUS_FORWARD;
      hmi_pub_.publish(hmi_msg);
      ros::Duration(0.5).sleep();
      hmi_msg.staus = campusrover_msgs::HmiStatus::STAUS_PRESS_BUTTON;
      hmi_pub_.publish(hmi_msg);

      control_status_first_time_ = false;
    }

    if( (elevator_caller_status_ == 3 || elevator_caller_status_ == 31 || elevator_caller_status_ == 32)  &&  (status_time.frame_id != "[inside]Button + VS_NO_ROTATE") && (control_status_ == status.MOVE_TO_INSIDE_BUTTON_NO_ROTATE))
    {
      status_time.frame_id = "[inside]Button + VS_NO_ROTATE";
      status_time.stamp = ros::Time::now();
    }

    if(elevator_caller_ckeck_done_)
    {
      status_time.frame_id = "moving_to_inside_standby";
      status_time.stamp = ros::Time::now();
      bubble_mpc_start = false;
      mpc_arrive_ckeck_done_ = false;

      bubble_mpc_enable.request.enable = true;
      bubble_mpc_enable.request.robot_radius = 0.33;
      bubble_mpc_enable.request.away_dis = 0.05;
      EnableBubbleMpcCallService(mpc_enable_client_, bubble_mpc_enable);
      
      mpc_goal.header = elevator_pose_.header;
      mpc_goal.header.stamp = ros::Time::now();

      mpc_goal_path.header = elevator_pose_.header;
      mpc_goal_path.header.stamp = ros::Time::now();
      mpc_goal_path.poses.clear();
      mpc_goal_path.poses.push_back(mpc_goal);

      mpc_goal_pub_.publish(mpc_goal_path);

      mpc_est_pose = mpc_goal.pose;
      mpc_est_posearray.header = mpc_goal_path.header;
      mpc_est_posearray.poses.clear();
      mpc_est_posearray.poses.push_back(mpc_est_pose);
      mpc_estimate_pub_.publish(mpc_est_posearray);
      
      ros::Duration(0.9).sleep();      
      
      control_status_first_time_ = true;
      elevator_caller_ckeck_done_ = false;
      std_msgs::Bool msg;
      msg.data = false;
      panel_enable_pub_.publish(msg);  //false, don't see panel pose
      control_status_ = status.MOVE_TO_INSIDE_STANDBY_POSITION;
    }

  }    
  else if(control_status_ == status.ENTER_ELEVATOR_INSIDE_ROTATE)//enter the elevator inside rotate
  {
    
    if (elevator_pose_.poses.at(elevator_id).position.z == -1)
    {
      tf::Quaternion q(elevator_pose_.poses.at(elevator_id).orientation.x,
                      elevator_pose_.poses.at(elevator_id).orientation.y,
                      elevator_pose_.poses.at(elevator_id).orientation.z,
                      elevator_pose_.poses.at(elevator_id).orientation.w);

      double turn_angle = elevators_info.elevator_infos[elevator_id].inside_button_position.orientation.w; //turn right 70 degree
      
      double goal_yaw = tf::getYaw(q) + turn_angle *M_PI/180;

      double inside_offset_y = 0;
      
      if(turn_angle != 0)
        inside_offset_y = (turn_angle / abs(turn_angle) ) * 0.1;
   
      //at elevator center ,the position is the same as ENTER_ELEVATOR_OUTSIDE status' s last mpc goal , but this time will rotate to meet the button
      mpc_goal.pose.position.x = elevator_pose_.poses.at(elevator_id).position.x + elevator_center_x*cos(elevator_yaw_.at(elevator_id)) + elevators_info.elevator_infos[elevator_id].inside_button_position.orientation.x*cos(elevator_yaw_.at(elevator_id)) - elevators_info.elevator_infos[elevator_id].inside_button_position.orientation.y*sin(elevator_yaw_.at(elevator_id)) - inside_offset_y*sin(elevator_yaw_.at(elevator_id));
      mpc_goal.pose.position.y = elevator_pose_.poses.at(elevator_id).position.y + elevator_center_x*sin(elevator_yaw_.at(elevator_id)) + elevators_info.elevator_infos[elevator_id].inside_button_position.orientation.x*sin(elevator_yaw_.at(elevator_id)) + elevators_info.elevator_infos[elevator_id].inside_button_position.orientation.y*cos(elevator_yaw_.at(elevator_id)) + inside_offset_y*cos(elevator_yaw_.at(elevator_id));

      if(goal_yaw > M_PI)
        goal_yaw = -2*M_PI + goal_yaw;
      else if(goal_yaw < -M_PI)
        goal_yaw = 2*M_PI + goal_yaw;

      tf2::Quaternion goal_q;
      goal_q.setRPY(0.0,0.0,goal_yaw); // rpy to xyzw
      mpc_goal.pose.orientation = tf2::toMsg(goal_q); //MPC rotate to meet button

      mpc_goal.header = elevator_pose_.header;
      mpc_goal.header.stamp = ros::Time::now();

      mpc_goal_path.header = elevator_pose_.header;
      mpc_goal_path.header.stamp = ros::Time::now();

      mpc_goal_path.poses.pop_back(); //don't use the last element (here, deleting last time's mpc goal path)
      mpc_est_posearray.poses.pop_back();

      mpc_est_pose = mpc_goal.pose;

      mpc_est_posearray.header = mpc_goal_path.header;

      mpc_est_posearray.poses.push_back(mpc_est_pose); 
      mpc_goal_path.poses.push_back(mpc_goal); // add element at last (here, add this time's mpc goal path)

      mpc_goal_pub_.publish(mpc_goal_path); //mpc_goal (nav_msgs/Path)
      mpc_estimate_pub_.publish(mpc_est_posearray); //mpc_est (geometry_msgs/Pose)

      ros::Duration(0.5).sleep();
    }

    tf::Quaternion robot_odom_pose(robot_tf_pose_.orientation.x,
                                robot_tf_pose_.orientation.y,
                                robot_tf_pose_.orientation.z,
                                robot_tf_pose_.orientation.w);
    tf::getYaw(robot_odom_pose);
    
    tf::Quaternion goal_odom_pose(mpc_goal.pose.orientation.x,
                                    mpc_goal.pose.orientation.y,
                                    mpc_goal.pose.orientation.z,
                                    mpc_goal.pose.orientation.w);
    tf::getYaw(goal_odom_pose);
    
    if (elevator_pose_.poses.at(elevator_id).position.z == -1 && std::abs(tf::getYaw(robot_odom_pose) - tf::getYaw(goal_odom_pose)) < 0.05 )
    {

      std_msgs::Int16 msg;
      msg.data = 8; //3 VS , 8 WAIT_PRESS_NUMBER
      elevator_caller_pub_.publish(msg);

      status_time.frame_id = "arrive_inside_standby";
      status_time.stamp = ros::Time::now();
      control_status_first_time_ = true;
      control_status_ = status.MOVE_TO_INSIDE_BUTTON_ROTATE;
    }

  }
  else if(control_status_ == status.MOVE_TO_INSIDE_BUTTON_ROTATE)//move to front of button (inside)
  {
    if(control_status_first_time_)// && mpc_arrive_ckeck_done_)
    {
      status_time.frame_id = "moving_to_inside_button";
      status_time.stamp = ros::Time::now();
      //Speaking
      hmi_msg.staus = campusrover_msgs::HmiStatus::STAUS_FORWARD;
      hmi_pub_.publish(hmi_msg);
      ros::Duration(0.5).sleep();
      hmi_msg.staus = campusrover_msgs::HmiStatus::STAUS_PRESS_BUTTON;
      hmi_pub_.publish(hmi_msg);

      control_status_first_time_ = false;
    }

    if(elevator_caller_status_ == 3 &&  status_time.frame_id != "[inside]Button + VS")
    {
      status_time.frame_id = "[inside]Button + VS";
      status_time.stamp = ros::Time::now();
    }
    // else if(elevator_caller_status_ == 6 &&  status_time.frame_id != "Press Button")
    // {
    //   status_time.frame_id = "Press Button";
    //   status_time.stamp = ros::Time::now();
    // }

    if(elevator_caller_ckeck_done_)
    {
      status_time.frame_id = "moving_to_instide_standby";
      status_time.stamp = ros::Time::now();
      bubble_mpc_start = false;
      mpc_arrive_ckeck_done_ = false;

      bubble_mpc_enable.request.enable = true;
      bubble_mpc_enable.request.robot_radius = 0.33;
      bubble_mpc_enable.request.away_dis = 0.05;
      EnableBubbleMpcCallService(mpc_enable_client_, bubble_mpc_enable);

      
      // mpc_goal.pose.position.x = X; // remain the last pose(inside press button standby position)
      // mpc_goal.pose.position.y = X; // remain the last pose(inside press button standby position)
      // mpc_goal.pose.orientation = X; // remain the last pose(inside press button standby position)
      mpc_goal.header = elevator_pose_.header;
      mpc_goal.header.stamp = ros::Time::now();

      mpc_goal_path.header = elevator_pose_.header;
      mpc_goal_path.header.stamp = ros::Time::now();
      mpc_goal_path.poses.clear();
      mpc_goal_path.poses.push_back(mpc_goal);

      mpc_goal_pub_.publish(mpc_goal_path);

      mpc_est_pose = mpc_goal.pose;
      mpc_est_posearray.header = mpc_goal_path.header;
      mpc_est_posearray.poses.clear();
      mpc_est_posearray.poses.push_back(mpc_est_pose);
      mpc_estimate_pub_.publish(mpc_est_posearray);
      
      ros::Duration(0.9).sleep();      
      
      control_status_first_time_ = true;
      elevator_caller_ckeck_done_ = false;
      std_msgs::Bool msg;
      msg.data = false;
      panel_enable_pub_.publish(msg);  //false, don't see panel pose
      control_status_ = status.MOVE_TO_INSIDE_STANDBY_POSITION;
    }

  }
  else if(control_status_ == status.MOVE_TO_INSIDE_STANDBY_POSITION)//waiting arrive target floor
  {
      
      if (!mpc_arrive_ckeck_done_)
      {

        if(!bubble_mpc_start)
        {
          bubble_mpc_enable.request.enable = true;
          bubble_mpc_enable.request.robot_radius = 0.33;
          bubble_mpc_enable.request.away_dis = 0.05;
          EnableBubbleMpcCallService(mpc_enable_client_, bubble_mpc_enable);
        }

        double inside_offset_y = -0.05;
        double inside_offset_x = -0.3;
        mpc_goal.pose.position.x = elevator_pose_.poses.at(elevator_id).position.x + elevator_center_x * cos(elevator_yaw_.at(elevator_id)) + inside_offset_x * cos(elevator_yaw_.at(elevator_id)) - inside_offset_y * sin(elevator_yaw_.at(elevator_id)) - 0.01;
        mpc_goal.pose.position.y = elevator_pose_.poses.at(elevator_id).position.y + elevator_center_x * sin(elevator_yaw_.at(elevator_id)) + inside_offset_x * sin(elevator_yaw_.at(elevator_id)) + inside_offset_y * cos(elevator_yaw_.at(elevator_id));
        tf::Quaternion q(elevator_pose_.poses.at(elevator_id).orientation.x,
                      elevator_pose_.poses.at(elevator_id).orientation.y,
                      elevator_pose_.poses.at(elevator_id).orientation.z,
                      elevator_pose_.poses.at(elevator_id).orientation.w);

        double goal_yaw = tf::getYaw(q) - M_PI;
        
        if(goal_yaw > M_PI)
          goal_yaw = -2*M_PI + goal_yaw;
        else if(goal_yaw < -M_PI)
          goal_yaw = 2*M_PI + goal_yaw;

        tf2::Quaternion goal_q;
        goal_q.setRPY(0.0,0.0,goal_yaw);

        mpc_goal.pose.orientation = tf2::toMsg(goal_q); //face to door

        // mpc_goal.pose.orientation = elevator_pose_.poses.at(elevator_id).orientation; // face to mirror
        mpc_goal.header = elevator_pose_.header;
        mpc_goal.header.stamp = ros::Time::now();

        mpc_goal_path.header = elevator_pose_.header;
        mpc_goal_path.header.stamp = ros::Time::now();
        mpc_goal_path.poses.clear();
        mpc_goal_path.poses.push_back(mpc_goal);

        mpc_goal_pub_.publish(mpc_goal_path);

        mpc_est_pose = mpc_goal.pose;
        mpc_est_posearray.header = mpc_goal_path.header;
        mpc_est_posearray.poses.clear();
        mpc_est_posearray.poses.push_back(mpc_est_pose);
        mpc_estimate_pub_.publish(mpc_est_posearray);
        
        ros::Duration(0.5).sleep();
      }
      else
      {
        status_time.frame_id = "inside_parking_done";
        status_time.stamp = ros::Time::now();
        std_msgs::Bool msg;
        msg.data = true;
        panel_enable_pub_.publish(msg);
        elevator_caller_ckeck_done_ = false;
        table_position_ckeck_done_ = false;
        button_parking_ckeck_done_ = false;
        button_parking_start_ = false;
        control_status_first_time_ = true;
        control_status_ =status.WAIT_FOR_ELEVATOR_ARRIVE;

        //Table position move 
        table_position_msg.request.position.y = table_y_position_home_;
        table_position_msg.request.position.z = table_z_position_home_;
        ArmPositionFunctionCallService(arm_table_position_srv_client_, table_position_msg);
      }

  }
  else if(control_status_ == status.WAIT_FOR_ELEVATOR_ARRIVE)//waiting arrive target floor
  {
    if(arrive_target_floor_)
    {
      status_time.frame_id = "arrive_target_floor";
      status_time.stamp = ros::Time::now();
      control_status_ = status.WAIT_FOR_INSIDE_DOOR_OPEN;
    }
  }
  else if(control_status_ == status.WAIT_FOR_INSIDE_DOOR_OPEN)//waiting door open
  {
    if(doors_status_.at(elevator_id) == "open" && arrive_target_floor_)
    {
      status_time.frame_id = "door open";
      status_time.stamp = ros::Time::now();
      control_status_ = status.LEAVE_ELEVATOR_INSIDE;
    }
  }
  else if(control_status_ == status.LEAVE_ELEVATOR_INSIDE)//go out of the elevator
  {
    // if(door_status_ == "open")
    // {
      if(control_status_first_time_)
      {
        bubble_mpc_start = false;

        bubble_mpc_enable.request.enable = true;
        bubble_mpc_enable.request.robot_radius = 0.33;
        bubble_mpc_enable.request.away_dis = 0.05;
        EnableBubbleMpcCallService(mpc_enable_client_, bubble_mpc_enable);


        status_time.frame_id = "moving_to_outside_standby";
        status_time.stamp = ros::Time::now();
        //Speaking
        hmi_msg.staus = campusrover_msgs::HmiStatus::STAUS_LEAVING_ELEVATOR;
        hmi_pub_.publish(hmi_msg);
        ros::Duration(0.5).sleep();


        control_status_first_time_ = false;
      }
    // }
    if (elevator_pose_.poses.at(elevator_id).position.z == -1)
    {

      if(!bubble_mpc_start)
      {
        bubble_mpc_enable.request.enable = true;
        bubble_mpc_enable.request.robot_radius = 0.33;
        bubble_mpc_enable.request.away_dis = 0.05;
        EnableBubbleMpcCallService(mpc_enable_client_, bubble_mpc_enable);
      }

      mpc_goal.header = elevator_pose_.header;
      mpc_goal.header.stamp = ros::Time::now();

      mpc_goal_path.header = elevator_pose_.header;
      mpc_goal_path.header.stamp = ros::Time::now();
      mpc_goal_path.poses.clear();

      mpc_est_posearray.header = mpc_goal_path.header;
      mpc_est_posearray.poses.clear();

      //MPC move 
      mpc_goal.pose.position.x = elevator_pose_.poses.at(elevator_id).position.x;
      mpc_goal.pose.position.y = elevator_pose_.poses.at(elevator_id).position.y;
      mpc_est_pose = mpc_goal.pose;
      mpc_est_posearray.poses.push_back(mpc_est_pose);
      mpc_goal_path.poses.push_back(mpc_goal);

      mpc_goal.pose.position.x = elevator_pose_.poses.at(elevator_id).position.x - 2.0*cos(elevator_yaw_.at(elevator_id));
      mpc_goal.pose.position.y = elevator_pose_.poses.at(elevator_id).position.y - 2.0*sin(elevator_yaw_.at(elevator_id));
      mpc_est_pose = mpc_goal.pose;
      mpc_est_posearray.poses.push_back(mpc_est_pose);
      mpc_goal_path.poses.push_back(mpc_goal);


      mpc_goal_pub_.publish(mpc_goal_path);
      mpc_estimate_pub_.publish(mpc_est_posearray);
    }
    
    if (elevator_pose_.poses.at(elevator_id).position.z == 1 && mpc_arrive_ckeck_done_ && start_elevator_id != "e-1")
    {
      start_elevator_id = "e-1";

      status_time.frame_id = "finish";
      status_time.stamp = ros::Time::now();

      finish_msgs.data = "e";
      finish_msgs.data += std::to_string(elevator_id);
      finish_pub_.publish(finish_msgs);
      //table home return
      ros::Duration(1.0).sleep();
      home_return_msg.request.flag = true;
      ArmHomeReturnFunctionCallService(arm_table_home_return_srv_client_, home_return_msg);
      
      control_status_first_time_ = true;
      control_status_ = status.STANDBY;
      elevator_id = -1;

      elevator_pose_reset = true;
      panel_pose_reset = true;
      mpc_arrive_ckeck_done_ = false;
      button_activate = false;
      ROS_INFO("[elevaror2 status Controller] Finish the elevator progress.");
    }
  }
  
  status.control_status = control_status_;
  control_status_pub_.publish(status);
  status_timer_pub_.publish(status_time);

}
//-----------------------------------------------------------------------------------------------
void CanPressCallback(const std_msgs::Bool &msg )
{
  CAN_PRESS = mode->data;
}
//-----------------------------------------------------------------------------------------------
void ElevatorCallerCallback(const std_msgs::Int16ConstPtr &mode )
{
  elevator_caller_status_ = mode->data;
  if (mode->data == 999)
    elevator_caller_ckeck_done_ = true;
}
//-----------------------------------------------------------------------------------------------
void ButtonDetectionsCallBack(const campusrover_msgs::ButtonPoses &detections)
{
  static campusrover_msgs::ElevatorControlStatus status;
  static int deactivate_count = 0;
  static bool button_deactivate = false;
  bool button_activate_check = false, get_button = false;
  if (control_status_ != status.MOVE_TO_OUTSIDE_STANDBY_POSITION && control_status_ != status.WAIT_FOR_OUTSIDE_DOOR_OPEN)
    return;
  
  if (detections.button_poses.size() == 0)
    return;
  
  for (auto button : detections.button_poses)
  {
    if (button.label.substr(0,1) == "B")
    {
      button.label = "-" + button.label.substr(1);
    }
    if (button.label == TargetButtonName)
    {
      button_activate_check = (button.activation > 0.5);
      get_button = true;
      break;
    }
    else
    {
      continue;
    }
  }
  if(!get_button)
    return;

  if (!button_activate_check)
  {
    deactivate_count++;
    if (deactivate_count>2)
    {
      if(!button_deactivate)
      {
        button_deactivate = true;
        button_stamp = ros::Time::now().toSec();
      }
      button_activate = button_activate_check;
      deactivate_count = 0;
    }
    return;
  }
  else
  {
    button_deactivate = false;
    button_stamp = -1;
    button_activate = button_activate_check;
    deactivate_count = 0;
  }
}
//-----------------------------------------------------------------------------------------------
void DoorStatusCallback(const campusrover_msgs::DoorStatusConstPtr &door_status )
{
  static campusrover_msgs::ElevatorControlStatus status;
  static bool first_time = true,door0_open,door1_open;

  if (control_status_ < status.WAIT_FOR_OUTSIDE_DOOR_OPEN)
  {
    door0_open = false;
    door1_open = false;
    door_open_stamp .clear();
  } 
  else if (control_status_ == status.WAIT_FOR_OUTSIDE_DOOR_OPEN)
  {
    if(first_time)
    {
      for (int i = 0; i < door_status->doors_pose.poses.size(); i++)
      {
          doors_status_.push_back(door_status->doors_status.at(i).data.substr(1));// 0open/1open => open
          door_open_stamp.push_back(0);
      }
      first_time=false;
    }

    if(door_status->doors_pose.poses.size()>1)
    {
      for (int i = 0; i < door_status->doors_pose.poses.size(); i++)
      {
          doors_status_.at(stoi(door_status->doors_status.at(i).data.substr(0,1))) = door_status->doors_status.at(i).data.substr(1);// 0open/1open => open
      }

      if(doors_status_.at(0) == "open" || doors_status_.at(0) == "open_cant_enter")
      {
        if (!door0_open)
        {
          door0_open = true;
          door_open_stamp[0] =  ros::Time::now().toSec();
        }
        door_status_ = "open";
      }
      else if(doors_status_.at(0) == "close")
      {
        door0_open = false;
      }

      if (doors_status_.at(1) == "open" || doors_status_.at(1) == "open_cant_enter")
      {
        if (!door1_open)
        {
          door1_open = true;
          door_open_stamp[1] =  ros::Time::now().toSec();
        
        }
        door_status_ = "open";
      }
      else if(doors_status_.at(1) == "close")
      {
        door1_open = false;
      }

      if(doors_status_.at(0) == "close" && doors_status_.at(1) == "close")
      {
        door_status_ = "LET_ME_INNNNNNNNNNNN";
      }

      
    }
    
    
  }
  else if(control_status_ == status.ENTER_ELEVATOR_OUTSIDE ||
          control_status_ == status.WAIT_FOR_ELEVATOR_ARRIVE ||
          control_status_ == status.WAIT_FOR_INSIDE_DOOR_OPEN )
  {
    // if(first_time)
    // {
    //   for (int i = 0; i < door_status->doors_pose.poses.size(); i++)
    //   {
    //       doors_status_.push_back(door_status->doors_status.at(i).data.substr(1));// 0open/1open => open
    //   }
    //   first_time=false;
    // }

    if(door_status->doors_pose.poses.size()>1)
    {
      for (int i = 0; i < door_status->doors_pose.poses.size(); i++)
      {
          doors_status_.at(stoi(door_status->doors_status.at(i).data.substr(0,1))) = door_status->doors_status.at(i).data.substr(1);// 0open/1open => open
      }
    }
  }
  else if (control_status_ == status.STANDBY)
  {
    door_status_ = "close";
    doors_status_.clear();
    first_time=true;
  }

}
//-----------------------------------------------------------------------------------------------
void FloorStatusCallback(const campusrover_msgs::FloorStatusConstPtr &floor_status )
{
  current_floor_ = floor_status->current_floor;

  if(target_floor_ ==  current_floor_)
  {
    arrive_target_floor_ = true;
  }
  else
  {
    arrive_target_floor_ = false;
  }
  
}
//-----------------------------------------------------------------------------------------------
void ElevatorPoseCallback(const campusrover_msgs::ElevatorPoseArray &Poses)
{
  static bool first_time = true;
  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tfListener(tfBuffer);
  static geometry_msgs::PoseStamped before_pose;
  static geometry_msgs::PoseStamped base_pose;
  // static std::vector<geometry_msgs::PoseStamped> poses;
  std::vector<int> tmp;

  if(elevator_pose_reset == true)
  {
    elevator_pose_.poses.clear();
    elevator_yaw_.clear();
    elevator_pose_reset = false;
    first_time = true;
  }
  if (Poses.poses.size() == 0)
      return;
  elevator_pose_.header= Poses.header;
  if (first_time && start_elevator_id != "e-1" && Poses.poses.size()>1)
  {
    for (auto poses_ : Poses.poses)
    {
     elevator_pose_.poses.push_back(poses_.pose);
     elevator_yaw_.push_back(0);
    }
    first_time = false;
  }
  else if (start_elevator_id == "e-1" && control_status_ == campusrover_msgs::ElevatorControlStatus::STANDBY)
  {
    elevator_yaw_.clear();
    elevator_pose_.poses.clear();
    first_time = true;
  }

  if(first_time == false)
  {
    for (auto poses_ : Poses.poses)
    {
      if(poses_.id == 0 || poses_.id == 1)
      {
        elevator_pose_.poses.at(poses_.id) = poses_.pose;
        tf::Quaternion q(elevator_pose_.poses.at(poses_.id).orientation.x,
                        elevator_pose_.poses.at(poses_.id).orientation.y,
                        elevator_pose_.poses.at(poses_.id).orientation.z,
                        elevator_pose_.poses.at(poses_.id).orientation.w);
        double _roll, _pitch, _yaw;
        tf::Matrix3x3 m(q);
        m.getRPY(_roll, _pitch, _yaw);
        
        elevator_yaw_.at(poses_.id) = _yaw;
      }
    }
  }
  // cout << elevator_yaw_.size() << "\t" << elevator_pose_.poses.size() << endl;

}
//-----------------------------------------------------------------------------------------------
void MpcFinishCallback(const std_msgs::Bool &flag)
{
  mpc_arrive_ckeck_done_ = flag.data;
  bubble_mpc_start = true;
}
//-----------------------------------------------------------------------------------------------
void TablePoseCallback(const campusrover_msgs::ArmTablePoseStatus &pose)
{
  if (pose.table_status == 2 && table_position_ckeck_done_ == false)
    table_position_ckeck_done_ = true;
}
//-----------------------------------------------------------------------------------------------
void InitFloorCallService(ros::ServiceClient &client,campusrover_msgs::InitFloor &srv)
{
  cout << "===========init floor============= " << endl;
  cout << "Request massage: \n" << srv.request;
  while (!client.call(srv))
  {
    ROS_ERROR("init floor : Failed to call service");
    ros::Duration(1.0).sleep();
  }
}
//-----------------------------------------------------------------------------------------------
void PressButtonCallService(ros::ServiceClient &client,campusrover_msgs::PressButton &srv)
{
  cout << "===========press button============= " << endl;
  cout << "Request massage: \n" << srv.request;
  while (!client.call(srv))
  {
    ROS_ERROR("press button : Failed to call service");
    ros::Duration(1.0).sleep();
  }
}
//-----------------------------------------------------------------------------------------------
void ArmPositionFunctionCallService(ros::ServiceClient &client,campusrover_msgs::ArmTablePosition &srv)
{
  cout << "===========arm_position function============= " << endl;
  cout << "Request massage: \n" << srv.request;
  while (!client.call(srv))
  {
    ROS_ERROR("arm_position function : Failed to call service");
    ros::Duration(1.0).sleep();
  }
}
//-----------------------------------------------------------------------------------------------
void ArmHomeReturnFunctionCallService(ros::ServiceClient &client,campusrover_msgs::ArmTableHomeReturn &srv)
{
  cout << "===========arm_home_return function============= " << endl;
  cout << "Request massage: \n" << srv.request;
  while (!client.call(srv))
  {
    ROS_ERROR("arm_home_return function : Failed to call service");
    ros::Duration(1.0).sleep();
  }
}
//-----------------------------------------------------------------------------------------------
void EnableBubbleMpcCallService(ros::ServiceClient &client, campusrover_msgs::BubbleMPC &srv)
{
  cout << "===========mpc_enable function============= " << endl;
  cout << "Request massage: \n" << srv.request;
  while (!client.call(srv))
  {
    ROS_ERROR("Enable Bubble MPC : Failed to call service");
    ros::Duration(1.0).sleep();
  }
}
//-----------------------------------------------------------------------------------------------
void InfoReaderCallService(ros::ServiceClient &client,campusrover_msgs::ElevatorInfoReader &srv)
{
  cout << "===========elevator info reader============= " << endl;
  cout << "Request massage: \n" << srv.request;
  while (!client.call(srv))
  {
    ROS_ERROR("init floor : Failed to call service");
    ros::Duration(1.0).sleep();
  }
  elevators_info = srv.response.elevator_infos;
}
//-----------------------------------------------------------------------------------------------
bool ControlServiceCallback(campusrover_msgs::ElevatorControlInterface::Request &req, campusrover_msgs::ElevatorControlInterface::Response &res)
{
  static campusrover_msgs::ElevatorInfoReader elevator_info_reader;
  
  enable_multi_ = req.enable_multi;
  start_elevator_id = req.elevator_id;
  elevator_info_reader.request.building = req.building;
  init_floor_ = req.init_floor;
  target_floor_ = req.target_floor;
  InfoReaderCallService(elevator_info_reader_cliend_,elevator_info_reader);

  if(init_floor_ != target_floor_)
  {
    if(enable_multi_)
    {
      cout << "  recrvie multi elevator control command : " << endl;
    }
    else
    {
      cout << "  recrvie single elevator control command : " << endl;
      cout << "  standing at : " << start_elevator_id << endl;
      elevator_id = std::stoi(start_elevator_id.substr(1)); // initial elevator id
    }
    cout << "  init floor : " <<init_floor_<< endl;
    cout << "  target floor : " <<target_floor_<< endl;
    control_status_ = campusrover_msgs::ElevatorControlStatus::MOVE_TO_OUTSIDE_BUTTON;
    control_status_first_time_ = true;
  }
  else
  {
    ROS_WARN("recrvie elevator floor but init floor & target floor should not the same ");
    //cout << "recrvie elevator floor but init floor & target floor should not same : " << endl;
    cout << "  init floor : " <<init_floor_<< endl;
    cout << "  target floor : " <<target_floor_<< endl;
  }

  
  return true;

}
//-----------------------------------------------------------------------------------------------
void EnableButtonTrackingCallService(ros::ServiceClient &client, campusrover_msgs::ButtonTracking &srv)
{
  while (!client.call(srv))
  {
    ROS_ERROR("[Elevator State Controller] Enable Button Tracking : Failed to call service");
    ros::Duration(1.0).sleep();
  }
}
//-----------------------------------------------------------------------------------------------
bool StatusCheckServiceCallback(campusrover_msgs::ElevatorStatusChecker::Request  &req, campusrover_msgs::ElevatorStatusChecker::Response &res)
{
  cout << "  ==============" << endl;
  cout << "  node_name : " <<req.node_name.data<< endl; 
  cout << "  data : " <<to_string(req.status.data)<< endl;
  if(req.node_name.data == "arm")
  {
    arm_return_status_ = req.status.data;
    arm_return_checker_ = true;
    return true;
  }
  else if(req.node_name.data == "position_finder")
  {
    elevator_pose_ckeck_done_ = req.status.data;
    return true;
  }
  else if(req.node_name.data == "ArmTableHomeReturn")
  {
    table_home_return_ckeck_done_ = req.status.data;
    return true;
  }
  else if(req.node_name.data == "ArmTablePosition")
  {
    table_position_ckeck_done_ = req.status.data;
    return true;
  }
  else
  {
    return false;
  }
}
//--------------------------------------------------------------------
void UpdateCampusRoverPoseFromTF()
{
  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tfListener(tfBuffer);
  static geometry_msgs::TransformStamped transformStamped;

  try
  {
    transformStamped = tfBuffer.lookupTransform("odom", "base_link", ros::Time::now(), ros::Duration(2));
  }
  catch (tf2::TransformException &ex)
  {
    ROS_WARN(" %s. Can't update pose from TF, for that will be use the latest source point.", ex.what());
  }

  robot_tf_pose_.position.x = transformStamped.transform.translation.x;
  robot_tf_pose_.position.y = transformStamped.transform.translation.y;
  robot_tf_pose_.position.z = transformStamped.transform.translation.z;
  robot_tf_pose_.orientation.x = transformStamped.transform.rotation.x;
  robot_tf_pose_.orientation.y = transformStamped.transform.rotation.y;
  robot_tf_pose_.orientation.z = transformStamped.transform.rotation.z;
  robot_tf_pose_.orientation.w = transformStamped.transform.rotation.w;

  // std::cout << "x : " << robot_tf_pose_.position.x<< " y : "<< robot_tf_pose_.position.y<<'\n';
  
}
//-----------------------------------------------------------------------------------------------
void PanelPoseCallback(const geometry_msgs::PoseStamped &panel_pose_msg)
{
  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tfListener(tfBuffer);
  static geometry_msgs::PoseStamped before_pose;
  static geometry_msgs::PoseStamped odom_pose;
  double roll, pitch, yaw;

  if(panel_pose_reset == true)
  {
    static geometry_msgs::PoseStamped empty_pose;
    panel_pose=empty_pose;
    panel_yaw_ = 0;
    panel_pose_reset = false;
  }

  before_pose = panel_pose_msg;
  if(before_pose.header.frame_id != "odom")
  {
    try
    {
      tfBuffer.transform(before_pose, odom_pose, "odom");
    }
    catch (tf2::TransformException &ex)
    {
      ROS_WARN("position finder line base : %s",ex.what());
      ros::Duration(0.5).sleep();
      return;
    }
  }
  else
  {
    odom_pose.header.frame_id = before_pose.header.frame_id;
    odom_pose.pose = before_pose.pose;
  }

  panel_pose=odom_pose;

  tf::Quaternion q(panel_pose.pose.orientation.x,
                   panel_pose.pose.orientation.y,
                   panel_pose.pose.orientation.z,
                   panel_pose.pose.orientation.w);

  double _roll, _pitch, _yaw;
  tf::Matrix3x3 m(q);
  m.getRPY(_roll, _pitch, _yaw);
  
  panel_yaw_ = _yaw;
}
//-----------------------------------------------------------------------------------------------
int main(int argc, char **argv)
{
  ros::init(argc, argv, "elevator_status_controller");
  ros::NodeHandle nh;
  ros::NodeHandle nh_private("~");
  get_parameters(nh_private);
  ros::Time::init();

  can_press_sub_ = nh.subscribe("can_press", 10, CanPressCallback);
  elevator_caller_sub_ = nh.subscribe("elevator_caller_mode", 10, ElevatorCallerCallback);
  door_status_sub_ = nh.subscribe("doors_status", 10, DoorStatusCallback);
  floor_status_sub_ = nh.subscribe("floor_status", 10, FloorStatusCallback);
  elevator_pose_sub_ = nh.subscribe("elevator_poses", 10, ElevatorPoseCallback);
  table_pose_sub_ = nh.subscribe("table_pose", 10, TablePoseCallback);
  mpc_finish_sub_ = nh.subscribe("mpc_finish", 10, MpcFinishCallback);
  panel_pose_sub_ = nh.subscribe("panel_est", 10, PanelPoseCallback);
  button_detection_sub_ = nh.subscribe("recognized_button_poses", 1, ButtonDetectionsCallBack);

  control_status_pub_ = nh.advertise<campusrover_msgs::ElevatorControlStatus>("control_status", 50);
  finish_pub_ = nh.advertise<std_msgs::String>("elevator_completed", 50,true);
  hmi_pub_ = nh.advertise<campusrover_msgs::HmiStatus>("hmi_status", 50);
  status_timer_pub_ = nh.advertise<std_msgs::Header>("status_timer", 10);
  mpc_goal_pub_ = nh.advertise<nav_msgs::Path>("/mpc_goal", 1);
  mpc_estimate_pub_ = nh.advertise<geometry_msgs::PoseArray>("/mpc_est_goal", 1);
  elevator_caller_pub_ = nh.advertise<std_msgs::Int16>("/mode_over", 1);
  panel_enable_pub_ = nh.advertise<std_msgs::Bool>("/panel_enable", 1);

  init_floor_srv_client_ = nh.serviceClient<campusrover_msgs::InitFloor>("init_floor");
  button_srv_client_ = nh.serviceClient<campusrover_msgs::PressButton>("target_button");
  arm_table_home_return_srv_client_ = nh.serviceClient<campusrover_msgs::ArmTableHomeReturn>("zero_return");
  arm_table_position_srv_client_ = nh.serviceClient<campusrover_msgs::ArmTablePosition>("table_position");
  elevator_info_reader_cliend_ =  nh.serviceClient<campusrover_msgs::ElevatorInfoReader>("elevator_info_reader");
  EnableButtonTrackingClient = nh.serviceClient<campusrover_msgs::ButtonTracking>("/enable_button_tracking");
  mpc_enable_client_ = nh.serviceClient<campusrover_msgs::BubbleMPC>("/enable_mpc");

  ros::ServiceServer control_service = nh.advertiseService("elevator_controller", ControlServiceCallback);
  ros::ServiceServer status_check_service = nh.advertiseService("elevator_status_checker", StatusCheckServiceCallback);

  ros::Timer timer = nh.createTimer(ros::Duration(0.05), TimerCallback);


  ros::spin();

  return 0;
}

// uint16 control_status
// uint16 STANDBY = 0
// uint16 MOVE_TO_OUTSIDE_BUTTON = 1
// uint16 PRESS_OUTSIDE_BUTTON = 2
// uint16 MOVE_TO_OUTSIDE_STANDBY_POSITION = 3
// uint16 WAIT_FOR_OUTSIDE_DOOR_OPEN = 4
// uint16 ENTER_ELEVATOR_OUTSIDE = 5
// float32 ENTER_ELEVATOR_INSIDE_NO_ROTATE = 6.1
// float32 MOVE_TO_INSIDE_BUTTON_NO_ROTATE = 7.1
// float32 PRESS_INSIDE_BUTTON_NO_ROTATE = 8.1
// float32 ENTER_ELEVATOR_INSIDE_ROTATE = 6.2
// float32 MOVE_TO_INSIDE_BUTTON_ROTATE = 7.2
// float32 PRESS_INSIDE_BUTTON_ROTATE = 8.2
// uint16 MOVE_TO_INSIDE_STANDBY_POSITION = 9
// uint16 WAIT_FOR_ELEVATOR_ARRIVE = 10
// uint16 WAIT_FOR_INSIDE_DOOR_OPEN = 11
// uint16 LEAVE_ELEVATOR_INSIDE = 12
// uint16 LEAVE_ELEVATOR_OUTSIDE = 13
// uint16 elevator_id