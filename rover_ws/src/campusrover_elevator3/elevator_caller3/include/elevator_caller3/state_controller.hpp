#define M_PI 3.14159265358979323846  /* pi */

#include <ros/ros.h>

#include <std_msgs/Int16.h>
#include <std_msgs/Float64.h>
#include <std_msgs/Bool.h>
#include <std_msgs/String.h>
#include <std_srvs/SetBool.h>
#include <sensor_msgs/LaserScan.h>
#include <sensor_msgs/CameraInfo.h>
#include <sensor_msgs/PointCloud.h>
#include <sensor_msgs/PointCloud2.h>
#include <nav_msgs/Odometry.h>
#include <nav_msgs/Path.h>
#include <geometry_msgs/Twist.h>
#include <laser_geometry/laser_geometry.h>
#include <vision_msgs/Detection2DArray.h>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseArray.h>
#include <laser_line_extraction/LineSegmentList.h>
#include <campusrover_msgs/ButtonPoses.h>
#include <campusrover_msgs/ButtonStatus.h>
#include <campusrover_msgs/PressButton.h>
#include <campusrover_msgs/ButtonCommand.h>
#include <campusrover_msgs/ButtonRecognize.h>
#include <campusrover_msgs/ButtonTracking.h>
#include <campusrover_msgs/BubbleMPC.h>
#include <campusrover_msgs/DoorStatus.h>
#include <campusrover_msgs/ElevatorControlStatus.h>
#include <campusrover_msgs/ArmTablePosition.h>
#include <campusrover_msgs/ArmTablePoseStatus.h>
#include <campusrover_msgs/poseture_srv.h>
#include <campusrover_msgs/position_srv.h> 

#include <tf/tf.h>
#include <tf/transform_listener.h>
#include <tf2/LinearMath/Quaternion.h>
#include <tf2_ros/transform_listener.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#include <yolov5_pytorch_ros/BoundingBoxes.h>

#include <image_geometry/pinhole_camera_model.h>
#include <dynamixel_controllers/SetComplianceSlope.h>
#include <dynamixel_msgs/JointState.h>

#include <apriltag_ros/AprilTagDetectionArray.h>


class state_controller
{
private:
  enum MODE
  {
    STANDBY = -1,
    STOP = 0,
    SEARCHING = 1,
    MPC = 2,
    VS = 3,
    PANEL_MPCVS = 4,
    BUTTON_MPCVS = 5,
    ARM = 6,
    MOVESTANDBY = 7,
    WAIT_PRESS_NUMBER = 8,
    WAIT_PRESS_NUMBER_R = 81,
    WAIT_PRESS_NUMBER_L = 82,         
    VS_R = 31,
    VS_L = 32, 
    ARM_R = 61,
    ARM_L = 62,
    ADJUST_Z = 777,
    ADJUST_Y = 778,        
    FINISH = 999
  };

  geometry_msgs::Point table_position;
  image_geometry::PinholeCameraModel CameraModel;
  geometry_msgs::PoseStamped MpcGoal, VisualServoGoal;
  nav_msgs::Path MpcGoalPath;
  geometry_msgs::Twist ForwardSpeed;
  geometry_msgs::PoseStamped TargetButtonPose, TargetPanelPose;
  nav_msgs::Odometry Odom;
  sensor_msgs::PointCloud LaserCloud;
  std_msgs::Int16 enter_mode;
  bool ArmActing = false, StandbyPoseReady = false, MpcFinishFlag = false, VisualServoFinishFlag = false, PanelUpdate = false, ButtonUpdate = false;
  bool ResetArmPose = true, ResetAvgPose = true;
  int mode = 0,last_mode;
  bool PanelEnable=true;
  bool mpc_arrive_ckeck_done_ = false, bubble_mpc_start = false;
  float control_state;
  bool adjust_y_flag = true ;
  geometry_msgs::Twist input_cmd_vel;
  float current_joint3_pos;

public:
  state_controller(ros::NodeHandle &nh);
  ~state_controller();

  std::string TargetButtonName;

  ros::Publisher ModePub, MpcGoalPub, VisualServoPub, MpcResetPub;
  ros::Publisher MpcEstimatePub, VsEstimatePub, PanelEstimatePub, PanelsEstimatePub;
  ros::Publisher LaserCloudPub;
  ros::Publisher enter_mode_pub, button_camera_pose_c_pub, button_camera_pose_r_pub;
  ros::Publisher button_camera_pose_pub, joint3_command_pub, NavCmdPub;
  ros::Publisher StringPub, elevator_step_pub_, Camera2ButtonPub, NameTargetModePub;

  ros::ServiceClient Call_CallNameTargetClient, Call_CallPressButtonClient,
      EnableButtonRecognizeClient, EnableButtonTrackingClient, EnableMpcClient, EnableVisualServoClient, arm_table_position_srv_client_;

  std::vector<std::pair<double, double>> DetectedPanelAngles;

  double VisualServoActDis = 1.0;
  double StandByDisX = 2.5;
  double StandByDisY = 0.3;
  double PanelParkDis = 0.80 + 0.22; // 0.22: camera to base_link
  double ButtonParkDis = 0.2 + 0.22; // 0.22: camera to base_link

  double PanelYaw;
  laser_line_extraction::LineSegmentList Line_segments;

  std::string TransformFrameId = "odom";
  std::string DetectionFrameId = "";
  std::string door_status_ = "close";

  void ButtonDetectionsCB(const campusrover_msgs::ButtonPoses &detections);
  void LineSegmentsCB(const laser_line_extraction::LineSegmentList &lines);
  void PanelPosesCB(const geometry_msgs::PoseArray &detections);
  void OdomCB(const nav_msgs::Odometry &odom);
  void MpcFinishCB(const std_msgs::Bool &flag);
  void DoorStatusCB(const campusrover_msgs::DoorStatus &door_status );
  void ControlStateCB(const campusrover_msgs::ElevatorControlStatus &control_state );
  void Joint3StateCB(const dynamixel_msgs::JointState &msg);
  void CmdVelCB(const geometry_msgs::Twist &msg);
  void TablePoseCB(const campusrover_msgs::ArmTablePoseStatus &msg);

  void ModeOverrideCB(const std_msgs::Int16 &mode);   // testing unit
  void PanelEnableCB(const std_msgs::Bool &enable);   // testing unit

  void PubTimerCallback(const ros::TimerEvent &event);

  bool ControllerService(campusrover_msgs::PressButton::Request &req, campusrover_msgs::PressButton::Response &res);

  // Setup Functions
  void SetButtonTarget(const std::string button_name);
  void SetVisualServoTargetPose(const geometry_msgs::PoseStamped &pose);
  void SetMpcTargetPose(const geometry_msgs::PoseStamped &pose);

  // Arm Functions
  void ArmPlanCB(const std_msgs::Bool &arm_plan_result);
  void ArmActingCB(const std_msgs::Bool &arm_acting);

  bool ChooseBestPanel(geometry_msgs::PoseArray &input_poses, geometry_msgs::Pose &output_pose);

  void EnableButtonRecognizeCallService(ros::ServiceClient &client, campusrover_msgs::ButtonRecognize &srv);
  void EnableButtonTrackingCallService(ros::ServiceClient &client, campusrover_msgs::ButtonTracking &srv);
  void EnableBubbleMpcCallService(ros::ServiceClient &client, campusrover_msgs::BubbleMPC &srv);
  void EnableVisualServoCallService(ros::ServiceClient &client, std_srvs::SetBool &srv);

  void Enable_CallNameTargetClient_CallService(ros::ServiceClient &client,campusrover_msgs::poseture_srv &srv) ;
  void Enable_CallPressButtonClient_CallService(ros::ServiceClient &client,campusrover_msgs::position_srv &srv);

  void YZTablePositionCallService(ros::ServiceClient &client,campusrover_msgs::ArmTablePosition &srv);

};

