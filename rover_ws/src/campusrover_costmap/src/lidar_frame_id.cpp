#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>
#include <std_msgs/String.h>

// 全局變量來保存LIDAR的frame_id
std::string lidar_frame_id;

// 回調函數，用於處理接收到的LaserScan消息
void scanCallback(const sensor_msgs::LaserScan::ConstPtr& scan) {
    // 獲取LIDAR的frame_id
    lidar_frame_id = scan->header.frame_id;
    
    // 輸出LIDAR的frame_id到ROS日誌
    ROS_INFO("LIDAR frame_id: %s", lidar_frame_id.c_str());
}

int main(int argc, char** argv) {
    // 初始化ROS節點
    ros::init(argc, argv, "get_lidar_frame_id");
    ros::NodeHandle nh;

    // 訂閱LIDAR的LaserScan話題
    ros::Subscriber scan_sub = nh.subscribe("/filtered_scan", 1, scanCallback);

    // 讓ROS節點保持運行，直到手動終止
    ros::spin();

    return 0;
}
