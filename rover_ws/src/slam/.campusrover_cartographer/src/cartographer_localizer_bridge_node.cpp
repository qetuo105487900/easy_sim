#include "cartographer_localizer_bridge.hpp"
#include <ros/ros.h>

int main(int argc, char *argv[])
{
  ros::init(argc, argv, "cartographer_localizer_bridge"); 
  ros::MultiThreadedSpinner spinner(2);
  CartographerLocalizerBridge cl_bridge;
  spinner.spin();
  return 0;
}
