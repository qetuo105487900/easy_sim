#include <global_costmap.hpp>

void setRosParameters(ros::NodeHandle np, boost::shared_ptr<GlobalCostmap> &ptr)
{
  np.param<double>("costmap_resolution", ptr->costmap_resolution_, 0.5);
  np.param<double>("inflation_radius", ptr->inflation_radius_, 1.0);
  np.param<double>("cost_scaling_factor", ptr->cost_scaling_factor_, 10.0);
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "global_costmap");
  ros::NodeHandle n;
  ros::NodeHandle np("~");
  boost::shared_ptr<GlobalCostmap> global_costmap_ptr;
  global_costmap_ptr = boost::make_shared<GlobalCostmap>();
  setRosParameters(np, global_costmap_ptr);
  global_costmap_ptr->global_costmap_pub_ 
    = n.advertise<nav_msgs::OccupancyGrid>("global_costmap", 5, true);
  global_costmap_ptr->global_map_sub_ 
    = n.subscribe("map", 10, &GlobalCostmap::mapUpdateCallback, global_costmap_ptr);
  ros::spin();
  return 0;
}
