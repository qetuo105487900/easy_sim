#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>
#include <nav_msgs/OccupancyGrid.h>
#include <tf2_ros/transform_listener.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>

double map_length; // meters
double map_width; // meters
double resolution; // meters
double inflation_radius; // meters
double x_threshold = 0.9; // meters
double y_threshold = 0.7; // meters

ros::Publisher map_pub_;
nav_msgs::OccupancyGrid map_;
tf2_ros::Buffer tf_buffer_;
tf2_ros::TransformListener* tf_listener_;

void initializeMap()
{
    map_.header.frame_id = "base_footprint";
    map_.info.resolution = resolution;
    map_.info.width = static_cast<uint32_t>(map_width / resolution);
    map_.info.height = static_cast<uint32_t>(map_length / resolution);
    map_.info.origin.position.x = -map_width / 2;
    map_.info.origin.position.y = -map_length / 2;
    map_.info.origin.position.z = 0;
    map_.info.origin.orientation.w = 1.0;

    map_.data.resize(map_.info.width * map_.info.height, 0);
}

void scanCallback(const sensor_msgs::LaserScan::ConstPtr& scan)
{
    // Clear the map
    std::fill(map_.data.begin(), map_.data.end(), 0);

    geometry_msgs::TransformStamped transform;
    try
    {
        transform = tf_buffer_.lookupTransform("base_footprint", scan->header.frame_id, ros::Time(0));
    }
    catch (tf2::TransformException &ex)
    {
        ROS_WARN("%s", ex.what());
        return;
    }

    for (size_t i = 0; i < scan->ranges.size(); ++i)
    {
        if (scan->ranges[i] < scan->range_min || scan->ranges[i] > scan->range_max)
            continue;

        double angle = scan->angle_min + i * scan->angle_increment;
        double x = scan->ranges[i] * cos(angle);
        double y = scan->ranges[i] * sin(angle);

        geometry_msgs::PointStamped point_in, point_out;
        point_in.header.frame_id = scan->header.frame_id;
        point_in.point.x = x;
        point_in.point.y = y;
        point_in.point.z = 0.0;

        tf2::doTransform(point_in, point_out, transform);

        // Skip points within the threshold region
        if (fabs(point_out.point.x) <= x_threshold / 2 && fabs(point_out.point.y) <= y_threshold / 2)
        {
            continue;
        }

        int map_x = static_cast<int>((point_out.point.x + map_width / 2) / resolution);
        int map_y = static_cast<int>((point_out.point.y + map_length / 2) / resolution);

        if (map_x >= 0 && map_x < static_cast<int>(map_.info.width) &&
            map_y >= 0 && map_y < static_cast<int>(map_.info.height))
        {
            int index = map_y * map_.info.width + map_x;
            map_.data[index] = std::min(map_.data[index] + 1, 128);
        }
    }

    // Inflate obstacles
    int inflation_cells = static_cast<int>(inflation_radius / resolution);
    nav_msgs::OccupancyGrid inflated_map = map_; // Create a copy to apply inflation

    for (int y = 0; y < static_cast<int>(map_.info.height); ++y)
    {
        for (int x = 0; x < static_cast<int>(map_.info.width); ++x)
        {
            int index = y * map_.info.width + x;
            if (map_.data[index] > 0)
            {
                for (int dy = -inflation_cells; dy <= inflation_cells; ++dy)
                {
                    for (int dx = -inflation_cells; dx <= inflation_cells; ++dx)
                    {
                        int nx = x + dx;
                        int ny = y + dy;
                        if (nx >= 0 && nx < static_cast<int>(map_.info.width) &&
                            ny >= 0 && ny < static_cast<int>(map_.info.height))
                        {
                            int nindex = ny * map_.info.width + nx;
                            if (dx * dx + dy * dy <= inflation_cells * inflation_cells)
                            {
                                inflated_map.data[nindex] = -128; // Mark as occupied
                            }
                        }
                    }
                }
            }
        }
    }

    map_ = inflated_map; // Update the map with the inflated version

    map_.header.stamp = ros::Time::now();
    map_pub_.publish(map_);
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "campusrover_local_costmap");
    ros::NodeHandle nh;

    nh.param("map_length", map_length, 6.0);
    nh.param("map_width", map_width, 6.0);
    nh.param("resolution", resolution, 0.02);
    nh.param("inflation_radius", inflation_radius, 0.15);

    map_pub_ = nh.advertise<nav_msgs::OccupancyGrid>("campusrover_local_costmap", 10);
    ros::Subscriber scan_sub = nh.subscribe("/filtered_scan", 10, scanCallback);

    tf_listener_ = new tf2_ros::TransformListener(tf_buffer_);

    initializeMap();

    ros::spin();

    delete tf_listener_;
    return 0;
}
