#include <global_costmap.hpp>

GlobalCostmap::GlobalCostmap(/* args */)
{
}

GlobalCostmap::~GlobalCostmap()
{
}

void GlobalCostmap::getDownSampledCostmap(
  const nav_msgs::OccupancyGrid::ConstPtr &original_map,
  nav_msgs::OccupancyGrid &downsampled_map,
  const double target_resolution)
{
  double ratio = original_map->info.resolution/target_resolution;
  uint32_t down_sample_width = original_map->info.width*ratio; 
  uint32_t down_sample_height = original_map->info.height*ratio;
  downsampled_map.info.resolution = target_resolution;
  downsampled_map.info.width = down_sample_width;
  downsampled_map.info.height = down_sample_height;
  for (uint32_t i = 0; i < down_sample_height; i++)
  {
    for (uint32_t j = 0; j < down_sample_width; j++)
    {
      downsampled_map.data.push_back(Cost::FREE_SPACE);
    }
  }
  for (uint32_t i = 0; i < original_map->info.height; i++)
  {
    for (uint32_t j = 0; j < original_map->info.width; j++)
    {
      int down_i = i * ratio;
      int down_j = j * ratio;
      if (original_map->data[i*original_map->info.width+j] > 0)
      {
        uint32_t idx = down_i*downsampled_map.info.width+down_j;
        downsampled_map.data[idx] = 100;
      }
    }
  }
}

void GlobalCostmap::setObstacleIndexes(
    std::vector<std::pair<int, int>> &obstacle_indexes, 
    const nav_msgs::OccupancyGrid &costmap )
{
  uint32_t h = costmap.info.height;
  uint32_t w = costmap.info.width;
  for (uint32_t i = 0; i < h; i++)
  {
    for (uint32_t j = 0; j < w; j++)
    {
      if (costmap.data[i*w+j] > 80)
      {
        obstacle_indexes.push_back(std::make_pair<int, int>(i, j));
      }
    }
  }
}

void GlobalCostmap::computeCostmap(nav_msgs::OccupancyGrid &costmap,
  std::vector<std::pair<int, int>> &obstacle_indexes,
  const double inflation_radius, 
  const double cost_scaling_factor )
{
  const double map_res = costmap.info.resolution;
  const int num_rad = inflation_radius / map_res;
  const int max_h = costmap.info.height;
  const int max_w = costmap.info.width;
  for (std::pair<int, int> obstacle_idx: obstacle_indexes)
  {
    int cy = obstacle_idx.first;
    int cx = obstacle_idx.second;
    uint32_t bw_min = std::max(0, cx-num_rad);
    uint32_t bw_max = std::min(max_w, cx+num_rad);
    uint32_t bh_min = std::max(0, cy-num_rad);
    uint32_t bh_max = std::min(max_h, cy+num_rad);
    for (int i = bh_min; i < bh_max; i++)
    {
      for (int j = bw_min; j < bw_max; j++)
      {
        if (costmap.data[i*max_w+j] <= Cost::FREE_SPACE)
        {
          // comput cost
          double dy =  (cy-i)*map_res;
          double dx =  (cx-j)*map_res;
          double dis = std::sqrt(std::pow(dx, 2)+std::pow(dy, 2));
          if (dis < inflation_radius_) costmap.data[i*max_w+j] = computeCost(dis);
        }
      }
    }
  }
}

double GlobalCostmap::computeCost(const double dis)
{
  // return exp(-1.0 * cost_scaling_factor_ * 
  //                 (dis - inflation_radius_)) * 
  //                 (Cost::LETHAL - 1);
  return 254;
}

void GlobalCostmap::mapUpdateCallback(
  const nav_msgs::OccupancyGrid::ConstPtr &map)
{
  costmap_.header = map->header;
  costmap_.info = map->info;
  if (costmap_resolution_ > map->info.resolution)
  {
    getDownSampledCostmap(map, costmap_, costmap_resolution_);
  }
  else
  {
    costmap_.data = map->data;
  }
  std::vector<std::pair<int, int>> obstacle_idx;
  setObstacleIndexes(obstacle_idx, costmap_);
  computeCostmap(costmap_, obstacle_idx, inflation_radius_, costmap_resolution_);
  global_costmap_pub_.publish(costmap_);
}
