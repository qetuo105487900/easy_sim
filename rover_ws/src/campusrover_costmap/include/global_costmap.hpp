#ifndef GLABAL_COSTMAP_HPP
#define GLABAL_COSTMAP_HPP

#include <ros/ros.h>
#include <nav_msgs/OccupancyGrid.h>

class GlobalCostmap
{
  enum Cost {LETHAL=254, FREE_SPACE=0, UNKNOW=-1};
private:
  nav_msgs::OccupancyGrid costmap_;
  void getDownSampledCostmap(
    const nav_msgs::OccupancyGrid::ConstPtr &original_map,
    nav_msgs::OccupancyGrid &downsampled_map,
    const double target_resolution);
  void setObstacleIndexes(
    std::vector<std::pair<int, int>> &obstacle_indexes, 
    const nav_msgs::OccupancyGrid &costmap );
  void computeCostmap(nav_msgs::OccupancyGrid &costmap,
    std::vector<std::pair<int, int>> &obstacle_indexes,
    const double inflation_radius, 
    const double cost_scaling_factor);
  double computeCost(const double dis);
public:
  double inflation_radius_;
  double cost_scaling_factor_;
  double costmap_resolution_;
  ros::Subscriber global_map_sub_;
  ros::Publisher global_costmap_pub_;
  GlobalCostmap(/* args */);
  ~GlobalCostmap();
  void mapUpdateCallback(const nav_msgs::OccupancyGrid::ConstPtr &map);
};

#endif // GLABAL_COSTMAP_HPP