#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <nav_msgs/OccupancyGrid.h>

ros::Publisher portion_costmap_pub;
tf::TransformListener* tf_listener;
nav_msgs::OccupancyGrid global_costmap;

double resolution;
double width;
double height;

void globalCostmapCallback(const nav_msgs::OccupancyGrid::ConstPtr& msg)
{
    global_costmap = *msg;
}

void publishPortionCostmap()
{
    tf::StampedTransform transform;
    try
    {
        tf_listener->lookupTransform("map", "base_footprint", ros::Time(0), transform);
    }
    catch (tf::TransformException &ex)
    {
        ROS_WARN("%s", ex.what());
        return;
    }

    int width_cells = width / resolution;
    int height_cells = height / resolution;

    nav_msgs::OccupancyGrid portion_costmap;
    portion_costmap.header.frame_id = "base_footprint";
    portion_costmap.header.stamp = ros::Time::now();
    portion_costmap.info.resolution = resolution;
    portion_costmap.info.width = width_cells;
    portion_costmap.info.height = height_cells;
    portion_costmap.info.origin.position.x = -width / 2.0;
    portion_costmap.info.origin.position.y = -height / 2.0;
    portion_costmap.info.origin.position.z = 0.0;
    portion_costmap.info.origin.orientation.w = 1.0;

    portion_costmap.data.resize(width_cells * height_cells, -1);

    for (int i = 0; i < height_cells; ++i)
    {
        for (int j = 0; j < width_cells; ++j)
        {
            // 計算局部地圖中每個點在 base_footprint 框架中的相對坐標
            double bx = (j * resolution) - width / 2.0;
            double by = (i * resolution) - height / 2.0;

            // 將 base_footprint 框架中的相對坐標轉換為 map 框架中的全局坐標
            double wx = transform.getOrigin().x() + bx * cos(tf::getYaw(transform.getRotation())) - by * sin(tf::getYaw(transform.getRotation()));
            double wy = transform.getOrigin().y() + bx * sin(tf::getYaw(transform.getRotation())) + by * cos(tf::getYaw(transform.getRotation()));

            // 將全局坐標轉換為全局地圖中的網格坐標
            int mx = (wx - global_costmap.info.origin.position.x) / global_costmap.info.resolution;
            int my = (wy - global_costmap.info.origin.position.y) / global_costmap.info.resolution;

            if (mx >= 0 && mx < global_costmap.info.width && my >= 0 && my < global_costmap.info.height)
            {
                int value = global_costmap.data[my * global_costmap.info.width + mx];
                if (value == 100 || value == -2)
                {
                    portion_costmap.data[i * width_cells + j] = -128;
                }
                else
                {
                    portion_costmap.data[i * width_cells + j] = 0;
                }
            }
        }
    }

    portion_costmap_pub.publish(portion_costmap);
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "portion_costmap_publisher");
    ros::NodeHandle nh;

    nh.param("resolution", resolution, 0.02);
    nh.param("portion_map_width", width, 6.0);
    nh.param("portion_map_height", height, 6.0);

    tf_listener = new tf::TransformListener();

    ros::Subscriber global_costmap_sub = nh.subscribe("/campusrover_global_costmap", 10, globalCostmapCallback);
    portion_costmap_pub = nh.advertise<nav_msgs::OccupancyGrid>("/campusrover_portion_costmap", 10);

    ros::Rate rate(10.0);
    while (nh.ok())
    {
        publishPortionCostmap();
        ros::spinOnce();
        rate.sleep();
    }

    delete tf_listener;
    return 0;
}
