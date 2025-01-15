#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <nav_msgs/Path.h>
#include <cmath> // 用於比較浮點數
#include <std_msgs/Bool.h>

nav_msgs::Path path;
geometry_msgs::PoseStamped last_pose;
bool first_pose = true; // 用來記錄是否是第一次接收位姿
bool start_record = false;

// 用來比較兩個浮點數是否接近
bool arePosesEqual(const geometry_msgs::PoseStamped& pose1, const geometry_msgs::PoseStamped& pose2)
{
  double tolerance = 0.001; // 設定一個容許誤差範圍
  double dx = std::fabs(pose1.pose.position.x - pose2.pose.position.x);
  double dy = std::fabs(pose1.pose.position.y - pose2.pose.position.y);
  double dz = std::fabs(pose1.pose.position.z - pose2.pose.position.z);

  // 如果位置的差異小於 tolerance，則認為位置相同
  return (dx < tolerance && dy < tolerance && dz < tolerance);
}

void recordPathCallback(const std_msgs::Bool::ConstPtr& msg)
{
  if (msg->data)
  {
    start_record = true;
    ROS_INFO("Start recording path.");
    // 這裡加入開始記錄路徑的邏輯
  }
  else
  {
    start_record = false;
    ROS_INFO("Stop recording path.");
    // 這裡加入停止記錄路徑的邏輯
  }
}

void poseCallback(const geometry_msgs::PoseStamped::ConstPtr& pose_msg)
{
  // 第一次接收位姿時，直接加入到 path 中
  if (start_record)
  {
    if (first_pose || !arePosesEqual(*pose_msg, last_pose))
    {
      // 設置 Path 的 header (frame_id 和 stamp)
      path.header.frame_id = "map";
      path.header.stamp = ros::Time::now();

      // 將當前的 PoseStamped 添加到 Path 中
      path.poses.push_back(*pose_msg);

      // 更新 last_pose
      last_pose = *pose_msg;
      first_pose = false; // 標記已經接收到第一個位姿
    }
  }

}

int main(int argc, char** argv)
{
  // 初始化 ROS 節點
  ros::init(argc, argv, "path_recorder");
  ros::NodeHandle nh;

  // 創建 Path 的發布者
  ros::Publisher path_pub = nh.advertise<nav_msgs::Path>("/robot_path", 10);

  // 訂閱 PoseStamped 消息 (假設該 topic 名稱為 "/robot_pose_in_map")
  ros::Subscriber pose_sub = nh.subscribe("/turtle1/pose_stamped", 10, poseCallback);
  ros::Subscriber record_path_sub = nh.subscribe("start_record_path", 10, recordPathCallback);

  ros::Rate loop_rate(10); // 10Hz 的頻率來更新路徑
  while (ros::ok())
  {
    // 持續發布路徑
    path_pub.publish(path);

    ros::spinOnce();
    loop_rate.sleep();
  }

  return 0;
}
