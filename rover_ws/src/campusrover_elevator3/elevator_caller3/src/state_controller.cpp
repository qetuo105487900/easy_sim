#include <elevator_caller3/state_controller.hpp>
#include <tf/transform_broadcaster.h>

state_controller::state_controller(ros::NodeHandle &nh)
{
  double panel_dis;
  nh.param<std::string>("transform_frame_id", TransformFrameId, "odom");
  nh.param<double>("panel_dis", panel_dis, 0.80);

  PanelParkDis = panel_dis + 0.25;

  NameTargetModePub = nh.advertise<std_msgs::Int16>("/name_target_mode", 1);
  button_camera_pose_c_pub = nh.advertise<geometry_msgs::PoseStamped>("/button_camera_c_pose", 10);
  button_camera_pose_r_pub = nh.advertise<geometry_msgs::PoseStamped>("/button_camera_r_pose", 10);

  ModePub = nh.advertise<std_msgs::Int16>("/elevator_caller_mode", 1);
  MpcGoalPub = nh.advertise<nav_msgs::Path>("/mpc_goal", 1);
  VisualServoPub = nh.advertise<geometry_msgs::PoseStamped>("/vs_goal", 1);
  MpcResetPub = nh.advertise<std_msgs::Bool>("/reset_mpc", 1);

  PanelEstimatePub = nh.advertise<geometry_msgs::PoseStamped>("/panel_est", 1);
  MpcEstimatePub = nh.advertise<geometry_msgs::PoseArray>("/mpc_est_goal", 1);
  VsEstimatePub = nh.advertise<geometry_msgs::PoseStamped>("/vs_est_goal", 1);
  enter_mode_pub = nh.advertise<std_msgs::Int16>("/enter_mode", 1);
  StringPub = nh.advertise<std_msgs::String>("/elevator_caller_string", 1);
  joint3_command_pub = nh.advertise<std_msgs::Float64>("/joint_3/command", 1);
  NavCmdPub = nh.advertise<geometry_msgs::Twist>("/input/nav_cmd_vel", 50);  

  elevator_step_pub_ = nh.advertise<campusrover_msgs::ElevatorControlStatus>("/elevator_step", 50);
  Camera2ButtonPub = nh.advertise<geometry_msgs::PoseStamped>("/camera2button", 10);

  EnableButtonRecognizeClient = nh.serviceClient<campusrover_msgs::ButtonRecognize>("/enable_button_recognize");
  EnableButtonTrackingClient = nh.serviceClient<campusrover_msgs::ButtonTracking>("/enable_button_tracking");

  EnableMpcClient = nh.serviceClient<campusrover_msgs::BubbleMPC>("/enable_mpc");
  EnableVisualServoClient = nh.serviceClient<std_srvs::SetBool>("/enable_vs");
  
  Call_CallNameTargetClient = nh.serviceClient<campusrover_msgs::poseture_srv>("/call_name_target");
  Call_CallPressButtonClient = nh.serviceClient<campusrover_msgs::position_srv>("/call_press_button");

  arm_table_position_srv_client_ = nh.serviceClient<campusrover_msgs::ArmTablePosition>("/table_position");

  mode = STANDBY;
  ROS_INFO("[State Controller] Set Mode: %s", std::to_string(mode).c_str());
}

state_controller::~state_controller()
{
}

void state_controller::ButtonDetectionsCB(const campusrover_msgs::ButtonPoses &detections)
{
  if (mode == STANDBY || mode == MOVESTANDBY || mode == FINISH)
  {
    return;
  }

  if (detections.button_poses.size() == 0)
  {
    return;
  }
  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tfListener(tfBuffer);
  geometry_msgs::TransformStamped transform_to_camera,transform_to_odom,robot_to_odom, camera_coordinate_to_robot_coordinate, d435i_to_camera_link;
  static int activate_count = 0;
  geometry_msgs::PoseStamped button_camera_pose, camera_coordinate_pose_2_robot_coordinate_pose, camera_link_to_button;

  bool get_button = false, button_activate = false;
  static bool vs_flag, vs_r_flag, vs_l_flag;
  TargetButtonPose.header.frame_id = detections.header.frame_id;
  TargetButtonPose.header.stamp = detections.header.stamp;
  for (auto button : detections.button_poses)
  {
    if (button.label.substr(0,1) == "B")
    {
      button.label = "-" + button.label.substr(1);
    }
    if (button.label == TargetButtonName)
    {
      // ROS_INFO("[State Controller] Button Detections: Found %s", TargetButtonName.c_str());
      TargetButtonPose.pose = button.pose;
      button_activate = (button.activation > 0.5);
      get_button = true;
      break;
    }
    else
    {
      continue;
    }
  }

  if (!get_button || ArmActing)
  {
    return;
  }

  if (button_activate)
  {
    ROS_INFO("[State Controller] if (button_activate) ");
    activate_count++;
    if (activate_count>1)
    {
      if(TargetButtonName == "(" || TargetButtonName == ")")
      {
        ROS_INFO("[State Controller] EnableButtonTrackingCallService ");
        campusrover_msgs::ButtonTracking btn_rocg;
        btn_rocg.request.enable = true;
        btn_rocg.request.button_name = TargetButtonName;
        EnableButtonTrackingCallService(EnableButtonTrackingClient, btn_rocg);
      }
      else
      {
        ROS_INFO("[State Controller] EnableButtonRecognizeCallService ");
        campusrover_msgs::ButtonRecognize btn_rocg;
        btn_rocg.request.enable = false;
        EnableButtonRecognizeCallService(EnableButtonRecognizeClient, btn_rocg);
      }
      std_msgs::Int16 name_target_mode;
      name_target_mode.data = 1;  
      NameTargetModePub.publish(name_target_mode);
      mode = FINISH;
      ROS_INFO("[State Controller] Set Mode: %s", std::to_string(mode).c_str());
      activate_count = 0;
    }
    return;
  }

  if (TargetButtonPose.header.frame_id != "rs_d435i_color_optical_frame")
  {
    try
    {
      //transform_matrix= tfBuffer.lookupTransform("out", "in", ros::Time::now(), ros::Duration(1.0) );
      transform_to_camera = tfBuffer.lookupTransform("rs_d435i_color_optical_frame", TargetButtonPose.header.frame_id, ros::Time(0), ros::Duration(2.0) );
      tf2::doTransform(TargetButtonPose, button_camera_pose, transform_to_camera);
      // tf2::doTransform(in, out, transform_matrix);
    }
    catch (tf2::TransformException &ex)
    {
      ROS_WARN("[State Controller] Button Detections transform : %s", ex.what());
      ros::Duration(0.1).sleep();
      return;
    }
  }
  else
  {
    button_camera_pose = TargetButtonPose;
  }



  if (button_camera_pose.pose.position.z > VisualServoActDis)
  {
    return;
  }

  // std_msgs::String elevator_caller_msg;
  // elevator_caller_msg.data = door_status_;
  // StringPub.publish(elevator_caller_msg);

  if (mode == VS && !vs_flag)
  {
    ROS_INFO("[State Controller] mode = VS, call press_c");
    std_msgs::Int16 name_target_mode;
    name_target_mode.data = 1;  
    NameTargetModePub.publish(name_target_mode);
    SetVisualServoTargetPose(button_camera_pose);
    vs_flag = true ;
  }
  else if (mode == VS && vs_flag)
  {
    ROS_INFO("[State Controller] mode = VS");
    SetVisualServoTargetPose(button_camera_pose);    
  }
  else if (mode == VS_R && !vs_r_flag)
  {
    ROS_INFO("[State Controller] mode = VS_R, call press_r");
    std_msgs::Int16 name_target_mode;    
    name_target_mode.data = 2;  
    NameTargetModePub.publish(name_target_mode);
    SetVisualServoTargetPose(button_camera_pose);  
    vs_r_flag = true ;  
  }
  else if (mode == VS_R && vs_r_flag)
  {
    ROS_INFO("[State Controller] mode = VS_R");
    SetVisualServoTargetPose(button_camera_pose);    
  }
  else if (mode == VS_L && vs_l_flag)
  {
    ROS_INFO("[State Controller] mode = VS_L, call press_l");
    std_msgs::Int16 name_target_mode;    
    name_target_mode.data = 3;  
    NameTargetModePub.publish(name_target_mode);
    SetVisualServoTargetPose(button_camera_pose);
    vs_l_flag = true ;  
  }  
  else if (mode == VS_L && !vs_l_flag)
  {
    ROS_INFO("[State Controller] mode = VS_L");
    SetVisualServoTargetPose(button_camera_pose);    
  }

  static int arm_press_count=0;
  if((door_status_ == "close" && (TargetButtonName == "(" || TargetButtonName == ")")) || (TargetButtonName!="(" && TargetButtonName!=")"))
  {
    if(arm_press_count <= 2)
      arm_press_count += 1;
  }
  else
  {
    arm_press_count=0;
  }

  if (( (mode == VS || mode == VS_R || mode == VS_L) || (mode == ARM || mode == ARM_R || mode == ARM_L) || (mode == ADJUST_Z || mode == ADJUST_Y) ) && arm_press_count > 2 && button_camera_pose.pose.position.z<=0.35)
  {
    campusrover_msgs::ArmTablePosition table_position_msg;
    if ((mode == VS || mode == VS_R || mode == VS_L) || (mode == ARM || mode == ARM_R || mode == ARM_L))
    {
      ROS_INFO("[State Controller] enter_mode");
      enter_mode.data = mode ;
      enter_mode_pub.publish(enter_mode);
    }
    
    try
    {
      camera_coordinate_to_robot_coordinate = tfBuffer.lookupTransform("rs_d435i_color_frame", "rs_d435i_color_optical_frame", ros::Time(0), ros::Duration(2.0) );
      tf2::doTransform(button_camera_pose, camera_coordinate_pose_2_robot_coordinate_pose, camera_coordinate_to_robot_coordinate);
    }
    catch (tf2::TransformException &ex)
    {
      ROS_WARN("[State Controller] camera_coordinate_pose_2_robot_coordinate_pose transform : %s", ex.what());
      ros::Duration(0.1).sleep();
      return;
    }

    button_camera_pose_c_pub.publish(button_camera_pose);
    button_camera_pose_r_pub.publish(camera_coordinate_pose_2_robot_coordinate_pose);

    static tf::TransformBroadcaster br;
    static tf::Transform transform_for_br;
    static tf::Quaternion quaternion_for_br;

    quaternion_for_br.setRPY(0, 0, 0);
    transform_for_br.setOrigin(tf::Vector3(-0.01025, -0.0175, -0.0125));  
    transform_for_br.setRotation(quaternion_for_br);
    br.sendTransform(tf::StampedTransform(transform_for_br, ros::Time::now(), "rs_d435i_color_frame", "correct_link_camera"));

    try
    {
      d435i_to_camera_link = tfBuffer.lookupTransform("correct_link_camera", "rs_d435i_color_frame", ros::Time(0), ros::Duration(2.0));
      tf2::doTransform(camera_coordinate_pose_2_robot_coordinate_pose, camera_link_to_button, d435i_to_camera_link);
    }
    catch (tf2::TransformException &ex)
    {
      ROS_WARN("[State Controller] d435i_to_camera_link transform : %s", ex.what());
      ros::Duration(0.1).sleep();
      return;
    }

    if (enter_mode.data == VS && mode == ADJUST_Y)
    {
      if (camera_coordinate_pose_2_robot_coordinate_pose.pose.position.y <= 0 && table_position.y > 0.01)
      {
        table_position_msg.request.position.x = table_position.x  ;
        table_position_msg.request.position.y = table_position.y - 0.01 ;
        table_position_msg.request.position.z = table_position.z  ;
        YZTablePositionCallService(arm_table_position_srv_client_,table_position_msg);
      }
      else if (camera_coordinate_pose_2_robot_coordinate_pose.pose.position.y > 0 && table_position.y < 0.31)
      {
        table_position_msg.request.position.x = table_position.x  ;
        table_position_msg.request.position.y = table_position.y + 0.01 ;
        table_position_msg.request.position.z = table_position.z  ;
        YZTablePositionCallService(arm_table_position_srv_client_,table_position_msg);
      }
      else if (camera_coordinate_pose_2_robot_coordinate_pose.pose.position.y <= 0 && table_position.y <= 0.01)
      {
        table_position_msg.request.position.x = table_position.x  ;
        table_position_msg.request.position.y = table_position.y + 0.01 ;
        table_position_msg.request.position.z = table_position.z  ;
        YZTablePositionCallService(arm_table_position_srv_client_,table_position_msg);
      }
      else if (camera_coordinate_pose_2_robot_coordinate_pose.pose.position.y > 0 && table_position.y >= 0.31)
      {
        table_position_msg.request.position.x = table_position.x  ;
        table_position_msg.request.position.y = table_position.y - 0.01 ;
        table_position_msg.request.position.z = table_position.z  ;
        YZTablePositionCallService(arm_table_position_srv_client_,table_position_msg);
      }
    }
    else if (enter_mode.data == VS_R && mode == ADJUST_Y)
    {
      geometry_msgs::Twist base_vel;
      if (camera_coordinate_pose_2_robot_coordinate_pose.pose.position.y <= 0 && adjust_y_flag == false)
      {
        base_vel.linear.x = -0.01;
        NavCmdPub.publish(base_vel);
        adjust_y_flag = true ;
      }
      else if (camera_coordinate_pose_2_robot_coordinate_pose.pose.position.y > 0 && adjust_y_flag == false)
      {
        base_vel.linear.x = 0.01;
        NavCmdPub.publish(base_vel);
        adjust_y_flag = true ;
      }
    }
    else if (enter_mode.data == VS_L && mode == ADJUST_Y)
    {
      geometry_msgs::Twist base_vel;
      if (camera_coordinate_pose_2_robot_coordinate_pose.pose.position.y <= 0 && adjust_y_flag == false)
      {
        base_vel.linear.x = 0.01;
        NavCmdPub.publish(base_vel);
        adjust_y_flag = true ;
      }
      else if (camera_coordinate_pose_2_robot_coordinate_pose.pose.position.y > 0 && adjust_y_flag == false)
      {
        base_vel.linear.x = -0.01;
        NavCmdPub.publish(base_vel);
        adjust_y_flag = true ;
      }
    }

    tf::Quaternion q(camera_link_to_button.pose.orientation.x, camera_link_to_button.pose.orientation.y, camera_link_to_button.pose.orientation.z, camera_link_to_button.pose.orientation.w);
    // 转换为矩阵，以便计算欧拉角
    tf::Matrix3x3 m(q);
    double roll_c2b, pitch_c2b, yaw_c2b;
    m.getRPY(roll_c2b, pitch_c2b, yaw_c2b);

    if ( std::abs(yaw_c2b*M_PI/180) <= 10 && std::abs(yaw_c2b*M_PI/180) >= 0.1)
    { 
      std_msgs::Float64 joint3_angle;
      joint3_angle.data = current_joint3_pos + yaw_c2b ;
      joint3_command_pub.publish(joint3_angle);
    }


    if ((mode == VS_R || mode == VS_L) && camera_coordinate_pose_2_robot_coordinate_pose.pose.position.x > 0.35 )
    {
      campusrover_msgs::ElevatorControlStatus status;
      status.control_status = status.ENTER_ELEVATOR_INSIDE ;
      elevator_step_pub_.publish(status);
      ROS_INFO("[State Controller] Change status to ENTER_ELEVATOR_INSIDE ");
    }

    if ( (input_cmd_vel.linear.x <= 0.05 || camera_coordinate_pose_2_robot_coordinate_pose.pose.position.x <= 0.3 ) && (mode == VS || mode == VS_R || mode == VS_L) )
    {
      mode = ADJUST_Z;
      ROS_INFO("[State Controller] Set Mode: From VS to %s", std::to_string(mode).c_str());
      Camera2ButtonPub.publish(camera_link_to_button);
      arm_press_count=0;
    }
    else if ( (mode == ADJUST_Z || mode == ADJUST_Y) || (mode == ARM || mode == ARM_R || mode == ARM_L) )
    {
      static int count_y;
      if (mode == ADJUST_Y)
      {
        count_y++;
      }
      if (count_y >= 5)
      {
        geometry_msgs::Twist base_vel;
        base_vel.linear.x = -0.05;
        NavCmdPub.publish(base_vel);
        mode = enter_mode.data ;
        count_y = 0 ;
      }
      ROS_INFO("[State Controller] Set Mode: %s", std::to_string(mode).c_str());  
      Camera2ButtonPub.publish(camera_link_to_button);
      arm_press_count=0;
    }
  }

  else if ( (mode != VS || mode != VS_R || mode != VS_L || mode != ADJUST_Z || mode != ADJUST_Y) && (mode != ARM || mode != ARM_R || mode != ARM_L) )
  {
    try
    {
      robot_to_odom = tfBuffer.lookupTransform("odom", "base_link", ros::Time::now(), ros::Duration(2));
    }
    catch (tf2::TransformException &ex)
    {
      ROS_WARN(" %s. Can't update pose from TF, for that will be use the latest source point.", ex.what());
    }
    tf::Quaternion robot_odom_pose(robot_to_odom.transform.rotation.x,
                                robot_to_odom.transform.rotation.y,
                                robot_to_odom.transform.rotation.z,
                                robot_to_odom.transform.rotation.w);
    double robot_odom = tf::getYaw(robot_odom_pose);
    tf::Quaternion goal_odom_pose(MpcGoal.pose.orientation.x,
                                    MpcGoal.pose.orientation.y,
                                    MpcGoal.pose.orientation.z,
                                    MpcGoal.pose.orientation.w);
    double goal_odom = tf::getYaw(goal_odom_pose);
    ROS_INFO("Yaw robot_odom: %f", robot_odom);
    ROS_INFO("Yaw goal_odom: %f", goal_odom);

    if(((TargetButtonName == "(" || TargetButtonName == ")") && std::abs(tf::getYaw(robot_odom_pose) - tf::getYaw(goal_odom_pose)) < 0.1) || (TargetButtonName!="(" && TargetButtonName!=")"))
    {
      if (mode == PANEL_MPCVS || mode == WAIT_PRESS_NUMBER)
      {
        vs_flag = false ;
        mode = VS;
        ROS_INFO("[State Controller] Set Mode: %s", std::to_string(mode).c_str());
      }
      else if (mode == WAIT_PRESS_NUMBER_R)
      {
        vs_r_flag = false ;
        mode = VS_R;
        ROS_INFO("[State Controller] Set Mode: %s", std::to_string(mode).c_str());
      }
      else if (mode == WAIT_PRESS_NUMBER_L)
      {
        vs_l_flag = false ;
        mode = VS_L;
        ROS_INFO("[State Controller] Set Mode: %s", std::to_string(mode).c_str());
      }      
    }
  } 

  activate_count = 0;
}

void state_controller::PanelPosesCB(const geometry_msgs::PoseArray &detections)
{

  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tfListener(tfBuffer);
  geometry_msgs::TransformStamped robot_to_odom, transform_to_odom;
  static bool first_time = true;

  if (mode == STANDBY || mode == BUTTON_MPCVS || (mode == VS || mode == VS_R || mode == VS_L) || mode == MOVESTANDBY || mode == FINISH)
  {
    first_time = true;
    return;
  }

  if (mode != PANEL_MPCVS && mode != SEARCHING)
  {
    return;
  }

  if (!PanelEnable)
  {
    return;
  }

  if (detections.poses.size() == 0 || Line_segments.line_segments.size() == 0)
    return;

  geometry_msgs::PoseArray poses;
  geometry_msgs::Pose pose;
  if(detections.header.frame_id != TransformFrameId)
  {
    for (auto pose : detections.poses)
    {
      geometry_msgs::PoseStamped panel_posestamped_before,panel_posestamped_odom;
      panel_posestamped_before.header = detections.header;
      panel_posestamped_before.pose = pose;
      
      try
      {
        transform_to_odom = tfBuffer.lookupTransform(TransformFrameId, panel_posestamped_before.header.frame_id, panel_posestamped_before.header.stamp, ros::Duration(1.0) );
        tf2::doTransform(panel_posestamped_before, panel_posestamped_odom, transform_to_odom);
      }
      catch (tf2::TransformException &ex)
      {
        ROS_WARN("[elevator caller] : panelposeCB tf error : %s",ex.what());
        ros::Duration(0.5).sleep();
        return;
      }
      geometry_msgs::Pose panel_pose_odom = panel_posestamped_odom.pose;
      poses.poses.push_back(panel_pose_odom);
    }
    poses.header.frame_id = TransformFrameId;
  }
  else
  {
    poses = detections;
  }
  
  if(!ChooseBestPanel(poses, pose))
    return;
  if(pose.orientation.z == 0 && pose.orientation.w == 0)
    return;

  double line_dis_to_panel=std::numeric_limits<double>::max();
  int line_index = -1;
  for(int i = 0; i < Line_segments.line_segments.size() ; i++)
  {
    double middle_x = (Line_segments.line_segments[i].start[0] + Line_segments.line_segments[i].end[0])/2 ; 
    double middle_y = (Line_segments.line_segments[i].start[1] + Line_segments.line_segments[i].end[1])/2 ;
    double dis = std::sqrt(std::pow(middle_x - pose.position.x, 2) + std::pow(middle_y - pose.position.y, 2));
    
    if(dis < line_dis_to_panel)
    {
      line_dis_to_panel = dis;
      line_index = i;
    }
  }

  PanelYaw = std::atan2(Line_segments.line_segments[line_index].end[1] - Line_segments.line_segments[line_index].start[1], Line_segments.line_segments[line_index].end[0] - Line_segments.line_segments[line_index].start[0])-M_PI_2;

  tf2::Quaternion myQuaternion;
  myQuaternion.setRPY( 0, 0, PanelYaw );

  pose.orientation = tf2::toMsg(myQuaternion);

  TargetPanelPose.header.stamp = detections.header.stamp;
  TargetPanelPose.header.frame_id = TransformFrameId;
  TargetPanelPose.pose = pose;
  PanelEstimatePub.publish(TargetPanelPose);
  
  try
  {
    robot_to_odom = tfBuffer.lookupTransform("odom", "base_link", ros::Time::now(), ros::Duration(2));
  }
  catch (tf2::TransformException &ex)
  {
    ROS_WARN(" %s. Can't update pose from TF, for that will be use the latest source point.", ex.what());
  }
  double dis_to_panel = std::sqrt(std::pow(robot_to_odom.transform.translation.x - TargetPanelPose.pose.position.x, 2) +
                                  std::pow(robot_to_odom.transform.translation.y - TargetPanelPose.pose.position.y, 2));

  static geometry_msgs::PoseStamped panel_pose;
  if(first_time)
  {
    panel_pose = TargetPanelPose;
  }
  else
  {
    if (std::sqrt(std::pow(panel_pose.pose.position.x - TargetPanelPose.pose.position.x, 2) +
                  std::pow(panel_pose.pose.position.y - TargetPanelPose.pose.position.y, 2))>0.5)
    {
      panel_pose = TargetPanelPose;
    }
  }
  
  geometry_msgs::PoseStamped panel_mpc_goal = panel_pose;

  panel_mpc_goal.pose.position.x = panel_mpc_goal.pose.position.x - PanelParkDis * std::cos(PanelYaw) - (-0.07)*std::sin(PanelYaw);;
  panel_mpc_goal.pose.position.y = panel_mpc_goal.pose.position.y - PanelParkDis * std::sin(PanelYaw) + (-0.07)*std::cos(PanelYaw);;

  if (mode == SEARCHING)
  {
    mode = PANEL_MPCVS;
    ROS_INFO("[State Controller] Set Mode: %s", std::to_string(mode).c_str());
  }

  SetVisualServoTargetPose(TargetPanelPose);
  if (first_time || dis_to_panel > 2) 
  {
    first_time = false;
    PanelEnable = false;//just one time
    SetMpcTargetPose(panel_mpc_goal);
  }

}

void state_controller::LineSegmentsCB(const laser_line_extraction::LineSegmentList &lines)
{  
  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tfListener(tfBuffer);
  laser_line_extraction::LineSegmentList lines_new;
  for(int i = 0; i<lines.line_segments.size();i++)
  {
    geometry_msgs::PointStamped line_point_start,line_point_end,line_point_start_odom,line_point_end_odom;
    line_point_start.header = lines.header;
    line_point_start.point.x = lines.line_segments[i].start[0];
    line_point_start.point.y = lines.line_segments[i].start[1];
    line_point_end.header = lines.header;
    line_point_end.point.x = lines.line_segments[i].end[0];
    line_point_end.point.y = lines.line_segments[i].end[1];
    if(lines.header.frame_id != TransformFrameId)
    {
      try
      {
        tfBuffer.transform<geometry_msgs::PointStamped>(line_point_start, line_point_start_odom, TransformFrameId, ros::Duration(1.0));
        tfBuffer.transform<geometry_msgs::PointStamped>(line_point_end, line_point_end_odom, TransformFrameId, ros::Duration(1.0));
      }
      catch (tf2::TransformException &ex) 
      {
        ROS_WARN("%s",ex.what());
        ros::Duration(1.0).sleep();
        return;
      }
    }
    else
    {
      line_point_start_odom.header.frame_id = line_point_start.header.frame_id;
      line_point_start_odom.point = line_point_start.point;
      line_point_end_odom.header.frame_id = line_point_end.header.frame_id;
      line_point_end_odom.point = line_point_end.point;
    }    
    laser_line_extraction::LineSegment line;
    line = lines.line_segments[i];
    line.start[0] = line_point_start_odom.point.x;
    line.start[1] = line_point_start_odom.point.y;
    line.end[0] = line_point_end_odom.point.x;
    line.end[1] = line_point_end_odom.point.y;
    lines_new.line_segments.push_back(line);
  }
  lines_new.header.stamp = lines.header.stamp;
  lines_new.header.frame_id = TransformFrameId;
  Line_segments = lines_new;

}
void state_controller::OdomCB(const nav_msgs::Odometry &odom)
{
  Odom = odom;
}

void state_controller::MpcFinishCB(const std_msgs::Bool &flag)
{
  MpcFinishFlag = flag.data;

  bubble_mpc_start = true;
}

void state_controller::ModeOverrideCB(const std_msgs::Int16 &modeover)
{
  mode = modeover.data;
}

void state_controller::ControlStateCB(const campusrover_msgs::ElevatorControlStatus &elevator_control_state )
{
  control_state = elevator_control_state.control_status;
}

void state_controller::DoorStatusCB(const campusrover_msgs::DoorStatus &doors_status )
{
  if (mode == STANDBY || mode == MOVESTANDBY || mode == FINISH)
  {
    return;
  }

  std::string door_status = "close";

  for (int i = 0; i < doors_status.doors_pose.poses.size(); i++)
  {
      if(doors_status.doors_status.at(i).data.substr(1) != "close")
        door_status=doors_status.doors_status.at(i).data.substr(1);// 0open/1open => open
  }
  door_status_ = door_status;
}
bool state_controller::ControllerService(campusrover_msgs::PressButton::Request &req, campusrover_msgs::PressButton::Response &res)
{
  campusrover_msgs::ButtonTracking btn_trac;
  btn_trac.request.enable = false;
  EnableButtonTrackingCallService(EnableButtonTrackingClient, btn_trac);
  
  campusrover_msgs::ButtonRecognize btn_rocg;
  btn_rocg.request.enable = true;
  EnableButtonRecognizeCallService(EnableButtonRecognizeClient, btn_rocg);
  ROS_INFO("[State Controller] Controller Service: Enabled Button Recognize");
  TargetButtonName = req.button_type.data;
  ROS_INFO("[State Controller] Controller Service: Target Button %s", req.button_type.data.c_str());

  ResetAvgPose = true;
  bubble_mpc_start = false;
  
  ArmActing = false;
  if(req.button_type.data == "(" || req.button_type.data == ")")
  {
    if (control_state <= 1 && control_state >= 0)
    {
      mode = SEARCHING;
      ROS_INFO("[State Controller] Set Mode: %s", std::to_string(mode).c_str());
    }
  }

  std_msgs::Int16 name_target_mode;
  name_target_mode.data = 1;  
  NameTargetModePub.publish(name_target_mode);

  return true;
}

void state_controller::SetVisualServoTargetPose(const geometry_msgs::PoseStamped &pose)
{
  VsEstimatePub.publish(pose);
  VisualServoGoal.header.frame_id = pose.header.frame_id;
  VisualServoGoal.header.stamp = pose.header.stamp;
  // VisualServoGoal.header.stamp = ros::Time::now();
  VisualServoGoal.pose = pose.pose;
}

void state_controller::SetMpcTargetPose(const geometry_msgs::PoseStamped &pose)
{
  static geometry_msgs::PoseStamped local_pose;
  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tfListener(tfBuffer);
  try
  {
    tfBuffer.transform(pose, local_pose, TransformFrameId);
  }
  catch (tf2::TransformException &ex)
  {
    ROS_WARN("[State Controller] Mpc Target transform: %s", ex.what());
    ros::Duration(1.0).sleep();
    return;
  }
  MpcGoal.header.frame_id = local_pose.header.frame_id;
  // MpcGoal.header.stamp = local_pose.header.stamp;
  MpcGoal.header.stamp = ros::Time::now();
  MpcGoal.pose = local_pose.pose;

  MpcGoalPath.header.frame_id = local_pose.header.frame_id;
  MpcGoalPath.header.stamp = ros::Time::now();
  MpcGoalPath.poses.clear();
  MpcGoalPath.poses.push_back(MpcGoal);

  MpcGoalPub.publish(MpcGoalPath);

  geometry_msgs::Pose goal_est_pose;
  geometry_msgs::PoseArray goal_est_posearray;
  goal_est_pose = local_pose.pose;
  goal_est_posearray.header = MpcGoalPath.header;
  goal_est_posearray.poses.clear();
  goal_est_posearray.poses.push_back(goal_est_pose);
  MpcEstimatePub.publish(goal_est_posearray);
}

void state_controller::PubTimerCallback(const ros::TimerEvent &event)
{
  // static int last_mode;
  static bool mpc_enable = false, vs_enable = false;
  std_msgs::Int16 mode_pub;
  MpcGoal.header.stamp = ros::Time::now();

  if (mode == STOP)
  {
    mpc_enable = false;
    vs_enable = false;
  }
  else if (mode == SEARCHING)
  {
    mpc_enable = false;
    vs_enable = false;
  }
  else if (mode == MPC)
  {
    // MpcGoalPub.publish(MpcGoal);
    mpc_enable = true;
    vs_enable = false;
  }
  else if (mode == VS)
  {
    mpc_enable = false;
    vs_enable = true;
    VisualServoPub.publish(VisualServoGoal);
  }
  else if (mode == VS_R)
  {
    mpc_enable = false;
    vs_enable = true;
    VisualServoPub.publish(VisualServoGoal);
  } 
  else if (mode == VS_L)
  {
    mpc_enable = false;
    vs_enable = true;
    VisualServoPub.publish(VisualServoGoal);
  }  
  else if (mode == PANEL_MPCVS)
  {
    mpc_enable = true;
    vs_enable = false;
    // MpcGoalPub.publish(MpcGoal);
    VisualServoPub.publish(VisualServoGoal);
  }
  else if (mode == BUTTON_MPCVS)
  {
    mpc_enable = true;
    vs_enable = true;
    // MpcGoalPub.publish(MpcGoal);
    VisualServoPub.publish(VisualServoGoal);
  }
  else if (mode == ARM)
  {
    mpc_enable = false;
    vs_enable = false;
    // VisualServoPub.publish(VisualServoGoal);
  }
  else if (mode == ARM_R)
  {
    mpc_enable = false;
    vs_enable = false;
    // VisualServoPub.publish(VisualServoGoal);
  }  
  else if (mode == ARM_L)
  {
    mpc_enable = false;
    vs_enable = false;
    // VisualServoPub.publish(VisualServoGoal);
  } 
  else if (mode == ADJUST_Z)
  {
    mpc_enable = false;
    vs_enable = false;
  }
  else if (mode == ADJUST_Y)
  {
    mpc_enable = false;
    vs_enable = false;
  }
  else if (mode == MOVESTANDBY)
  {
    // MpcGoalPub.publish(MpcGoal);
    mpc_enable = true;
    vs_enable = false;
    if (MpcFinishFlag)
    {
      mode = FINISH;
      ROS_INFO("[State Controller] Set Mode: %s", std::to_string(mode).c_str());
    }
  }
  else if (mode == WAIT_PRESS_NUMBER || mode == WAIT_PRESS_NUMBER_R || mode == WAIT_PRESS_NUMBER_L)
  {
    vs_enable = true;
  }
  else if (mode == FINISH)
  {
    ResetAvgPose = true;
    mpc_enable = false;
    vs_enable = false;
    mpc_arrive_ckeck_done_ = false;
    // std_msgs::Bool flag;
    // flag.data = true;
    // MpcResetPub.publish(flag);
  }
  if (last_mode != mode)
  {
    std_srvs::SetBool req;
    campusrover_msgs::BubbleMPC bubble_mpc_enable;
    
    if(mode != STANDBY && ( (mode != WAIT_PRESS_NUMBER) || (mode != WAIT_PRESS_NUMBER_R) || (mode != WAIT_PRESS_NUMBER_L)))
    {
      bubble_mpc_enable.request.enable = mpc_enable;
      bubble_mpc_enable.request.robot_radius = 0.33;
      bubble_mpc_enable.request.away_dis = 0.3;
      ROS_INFO("[State Controller] Timer: Enable MPC %s", mpc_enable ? "True" : "False");
      EnableBubbleMpcCallService(EnableMpcClient, bubble_mpc_enable);
    }


    req.request.data = vs_enable;
    ROS_INFO("[State Controller] Timer: Enable VS %s", vs_enable ? "True" : "False");
    EnableVisualServoCallService(EnableVisualServoClient, req);

    last_mode = mode;
  }

  if (mode == PANEL_MPCVS)
  {
    std_srvs::SetBool req;
    campusrover_msgs::BubbleMPC bubble_mpc_enable;

    if(!bubble_mpc_start)
    {
      bubble_mpc_enable.request.enable = mpc_enable;
      bubble_mpc_enable.request.robot_radius = 0.33;
      bubble_mpc_enable.request.away_dis = 0.3;
      ROS_INFO("[State Controller] Timer: Enable MPC %s", mpc_enable ? "True" : "False");
      EnableBubbleMpcCallService(EnableMpcClient, bubble_mpc_enable);
    }

  }

  mode_pub.data = mode;
  ModePub.publish(mode_pub);
  if(mode == FINISH)
  {
    std_msgs::Int16 name_target_mode;
    name_target_mode.data = 1;  
    NameTargetModePub.publish(name_target_mode);
    mode = STANDBY;
  }
}
void state_controller::CmdVelCB(const geometry_msgs::Twist &msg)
{
  input_cmd_vel = msg;
}

void state_controller::Joint3StateCB(const dynamixel_msgs::JointState &msg)
{
  current_joint3_pos = msg.current_pos;
}

void state_controller::TablePoseCB(const campusrover_msgs::ArmTablePoseStatus &msg)
{
  table_position.x = msg.position.x;
  table_position.y = msg.position.y;
  table_position.z = msg.position.z;  
}

void state_controller::ArmPlanCB(const std_msgs::Bool &arm_plan_result)
{
  static int arm_l_count = 0 ;  
  static int arm_r_count = 0 ;

  if(arm_plan_result.data && enter_mode.data == VS)
  {
    mode = ARM;
    ROS_INFO("[State Controller] Set Mode: %s", std::to_string(mode).c_str());
  }
  else if(arm_plan_result.data && enter_mode.data == VS_R)
  {
    mode = ARM_R;
    ROS_INFO("[State Controller] Set Mode: %s", std::to_string(mode).c_str());
  }
  else if(arm_plan_result.data && enter_mode.data == VS_L)
  {
    mode = ARM_L;
    ROS_INFO("[State Controller] Set Mode: %s", std::to_string(mode).c_str());
  }
  else if (!arm_plan_result.data && mode == ADJUST_Z )
  {
    mode = ADJUST_Y;
    ROS_INFO("[State Controller] Set Mode: %s", std::to_string(mode).c_str());
  }//arm_plan_result.data this should change   
  else if (!arm_plan_result.data && enter_mode.data == ARM )
  {
    enter_mode.data = VS ;
    mode = ADJUST_Y;
    ROS_INFO("[State Controller] Set Mode: %s", std::to_string(mode).c_str());
  }//arm_plan_result.data this should change   
  else if (!arm_plan_result.data && enter_mode.data == ARM_L && arm_l_count <3)
  {
    adjust_y_flag = false;
    arm_l_count++ ;
    enter_mode.data = VS_L ;    
    mode = ADJUST_Y;
    ROS_INFO("[State Controller] Set Mode: %s", std::to_string(mode).c_str());
  }//arm_plan_result.data this should change 
  else if (!arm_plan_result.data && enter_mode.data == ARM_R && arm_r_count <3)
  {
    adjust_y_flag = false;
    arm_r_count++ ;
    enter_mode.data = VS_R ;    
    mode = ADJUST_Y;
    ROS_INFO("[State Controller] Set Mode: %s", std::to_string(mode).c_str());
  }
  else if (!arm_plan_result.data && (enter_mode.data == ARM_L || enter_mode.data == ARM_R ) && (arm_l_count >=3 || arm_r_count >=3))
  {
    campusrover_msgs::ElevatorControlStatus status;
    status.control_status = status.ENTER_ELEVATOR_INSIDE ;
    elevator_step_pub_.publish(status);
    ROS_INFO("[State Controller] Change status to ENTER_ELEVATOR_INSIDE ");
  }//arm_plan_result.data this should change  
}
void state_controller::ArmActingCB(const std_msgs::Bool &arm_acting)
{
  ArmActing = arm_acting.data;
}

bool state_controller::ChooseBestPanel(geometry_msgs::PoseArray &input_poses, geometry_msgs::Pose &output_pose)
{
  geometry_msgs::PoseArray poses = input_poses;
  geometry_msgs::Pose best;
  double closest_panel_height = std::numeric_limits<double>::max();
  bool find = false;

  for (auto pose : poses.poses)
  {
    double dis_to_panel = std::sqrt(std::pow(Odom.pose.pose.position.x - pose.position.x, 2) +
                          std::pow(Odom.pose.pose.position.y - pose.position.y, 2));
    // std::cout << pose.position.z << std::endl;
    if (pose.position.z < 1.2 && dis_to_panel > 1)
    {
      if (pose.position.z < closest_panel_height )
      {
        closest_panel_height = pose.position.z;
        best = pose;  
        find = true;
      }
    }
  }

  output_pose = best;
  return find;
}

void state_controller::EnableButtonRecognizeCallService(ros::ServiceClient &client, campusrover_msgs::ButtonRecognize &srv)
{
  while (!client.call(srv))
  {
    ROS_ERROR("[State Controller] Enable Button Recognize : Failed to call service");
    ros::Duration(1.0).sleep();
  }
}

void state_controller::EnableButtonTrackingCallService(ros::ServiceClient &client, campusrover_msgs::ButtonTracking &srv)
{
  while (!client.call(srv))
  {
    ROS_ERROR("[State Controller] Enable Button Tracking : Failed to call service");
    ros::Duration(1.0).sleep();
  }
}

void state_controller::EnableBubbleMpcCallService(ros::ServiceClient &client, campusrover_msgs::BubbleMPC &srv)
{
  while (!client.call(srv))
  {
    ROS_ERROR("[State Controller] Enable MPC : Failed to call service");
    ros::Duration(1.0).sleep();
  }
}

void state_controller::EnableVisualServoCallService(ros::ServiceClient &client, std_srvs::SetBool &srv)
{
  while (!client.call(srv))
  {
    ROS_ERROR("[State Controller] Enable Visual Servo : Failed to call service");
    ros::Duration(1.0).sleep();
  }
}

void state_controller::Enable_CallNameTargetClient_CallService(ros::ServiceClient &client, campusrover_msgs::poseture_srv &srv)
{
  while (!client.call(srv))
  {
    ROS_ERROR("[State Controller] Enable CallNameTargetClient : Failed to call service");
    ros::Duration(1.0).sleep();
  }
}

void state_controller::YZTablePositionCallService(ros::ServiceClient &client,campusrover_msgs::ArmTablePosition &srv)
{
  while (!client.call(srv))
  {
    ROS_ERROR("[State Controller] yz_table position : Failed to call service");
    ros::Duration(1.0).sleep();
  }
}

void state_controller::Enable_CallPressButtonClient_CallService(ros::ServiceClient &client, campusrover_msgs::position_srv &srv)
{
  while (!client.call(srv))
  {
    ROS_ERROR("[State Controller] Enable CallPressButtonClient : Failed to call service");
    ros::Duration(1.0).sleep();
  }
}

void state_controller::PanelEnableCB(const std_msgs::Bool &enable)
{
  PanelEnable = enable.data;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "state_controller_3");
  ros::AsyncSpinner spinner(5); // Use 4 threads
  ros::NodeHandle nh;
  ros::NodeHandle nh_p("~");
  state_controller state(nh_p);

  ros::Subscriber ControlStateSub = nh.subscribe("/control_status", 1, &state_controller::ControlStateCB, &state);
  ros::Subscriber ButtonDetectionsSub = nh.subscribe("/recognized_button_poses", 1, &state_controller::ButtonDetectionsCB, &state);
  ros::Subscriber PanelPosesSub = nh.subscribe("/recognized_panel_poses", 1, &state_controller::PanelPosesCB, &state);
  ros::Subscriber LineSegmentsSub = nh.subscribe("/line_segments", 1, &state_controller::LineSegmentsCB, &state);
  ros::Subscriber MpcFinishSub = nh.subscribe("/mpc_finish", 1, &state_controller::MpcFinishCB, &state);
  ros::Subscriber OdomSub = nh.subscribe("/odom", 1, &state_controller::OdomCB, &state);
  ros::Subscriber DoorStatusSub = nh.subscribe("/doors_status", 1, &state_controller::DoorStatusCB, &state);
  ros::Subscriber ArmPlanSub = nh.subscribe("/arm_plan_result", 1, &state_controller::ArmPlanCB, &state);
  ros::Subscriber ArmActingSub = nh.subscribe("/arm_acting", 1, &state_controller::ArmActingCB, &state);
  ros::Subscriber CmdVelSub = nh.subscribe("/input/nav_cmd_vel", 10, &state_controller::CmdVelCB, &state);  
  ros::Subscriber Joint3StateSub = nh.subscribe("/joint_3/state", 10, &state_controller::Joint3StateCB, &state);  
  ros::Subscriber TablePoseSub = nh.subscribe("table_pose", 10, &state_controller::TablePoseCB, &state);

  // test unit
  ros::Subscriber ModeOverride = nh.subscribe("/mode_over", 1, &state_controller::ModeOverrideCB, &state);
  ros::Subscriber PanelEnable = nh.subscribe("/panel_enable", 1, &state_controller::PanelEnableCB, &state);

  ros::ServiceServer PressButtonService = nh.advertiseService("target_button", &state_controller::ControllerService, &state);
  ros::Timer timer = nh.createTimer(ros::Duration(0.1), &state_controller::PubTimerCallback, &state);

  spinner.start();
  ros::waitForShutdown();
  return 0;
}
