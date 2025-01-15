#include <ros/ros.h>
#include <turtlesim/Pose.h>
#include <geometry_msgs/PoseStamped.h>
#include <turtlesim/TeleportAbsolute.h>
#include <tf2/LinearMath/Quaternion.h>
#include <tf2/LinearMath/Matrix3x3.h>
#include <tf2_ros/transform_broadcaster.h>  // 加入這一行
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <geometry_msgs/TransformStamped.h>  // 加入這一行
#include <std_srvs/Empty.h>
#include <math.h>
ros::Publisher pose_pub;
ros::ServiceClient teleport_client;
tf2_ros::TransformBroadcaster* tf_broadcaster;  // 宣告變換廣播器

// 轉換烏龜的位置為 PoseStamped 並發布 TF
void poseCallback(const turtlesim::Pose::ConstPtr& msg) 
{
  geometry_msgs::PoseStamped pose_stamped;
  geometry_msgs::TransformStamped transform_stamped;  // 用來發布 TF

  // 設置 frame_id 為 "map"
  pose_stamped.header.frame_id = "map";
  pose_stamped.header.stamp = ros::Time::now();

  // 轉換位置
  pose_stamped.pose.position.x = msg->x;
  pose_stamped.pose.position.y = msg->y;
  pose_stamped.pose.position.z = 0.0;  // 在2D世界中Z軸設定為0

  // 轉換方向 (將turtlesim的theta轉換成四元數)
  tf2::Quaternion q;
  q.setRPY(0, 0, msg->theta);  // 只需設置yaw，忽略roll和pitch
  pose_stamped.pose.orientation.x = q.x();
  pose_stamped.pose.orientation.y = q.y();
  pose_stamped.pose.orientation.z = q.z();
  pose_stamped.pose.orientation.w = q.w();

  // 發布轉換後的 PoseStamped
  pose_pub.publish(pose_stamped);

  // 設置 TF 變換
  transform_stamped.header.stamp = ros::Time::now();
  transform_stamped.header.frame_id = "map";      // 世界框架
  transform_stamped.child_frame_id = "turtle1";   // 烏龜的框架
  transform_stamped.transform.translation.x = msg->x;
  transform_stamped.transform.translation.y = msg->y;
  transform_stamped.transform.translation.z = 0.0;
  transform_stamped.transform.rotation.x = q.x();
  transform_stamped.transform.rotation.y = q.y();
  transform_stamped.transform.rotation.z = q.z();
  transform_stamped.transform.rotation.w = q.w();

  // 廣播 TF 變換
  tf_broadcaster->sendTransform(transform_stamped);
}

// 處理RViz中/initialpose
void initialPoseCallback(const geometry_msgs::PoseWithCovarianceStamped::ConstPtr& msg) 
{
  double x = msg->pose.pose.position.x;
  double y = msg->pose.pose.position.y;
  
  // 檢查位置是否在烏龜的範圍內 (0, 0) 到 (10, 10)
  if (x < 0 || x > 10 || y < 0 || y > 10) {
    ROS_WARN("Initial pose is out of bounds: (%.2f, %.2f)", x, y);
    return;
  }

  // 呼叫turtlesim/TeleportAbsolute服務來傳送位置
  turtlesim::TeleportAbsolute srv;
  srv.request.x = x;
  srv.request.y = y;

  // 轉換四元數為Yaw
  tf2::Quaternion q(
    msg->pose.pose.orientation.x,
    msg->pose.pose.orientation.y,
    msg->pose.pose.orientation.z,
    msg->pose.pose.orientation.w
  );
  double roll, pitch, yaw;
  tf2::Matrix3x3(q).getRPY(roll, pitch, yaw);

  // 設定烏龜的方向 (Yaw)
  srv.request.theta = yaw;

  if (teleport_client.call(srv)) 
  {
    ROS_INFO("Turtle teleported to: (%.2f, %.2f, %.2f)", x, y, yaw);
  } 
  else 
  {
    ROS_ERROR("Failed to call service teleport_absolute");
  }
}

// 服務伺服器：將烏龜移動到最小位置 (0, 0)
bool goToMinPose(std_srvs::Empty::Request &req, std_srvs::Empty::Response &res) 
{
  turtlesim::TeleportAbsolute srv;
  srv.request.x = 0.0;
  srv.request.y = 0.0;
  srv.request.theta = M_PI_2; // 面向正X軸方向

  if (teleport_client.call(srv)) 
  {
    ROS_INFO("Turtle teleported to minimum pose (0, 0, 0)");
    return true;
  } 
  else 
  {
    ROS_ERROR("Failed to call service teleport_absolute");
    return false;
  }
}

// 服務伺服器：將烏龜移動到最大位置 (10, 10)
bool goToMaxPose(std_srvs::Empty::Request &req, std_srvs::Empty::Response &res) 
{
  turtlesim::TeleportAbsolute srv;
  srv.request.x = 10.0;
  srv.request.y = 10.0;
  srv.request.theta = M_PI_2; // 面向正X軸方向

  if (teleport_client.call(srv)) 
  {
    ROS_INFO("Turtle teleported to maximum pose (10, 10, 0)");
    return true;
  } 
  else 
  {
    ROS_ERROR("Failed to call service teleport_absolute");
    return false;
  }
}

// 服務伺服器：將烏龜移動到 (4, 1)
bool goTo4_1(std_srvs::Empty::Request &req, std_srvs::Empty::Response &res) 
{
  turtlesim::TeleportAbsolute srv;
  srv.request.x = 4.0;
  srv.request.y = 1.0;
  srv.request.theta = M_PI_2; // 面向正X軸方向

  if (teleport_client.call(srv)) 
  {
    ROS_INFO("Turtle teleported to maximum pose (4, 1, 1.57)");
    return true;
  } 
  else 
  {
    ROS_ERROR("Failed to call service teleport_absolute");
    return false;
  }
}

int main(int argc, char** argv) 
{
  ros::init(argc, argv, "turtlesim_pose_to_pose_stamped");
  ros::NodeHandle nh;

  // 訂閱turtlesim的pose
  ros::Subscriber pose_sub = nh.subscribe<turtlesim::Pose>("/turtle1/pose", 10, poseCallback);

  // 發布geometry_msgs::PoseStamped
  pose_pub = nh.advertise<geometry_msgs::PoseStamped>("/turtle1/pose_stamped", 10);

  // 訂閱RViz中的/initialpose
  ros::Subscriber initial_pose_sub = nh.subscribe<geometry_msgs::PoseWithCovarianceStamped>("/initialpose", 10, initialPoseCallback);

  // 建立服務客戶端
  teleport_client = nh.serviceClient<turtlesim::TeleportAbsolute>("/turtle1/teleport_absolute");

  // 建立兩個服務伺服器，處理 go_to_min_pose 和 go_to_max_pose 服務請求
  ros::ServiceServer min_pose_server = nh.advertiseService("/go_to_min_pose", goToMinPose);
  ros::ServiceServer max_pose_server = nh.advertiseService("/go_to_max_pose", goToMaxPose);
  ros::ServiceServer pose_4_1_server = nh.advertiseService("/go_to_4_1", goTo4_1);

  // 初始化 TF 廣播器
  tf2_ros::TransformBroadcaster tf_broadcaster_instance;
  tf_broadcaster = &tf_broadcaster_instance;

  ros::spin();

  return 0;
}
