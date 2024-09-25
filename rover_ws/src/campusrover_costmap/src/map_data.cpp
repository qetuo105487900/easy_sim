#include <ros/ros.h>
#include <nav_msgs/OccupancyGrid.h>
#include <map>
#include <iostream>

void globalCallback(const nav_msgs::OccupancyGrid::ConstPtr& msg) 
{
    std::map<int, int> countMap;

    // 遍歷數據並計算不同數字的數量
    for (size_t i = 0; i < msg->data.size(); ++i) 
    {
        int value = msg->data[i];
        countMap[value]++;
    }

    // 輸出結果
    std::cout << "global OccupancyGrid data counts:" << std::endl;
    for (const auto& pair : countMap) 
    {
        std::cout << "Value " << pair.first << ": " << pair.second << std::endl;
    }
}

void localCallback(const nav_msgs::OccupancyGrid::ConstPtr& msg) 
{
    std::map<int, int> countMap;

    // 遍歷數據並計算不同數字的數量
    for (size_t i = 0; i < msg->data.size(); ++i) 
    {
        int value = msg->data[i];
        countMap[value]++;
    }

    // 輸出結果
    std::cout << "local OccupancyGrid data counts:" << std::endl;
    for (const auto& pair : countMap) 
    {
        std::cout << "Value " << pair.first << ": " << pair.second << std::endl;
    }

    // 輸出 frame_id 和 origin
    std::cout << "Frame ID: " << msg->header.frame_id << std::endl;
    std::cout << "Origin: " << std::endl;
    std::cout << "  Position: (" << msg->info.origin.position.x << ", " << msg->info.origin.position.y << ", " << msg->info.origin.position.z << ")" << std::endl;
    std::cout << "  Orientation: (" << msg->info.origin.orientation.x << ", " << msg->info.origin.orientation.y << ", " << msg->info.origin.orientation.z << ", " << msg->info.origin.orientation.w << ")" << std::endl;
    std::cout << "Resolution: " << msg->info.resolution << std::endl;
    std::cout << "Width: " << msg->info.width << std::endl;
    std::cout << "Height: " << msg->info.height << std::endl;
}


void mapCallback(const nav_msgs::OccupancyGrid::ConstPtr& msg) 
{
    std::map<int, int> countMap;

    // 遍歷數據並計算不同數字的數量
    for (size_t i = 0; i < msg->data.size(); ++i) 
    {
        int value = msg->data[i];
        countMap[value]++;
    }

    // 輸出結果
    std::cout << "map OccupancyGrid data counts:" << std::endl;
    for (const auto& pair : countMap) 
    {
        std::cout << "Value " << pair.first << ": " << pair.second << std::endl;
    }
}

int main(int argc, char** argv) 
{
  ros::init(argc, argv, "occupancy_grid_subscriber");
  ros::NodeHandle nh;

  ros::Subscriber global_sub = nh.subscribe("/campusrover_global_costmap", 10, globalCallback);
  ros::Subscriber local_sub = nh.subscribe("/campusrover_local_costmap", 10, localCallback);
  ros::Subscriber map_sub = nh.subscribe("/map", 10, mapCallback);
  
  ros::spin();

  return 0;
}
