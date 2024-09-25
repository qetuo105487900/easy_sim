#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>
#include <boost/thread.hpp>

ros::Publisher filtered_scan_pub;
sensor_msgs::LaserScan::ConstPtr lastest_lidar_scan;
boost::mutex lidar_scan_mutex;

void lidarScanCallback(const sensor_msgs::LaserScan::ConstPtr& scan) 
{
  boost::mutex::scoped_lock lock(lidar_scan_mutex);
  lastest_lidar_scan = scan; // 緩存最新的 lidar_scan
}

void Scan2D3DCallback(const sensor_msgs::LaserScan::ConstPtr& scan) 
{
  boost::mutex::scoped_lock lock(lidar_scan_mutex);
  if (!lastest_lidar_scan) 
  {
    return; // 如果還沒有收到 lidar_scan，直接返回
  }

  // 避免不必要的分配和拷貝
  sensor_msgs::LaserScan filtered_scan;
  filtered_scan.header = scan->header;
  filtered_scan.angle_min = scan->angle_min;
  filtered_scan.angle_max = scan->angle_max;
  filtered_scan.angle_increment = scan->angle_increment;
  filtered_scan.time_increment = scan->time_increment;
  filtered_scan.scan_time = scan->scan_time;
  filtered_scan.range_min = scan->range_min;
  filtered_scan.range_max = scan->range_max;

  filtered_scan.ranges.reserve(scan->ranges.size());

  for (size_t i = 0; i < scan->ranges.size(); ++i) 
  {
    if (i < lastest_lidar_scan->ranges.size() && scan->ranges[i] <= lastest_lidar_scan->ranges[i]) 
    {
      filtered_scan.ranges.push_back(scan->ranges[i]);
    } 
    else 
    {
      filtered_scan.ranges.push_back(std::numeric_limits<float>::infinity());
    }
  }

  filtered_scan_pub.publish(filtered_scan);
}

int main(int argc, char **argv) 
{
  ros::init(argc, argv, "filtered_scan_no_mirror");
  ros::NodeHandle nh;

  ros::Subscriber lidar_sub = nh.subscribe("scan", 1000, lidarScanCallback);
  ros::Subscriber scan_2d_3d_sub = nh.subscribe("scan_2d_3d", 1000, Scan2D3DCallback);
  filtered_scan_pub = nh.advertise<sensor_msgs::LaserScan>("filtered_scan", 1000);

  ros::AsyncSpinner spinner(4); // 使用4個線程來處理回調函數
  spinner.start();
  ros::waitForShutdown();
  return 0;
}
