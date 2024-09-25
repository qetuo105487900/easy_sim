#include <ros/ros.h>
#include <nav_msgs/OccupancyGrid.h>

nav_msgs::OccupancyGrid local_costmap, merged_costmap;

ros::Publisher merged_pub;

void LocalCostmapCallback(const nav_msgs::OccupancyGrid::ConstPtr& msg)
{
    local_costmap = *msg;
}

void PortionCostmapCallback(const nav_msgs::OccupancyGrid::ConstPtr& msg)
{
    merged_costmap = *msg;

    // 檢查兩個 costmap 的大小和解析度是否一致
    if (merged_costmap.info.width != local_costmap.info.width ||
        merged_costmap.info.height != local_costmap.info.height ||
        merged_costmap.info.resolution != local_costmap.info.resolution)
    {
        ROS_INFO("Costmaps size or resolution do not match!");
        return;
    }

    // 疊加資料
    for (size_t i = 0; i < merged_costmap.data.size(); ++i)
    {
        if (merged_costmap.data[i] == 0 && local_costmap.data[i] == -128)
        {
            merged_costmap.data[i] += local_costmap.data[i];
        }
    }

    merged_costmap.header.stamp = ros::Time::now();

    merged_pub.publish(merged_costmap);
}

int main(int argc, char** argv)
{
    // 初始化ROS節點
    ros::init(argc, argv, "merged_costmap_node");
    ros::NodeHandle nh;

    // 訂閱OccupancyGrid topic
    ros::Subscriber local_sub = nh.subscribe("/campusrover_local_costmap", 10, LocalCostmapCallback);
    ros::Subscriber portion_sub = nh.subscribe("/campusrover_portion_costmap", 10, PortionCostmapCallback);

    merged_pub = nh.advertise<nav_msgs::OccupancyGrid>("/campusrover_merged_costmap", 10);

    // 進行循環等待回調
    ros::spin();

    return 0;
}
