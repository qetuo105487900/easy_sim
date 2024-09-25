#include <geometry_msgs/PoseStamped.h>
#include <nav_msgs/Path.h>
#include <nav_msgs/OccupancyGrid.h>
#include <visualization_msgs/MarkerArray.h>
#include <visualization_msgs/InteractiveMarkerFeedback.h>

#include <tf2_ros/transform_listener.h>
#include <tf2_ros/buffer.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>

#include "tf/transform_listener.h"
#include "tf/message_filter.h"

class bubbleSafeZone
{
private:
  int Bubble_step = 0;
  nav_msgs::Path Goal_path;
  geometry_msgs::PoseStamped Robot_pose,Bubble_pose;
  nav_msgs::OccupancyGrid Map, Pure_map;

  visualization_msgs::MarkerArray markerarray_msg_;
  visualization_msgs::MarkerArray markerarray_id_msg_;

  std::pair<double, double> dis_to_map(
    geometry_msgs::PoseStamped &pose_state, 
    nav_msgs::OccupancyGrid &map, 
    double max_search_dis=1);
public:

  bubbleSafeZone(/* args */);
  ~bubbleSafeZone();
  bool CreateBubble(
    nav_msgs::Path &bubbles, 
    const geometry_msgs::PoseStamped &robot_state, 
    nav_msgs::Path &way_points, 
    double robot_radius = 0.33, double away_dis = 0.05);
  void VisualizeBubble(const nav_msgs::Path &bubbles);
  void VisualizeBubbleAndParameter(const nav_msgs::Path &bubbles, const double &bubble_idx, const geometry_msgs::Pose &ref_pose, const geometry_msgs::Pose &way_pose);
  visualization_msgs::MarkerArray GetBubbleMarkers();
  visualization_msgs::MarkerArray GetBubbleIdMarkers();
  void UpdateMap(const nav_msgs::OccupancyGrid &map);
  void AddObstacleToMap(const visualization_msgs::InteractiveMarkerFeedback &obstacle);
};

