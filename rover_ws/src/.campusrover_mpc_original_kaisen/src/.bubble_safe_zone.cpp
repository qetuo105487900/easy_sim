#include <ros/ros.h>

#include "bubble_safe_zone.hpp"

// nav_msgs::Path bubbles
// std_msgs/Header header
//   uint32 seq
//   time stamp
//   string frame_id
// geometry_msgs/PoseStamped[] poses
//   std_msgs/Header header
//     uint32 seq -> pass checkpoint num
//     time stamp
//     string frame_id -> bubble frame_id
//   geometry_msgs/Pose pose
//     geometry_msgs/Point position
//       float64 x -> bubble x
//       float64 y -> bubble y
//       float64 z -> bubble radius
//     geometry_msgs/Quaternion orientation
//       float64 x -> obstacle position x
//       float64 y -> obstacle position y
//       float64 z -> obstacle orientation z(yaw)
//       float64 w -> obstacle orientation w(yaw)

bubbleSafeZone::bubbleSafeZone(/* args */)
{
}

bubbleSafeZone::~bubbleSafeZone()
{
}

bool bubbleSafeZone::CreateBubble(
  nav_msgs::Path &bubbles, 
  const geometry_msgs::PoseStamped &robot_state, 
  nav_msgs::Path &way_points, 
  double robot_radius, double away_dis)
{
  if (way_points.poses.size() == 0) 
  {
    std::cout << "No waypoints available" << std::endl;
    return false;
  }
  if (Map.data.size() == 0)
  {
    std::cout << "No map available" << std::endl;
    return false;
  }

  static geometry_msgs::PoseStamped initial_pose;
  geometry_msgs::PoseStamped cur_bubble;
  nav_msgs::Path bubbles_calculate;
  int bubble_id,way_point_idx;
  int passpath = 0;

  if (bubbles.poses.size() != 0) 
  {
    //calculate closet bubble id
    double closet_bubble_dis = 999;
    int closet_bubble_id = 0,current_bubble_id = 0;
    for(auto bubble : bubbles.poses)
    {
      double dis_to_robot = sqrt(pow(bubble.pose.position.x - robot_state.pose.position.x, 2) + pow(bubble.pose.position.y - robot_state.pose.position.y, 2));
      double dis_between_bubble = sqrt(pow(bubble.pose.position.x - bubbles.poses[closet_bubble_id].pose.position.x, 2) + pow(bubble.pose.position.y - bubbles.poses[closet_bubble_id].pose.position.y, 2));
      if(current_bubble_id == 0)
      {
        closet_bubble_dis = dis_to_robot;
        closet_bubble_id = current_bubble_id;        
      }
      else if(dis_to_robot < closet_bubble_dis && dis_between_bubble >0.3)
      {
        closet_bubble_dis = dis_to_robot;
        closet_bubble_id = current_bubble_id;
      }
      current_bubble_id++;
    }

    ////to find where this closet bubble id between two way points
    // for(int i = 0; i < way_points.poses.size()-1; i++)
    // {
    //   double th1 = atan2(bubbles.poses[closet_bubble_id].pose.position.y - way_points.poses[i].pose.position.y , bubbles.poses[closet_bubble_id].pose.position.x - way_points.poses[i].pose.position.x);
    //   double th2 = atan2(way_points.poses[i+1].pose.position.y - way_points.poses[i].pose.position.y, way_points.poses[i+1].pose.position.x - way_points.poses[i].pose.position.x);
    //   double dis_to_waypoint = sqrt(pow(bubbles.poses[closet_bubble_id].pose.position.x - way_points.poses[i].pose.position.x, 2) + pow(bubbles.poses[closet_bubble_id].pose.position.y - way_points.poses[i].pose.position.y, 2));
    //   double dis_between_waypoint = sqrt(pow(way_points.poses[i+1].pose.position.x - way_points.poses[i].pose.position.x, 2) + pow(way_points.poses[i+1].pose.position.y - way_points.poses[i].pose.position.y, 2));
    //   if(0 <= dis_to_waypoint * cos(th1-th2) && dis_to_waypoint * cos(th1-th2) < dis_between_waypoint)
    //   {
    //     passpath = i+1;
    //     break;
    //   }
    // }

    // if(closet_bubble_id == bubbles.poses.size()-1)
    // {
    //   passpath = way_points.poses.size();
    // }
    passpath = bubbles.poses[closet_bubble_id].header.seq;


    // copy the bubble that need save
    for(int i = 0; i <= closet_bubble_id; i++)
    {
      bubbles_calculate.poses.push_back(bubbles.poses[i]);
    }
    cur_bubble = bubbles.poses[closet_bubble_id];
    bubble_id=closet_bubble_id;
    way_point_idx=passpath;
    // std::cout << "closet bubble id : " << bubble_id << "\tpasspath : " << way_point_idx << std::endl;

    double dis_to_initialpose = pow(initial_pose.pose.position.x - robot_state.pose.position.x, 2) + pow(initial_pose.pose.position.y - robot_state.pose.position.y, 2);
    double first_bubble_to_initialpose = pow(initial_pose.pose.position.x - bubbles.poses[0].pose.position.x, 2) + pow(initial_pose.pose.position.y - bubbles.poses[0].pose.position.y, 2);
    if(dis_to_initialpose < first_bubble_to_initialpose) //solve first bubble froze issue
    {
      bubbles_calculate.poses.clear();
      cur_bubble = initial_pose;
      bubble_id=0;
      way_point_idx=0;
    }
  }
  else
  {
    initial_pose = robot_state;
    cur_bubble = robot_state;
    bubble_id=0;
    way_point_idx=0;
  }

  bool first = true;
  int nowpath = 0;
  for (auto checkpoint : way_points.poses)
  {
      cur_bubble.header.seq = nowpath++;
      if(passpath>0)
      {
        passpath--;
        continue;
      }

      double dis2pathpoint,last_dis2pathpoint = 0;
      bool reach_checkpoint = false;
      while(1)
      {
          dis2pathpoint = sqrt(pow(checkpoint.pose.position.x - cur_bubble.pose.position.x, 2) + pow(checkpoint.pose.position.y - cur_bubble.pose.position.y, 2));
          
          //reach checkpoint
          if(reach_checkpoint || (first && dis2pathpoint<robot_radius && way_points.poses.size()==1) || (first && dis2pathpoint < cur_bubble.pose.position.z && bubbles.poses.size() != 0))
          {
              if(first && dis2pathpoint < cur_bubble.pose.position.z && bubbles.poses.size() != 0 && cur_bubble.pose.position.x == checkpoint.pose.position.x && cur_bubble.pose.position.y == checkpoint.pose.position.y)
                bubbles_calculate.poses.erase(bubbles_calculate.poses.end());
              cur_bubble.pose.position.x = checkpoint.pose.position.x;
              cur_bubble.pose.position.y = checkpoint.pose.position.y;
              if(way_point_idx == way_points.poses.size()-1)
              {
                cur_bubble.pose.orientation = way_points.poses[way_points.poses.size()-1].pose.orientation;
              }
              dis2pathpoint = 0;
              reach_checkpoint = true;
          }

          
          if(dis2pathpoint != 0)
          {
            cur_bubble.pose.position.x +=  (checkpoint.pose.position.x - cur_bubble.pose.position.x)/dis2pathpoint*cur_bubble.pose.position.z;
            cur_bubble.pose.position.y +=  (checkpoint.pose.position.y - cur_bubble.pose.position.y)/dis2pathpoint*cur_bubble.pose.position.z;
          }

          std::pair<double, double> dis_theta = dis_to_map(cur_bubble , Map);
          double bubble_radius = dis_theta.first;
          double bubble_angle = dis_theta.second;
          int loop_count=0;
          while(bubble_radius <= robot_radius+away_dis)
          {   
              // cout << "bubble_" << cur_bubble.header.seq << " too close. bubble_radius : "<< bubble_radius << "  angle:" << bubble_angle << "  x-" << (robot_radius-bubble_radius+0.01) * cos(bubble_angle) << "  y-" << (robot_radius-bubble_radius+0.01) * sin(bubble_angle) << endl;
              cur_bubble.pose.position.x -= (robot_radius+away_dis-bubble_radius) * cos(bubble_angle);
              cur_bubble.pose.position.y -= (robot_radius+away_dis-bubble_radius) * sin(bubble_angle);
              dis_theta = dis_to_map(cur_bubble , Map);
              bubble_radius = dis_theta.first;
              bubble_angle = dis_theta.second;
              if(++loop_count  == 3) break;
          }
          cur_bubble.pose.position.z = bubble_radius-robot_radius+0.05;
          if(bubble_angle == 87)
          {
            cur_bubble.pose.orientation.x = 0;
            cur_bubble.pose.orientation.y = 0;
          }
          else
          {
            cur_bubble.pose.orientation.x = cur_bubble.pose.position.x + (bubble_radius) * cos(bubble_angle);
            cur_bubble.pose.orientation.y = cur_bubble.pose.position.y + (bubble_radius) * sin(bubble_angle);
          }
          bubbles_calculate.poses.push_back(cur_bubble);

          if(reach_checkpoint)
              break;

          dis2pathpoint = sqrt(pow(checkpoint.pose.position.x - cur_bubble.pose.position.x, 2) + pow(checkpoint.pose.position.y - cur_bubble.pose.position.y, 2));      
          //reach checkpoint
          if(dis2pathpoint < cur_bubble.pose.position.z)
              reach_checkpoint = true;

          if(abs(dis2pathpoint-last_dis2pathpoint) < 0.05 && last_dis2pathpoint!=0)
              break;

          last_dis2pathpoint = dis2pathpoint;
          first = false;
      }
      way_point_idx++;
  }

  bubbles_calculate.header.frame_id = way_points.header.frame_id;
  bubbles = bubbles_calculate;
  return true;
}

std::pair<double, double> bubbleSafeZone::dis_to_map(
  geometry_msgs::PoseStamped &pose_state, 
  nav_msgs::OccupancyGrid &map, 
  double max_search_dis)
{
    static tf2_ros::Buffer tfBuffer;
    static tf2_ros::TransformListener tfListener(tfBuffer);

    geometry_msgs::PoseStamped map_frame_pose ;
    static geometry_msgs::PoseStamped before_pose ;
    before_pose.header.frame_id = pose_state.header.frame_id;
    before_pose.pose = pose_state.pose;
    if(before_pose.header.frame_id != map.header.frame_id)
    {
        try
        {
            tfBuffer.transform(before_pose, map_frame_pose,  map.header.frame_id);
        }
        catch (tf2::TransformException &ex)
        {
            ROS_WARN("bubble_safe_zone : %s",ex.what());
            ros::Duration(0.5).sleep();
            // return 0;
        }
    }
    else
    {
        map_frame_pose.header.frame_id = before_pose.header.frame_id;
        map_frame_pose.pose = before_pose.pose;
    }
    int robot_row = int((map_frame_pose.pose.position.x - Map.info.origin.position.x) / Map.info.resolution);
    int robot_col = int((map_frame_pose.pose.position.y - Map.info.origin.position.y) / Map.info.resolution);
    double search_grid = 1,min_dis=std::numeric_limits<int>::max(),theta = 87;
    bool hit = false;

    while(!hit)
    {
        for(int i = robot_row - search_grid; i <= robot_row + search_grid ; i++)
        {
            for(int j = robot_col - search_grid; j <= robot_col + search_grid ; j++)
            {   
                if(i != robot_row - search_grid && i != robot_row + search_grid && j != robot_col - search_grid && j != robot_col + search_grid)
                    continue;
                if(i < 0 || i >= Map.info.width || j<0 || j >= Map.info.height )
                    continue;

                if( int(Map.data[j*Map.info.width + i]) != 0 )
                {
                    
                    hit = true;
                    double dis = sqrt(pow(robot_row - i, 2) +
                                pow(robot_col - j, 2)) *
                                Map.info.resolution;

                    if(dis < min_dis)
                    {
                        min_dis = dis;
                        theta = atan2((j - robot_col),(i - robot_row));
                    }
                }
            }
        }
        
        search_grid += 1;
        if(search_grid > (max_search_dis / Map.info.resolution))
        {
            min_dis = max_search_dis ;
            break;
        }
    }

    if(hit)
    {
        search_grid = min_dis / Map.info.resolution;
        for(int i = robot_row - search_grid; i <= robot_row + search_grid ; i++)
        {
            for(int j = robot_col - search_grid; j <= robot_col + search_grid ; j++)
            {   
                if(i < 0 || i >= Map.info.width || j<0 || j >= Map.info.height )
                    continue;

                if( int(Map.data[j*Map.info.width + i]) != 0 )
                {
                    
                    double dis = sqrt(pow(robot_row - i, 2) +
                                pow(robot_col - j, 2)) *
                                Map.info.resolution;

                    if(dis < min_dis)
                    {
                        min_dis = dis;
                        theta = atan2((j - robot_col),(i - robot_row));
                    }
                }
            }
        }
    }

    if(theta!=87)
    {
      tf2::Quaternion myQuaternion;
      myQuaternion.setRPY( 0, 0, theta );

      geometry_msgs::PoseStamped before_yaw,after_yaw ;
      before_yaw.header.frame_id = map.header.frame_id;
      before_yaw.pose.orientation.z = myQuaternion.getZ();
      before_yaw.pose.orientation.w = myQuaternion.getW();

      try
      {
          tfBuffer.transform(before_yaw, after_yaw,  pose_state.header.frame_id);
      }
      catch (tf2::TransformException &ex)
      {
          ROS_WARN("bubble_safe_zone : %s",ex.what());
          ros::Duration(0.5).sleep();
      }
      tf::Quaternion q_odom_pose(after_yaw.pose.orientation.x,
                                  after_yaw.pose.orientation.y,
                                  after_yaw.pose.orientation.z,
                                  after_yaw.pose.orientation.w);
      theta = tf::getYaw(q_odom_pose);
    }
    std::pair<double, double> dis_angle(min_dis, theta);

    return dis_angle;

}

void bubbleSafeZone::VisualizeBubble(const nav_msgs::Path &bubbles)
{
  visualization_msgs::Marker marker;
  visualization_msgs::MarkerArray markerarray_msg;
  visualization_msgs::MarkerArray markerarray_id_msg;

  marker.ns = "bubble_marker";

  marker.scale.z = 0.05;
  marker.lifetime = ros::Duration(0);
  marker.header.frame_id = bubbles.header.frame_id;
  marker.header.stamp = ros::Time::now();
  for (int i=0;i<bubbles.poses.size();i++)
  {
    marker.id = i;
    marker.points.clear();

    geometry_msgs::Pose pose_buffer = bubbles.poses[i].pose;
    pose_buffer.position.z = 0;
    pose_buffer.orientation.x = 0;
    pose_buffer.orientation.y = 0;
    marker.pose = pose_buffer;

    marker.type = visualization_msgs::Marker::CYLINDER;
    marker.color.r = 1;
    marker.color.g = 0;
    marker.color.b = 0;
    marker.color.a = 0.3;
    marker.scale.x = bubbles.poses[i].pose.position.z * 2;
    marker.scale.y = bubbles.poses[i].pose.position.z * 2;
    markerarray_msg.markers.push_back(marker);

    marker.type = visualization_msgs::Marker::TEXT_VIEW_FACING;
    marker.color.r = 0;
    marker.color.g = 0;
    marker.color.b = 1;
    marker.color.a = 1;
    marker.scale.z = 0.4;
    marker.text = std::to_string(marker.id);
    markerarray_id_msg.markers.push_back(marker);
  }

  markerarray_msg_ = markerarray_msg;
  markerarray_id_msg_ = markerarray_id_msg;

}

void bubbleSafeZone::VisualizeBubbleAndParameter(const nav_msgs::Path &bubbles, const double &bubble_idx, const geometry_msgs::Pose &ref_pose, const geometry_msgs::Pose &way_pose)
{

  visualization_msgs::Marker marker;
  visualization_msgs::MarkerArray markerarray_msg;
  visualization_msgs::MarkerArray markerarray_id_msg;

  marker.ns = "bubble_marker";

  marker.scale.z = 0.05;
  marker.lifetime = ros::Duration(1);
  marker.header.frame_id = bubbles.header.frame_id;
  marker.header.stamp = ros::Time::now();
  for (int i=0; i<bubbles.poses.size(); i++)
  {
    marker.id = i;
    marker.points.clear();

    geometry_msgs::Pose pose_buffer = bubbles.poses[i].pose;
    pose_buffer.position.z = 0;
    pose_buffer.orientation.x = 0;
    pose_buffer.orientation.y = 0;
    marker.pose = pose_buffer;

    marker.type = visualization_msgs::Marker::CYLINDER;
    if(bubble_idx == i)
    {
        marker.color.r = 0;
        marker.color.g = 1;
        marker.color.b = 0;
        marker.color.a = 0.5;
    }
    else
    {
        marker.color.r = 1;
        marker.color.g = 0;
        marker.color.b = 0;
        marker.color.a = 0.3;
    }
    marker.scale.x = bubbles.poses[i].pose.position.z * 2;
    marker.scale.y = bubbles.poses[i].pose.position.z * 2;
    markerarray_msg.markers.push_back(marker);

    marker.type = visualization_msgs::Marker::TEXT_VIEW_FACING;
    if(bubble_idx == i)
    {
        marker.color.r = 0;
        marker.color.g = 1;
        marker.color.b = 0;
    }
    else
    {
        marker.color.r = 0;
        marker.color.g = 0;
        marker.color.b = 1;
    }
    marker.color.a = 1;
    marker.scale.z = 0.4;
    marker.text = std::to_string(marker.id);
    markerarray_id_msg.markers.push_back(marker);
  }

  for(int i=0; i<bubbles.poses.size(); i++)
  {
    if(bubbles.poses[i].pose.orientation.x!=0 )
    {
      marker.type = visualization_msgs::Marker::CYLINDER;
      marker.id += 1;

      marker.pose.position.x = bubbles.poses[i].pose.orientation.x;
      marker.pose.position.y = bubbles.poses[i].pose.orientation.y;
      marker.pose.position.z = 0;

      marker.scale.x = 0.05*2;
      marker.scale.y = 0.05*2;

      marker.color.r = 0;
      marker.color.g = 0;
      marker.color.b = 1;
      marker.color.a = 0.5;
      markerarray_msg.markers.push_back(marker);
    }
  }
    marker.type = visualization_msgs::Marker::ARROW;
    marker.scale.x = 0.3;
    marker.scale.y = 0.1;
    marker.scale.z = 0.1;
    marker.color.a = 1;
    marker.pose = ref_pose;
    marker.color.r = 0;
    marker.color.g = 1;
    marker.color.b = 1;
    marker.id += 1;
    markerarray_msg.markers.push_back(marker);
    marker.id += 1;
    marker.pose = way_pose;
    marker.color.r = 1;
    marker.color.g = 1;
    marker.color.b = 0;
    markerarray_msg.markers.push_back(marker);



  markerarray_msg_ = markerarray_msg;
  markerarray_id_msg_ = markerarray_id_msg;    
}

visualization_msgs::MarkerArray bubbleSafeZone::GetBubbleMarkers()
{
  return markerarray_msg_;
}

visualization_msgs::MarkerArray bubbleSafeZone::GetBubbleIdMarkers()
{
  return markerarray_id_msg_;
}

void bubbleSafeZone::UpdateMap(const nav_msgs::OccupancyGrid &map)
{
  Pure_map = map;
  Map = Pure_map;
}

void bubbleSafeZone::AddObstacleToMap(const visualization_msgs::InteractiveMarkerFeedback &obstacle)
{
  nav_msgs::OccupancyGrid map_with_obstacle;
  map_with_obstacle = Pure_map;

  int robot_row = int((obstacle.pose.position.x - map_with_obstacle.info.origin.position.x) / map_with_obstacle.info.resolution);
  int robot_col = int((obstacle.pose.position.y - map_with_obstacle.info.origin.position.y) / map_with_obstacle.info.resolution);
  // std::cout << robot_row << "\t" << robot_col << std::endl;
  for(int i=robot_row-20; i<robot_row+20 ;i++)
  {
    for(int j=robot_col-20; j< robot_col+20 ; j++)
    {
      if( i < 0 || i >= map_with_obstacle.info.width || j<0 || j >= map_with_obstacle.info.height )
        break;
      map_with_obstacle.data[j*map_with_obstacle.info.width + i] = 100;
    }
  }
  // if( robot_row < 0 || robot_row >= map_with_obstacle.info.width || robot_col<0 || robot_col >= map_with_obstacle.info.height )
  //   return;
  
  // map_with_obstacle.data[robot_col*map_with_obstacle.info.width + robot_row] = 100;

  Map = map_with_obstacle;

}
