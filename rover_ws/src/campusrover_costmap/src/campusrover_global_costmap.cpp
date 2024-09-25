#include <ros/ros.h>
#include <nav_msgs/OccupancyGrid.h>

nav_msgs::OccupancyGrid latest_map;
bool map_received = false;

// Callback function to handle incoming OccupancyGrid messages
void GlobalCostmapCallback(const nav_msgs::OccupancyGrid::ConstPtr& msg)
{
    latest_map = *msg;
    map_received = true;
}

int main(int argc, char** argv)
{
    // Initialize the ROS node
    ros::init(argc, argv, "global_costmap_publisher_node");
    ros::NodeHandle nh;

    // Subscribe to the global_costmap topic
    ros::Subscriber global_sub = nh.subscribe("/global_costmap", 10, GlobalCostmapCallback);

    // Publisher to publish the latest map at a fixed rate
    ros::Publisher map_pub = nh.advertise<nav_msgs::OccupancyGrid>("/campusrover_global_costmap", 10);

    // Set the loop rate to 10 Hz
    ros::Rate loop_rate(10);

    while (ros::ok())
    {
        // If a map has been received, publish it
        if (map_received)
        {
            map_pub.publish(latest_map);
        }

        // Spin once to process incoming messages
        ros::spinOnce();

        // Sleep to maintain the loop rate
        loop_rate.sleep();
    }

    return 0;
}
