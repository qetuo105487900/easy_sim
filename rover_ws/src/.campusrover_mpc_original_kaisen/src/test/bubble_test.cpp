#include <ros/ros.h>

#include <nav_msgs/OccupancyGrid.h>
#include <nav_msgs/Path.h>

#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>

#include <visualization_msgs/Marker.h>
#include <visualization_msgs/MarkerArray.h>

#include <tf2_ros/transform_listener.h>
#include <tf2_ros/buffer.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>

ros::Subscriber Map_sub, Goal_sub, Checkpoint_sub, Initialpose_sub;
ros::Publisher Path_pub, Bubble_pub, Bubble_marker_pub, Bubble_id_marker_pub;

int Bubble_step = 0;
nav_msgs::Path Goal_path,Bubble_path;
geometry_msgs::PoseStamped Robot_pose,Bubble_pose;
nav_msgs::OccupancyGrid Map;

using namespace std;

void visualize_bubble(const nav_msgs::Path &bubble_path);

void get_parameters(ros::NodeHandle np)
{

}


std::pair<double, double> dis_to_map(geometry_msgs::PoseStamped &pose_state, nav_msgs::OccupancyGrid &map, double max_search_dis = 3)
{
    static tf2_ros::Buffer tfBuffer;
    static tf2_ros::TransformListener tfListener(tfBuffer);

    geometry_msgs::PoseStamped map_frame_pose ;
    static geometry_msgs::PoseStamped before_pose ;
    before_pose.header.frame_id = pose_state.header.frame_id;
    before_pose.pose = pose_state.pose;
    if(before_pose.header.frame_id != "map")
    {
        try
        {
            tfBuffer.transform(before_pose, map_frame_pose, "map");
        }
        catch (tf2::TransformException &ex)
        {
            ROS_WARN("bubble_test : %s",ex.what());
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
    double search_grid = 1,min_dis=numeric_limits<int>::max(),theta;
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

                if( int(Map.data[j*Map.info.width + i]) == 100 )
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

                if( int(Map.data[j*Map.info.width + i]) == 100 )
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
    pair<double, double> dis_angle(min_dis, theta);
    return dis_angle;

}

nav_msgs::Path create_bubble(geometry_msgs::PoseStamped &robot_state, nav_msgs::Path &path, double robot_radius = 0.33)
{
    nav_msgs::Path bubble_path;
    geometry_msgs::PoseStamped cur_bubble = robot_state;

    bubble_path.header.frame_id = path.header.frame_id;

    int bubble_id=0;
    for (auto checkpoint : path.poses)
    {
        double dis2pathpoint,last_dis2pathpoint = 0;
        while(1)
        {
            cur_bubble.header.seq = bubble_id++;
            dis2pathpoint = sqrt(pow(checkpoint.pose.position.x - cur_bubble.pose.position.x, 2) + pow(checkpoint.pose.position.y - cur_bubble.pose.position.y, 2));

            if(dis2pathpoint != 0)
            {
                cur_bubble.pose.position.x +=  (checkpoint.pose.position.x - cur_bubble.pose.position.x)/dis2pathpoint*robot_radius;
                cur_bubble.pose.position.y +=  (checkpoint.pose.position.y - cur_bubble.pose.position.y)/dis2pathpoint*robot_radius;
            }

            std::pair<double, double> dis_theta = dis_to_map(cur_bubble , Map);
            double bubble_radius = dis_theta.first;
            double bubble_angle = dis_theta.second;
            int loop_count=0;
            while(bubble_radius <= robot_radius)
            {   
                // cout << "bubble_" << cur_bubble.header.seq << " too close. bubble_radius : "<< bubble_radius << "  angle:" << bubble_angle << "  x-" << (robot_radius-bubble_radius+0.01) * cos(bubble_angle) << "  y-" << (robot_radius-bubble_radius+0.01) * sin(bubble_angle) << endl;
                cur_bubble.pose.position.x -= (robot_radius-bubble_radius+0.01) * cos(bubble_angle);
                cur_bubble.pose.position.y -= (robot_radius-bubble_radius+0.01) * sin(bubble_angle);
                dis_theta = dis_to_map(cur_bubble , Map);
                bubble_radius = dis_theta.first;
                bubble_angle = dis_theta.second;
                if(++loop_count  == 3)break;
            }
            cur_bubble.pose.position.z = bubble_radius;
            bubble_path.poses.push_back(cur_bubble);

            dis2pathpoint = sqrt(pow(checkpoint.pose.position.x - cur_bubble.pose.position.x, 2) + pow(checkpoint.pose.position.y - cur_bubble.pose.position.y, 2));      
            //reach checkpoint
            if(dis2pathpoint < bubble_radius)
                break;

            if(abs(dis2pathpoint-last_dis2pathpoint) < 0.1)
                break;

            last_dis2pathpoint = dis2pathpoint;
            
        }
    }
    return bubble_path;
}

void path_create_bubble(nav_msgs::Path &path)
{
    ros::Time time_p = ros::Time::now();
    Bubble_path = create_bubble(Robot_pose,path);
    cout << "time:" << (ros::Time::now() - time_p).toSec() << endl;
    Bubble_path.header.stamp = ros::Time::now();
    Bubble_pub.publish(Bubble_path);
    visualize_bubble(Bubble_path);
}

void map_cb(const nav_msgs::OccupancyGrid &map)
{
    Map = map;
}

void goal_cb(const geometry_msgs::PoseStamped &goal)
{
    geometry_msgs::PoseStamped point;
    point=goal;

    if(Bubble_step == 0)
    {
        Goal_path.poses.clear();
        Goal_path.poses.push_back(Robot_pose);
    }

    Goal_path.header.frame_id = goal.header.frame_id;
    Goal_path.poses.push_back(point);
    Path_pub.publish(Goal_path);

    path_create_bubble(Goal_path);


    Bubble_step = 0;
}

void checkpoint_cb(const geometry_msgs::PointStamped &checkpoint)
{
    geometry_msgs::PoseStamped point;
    point.header.frame_id = checkpoint.header.frame_id;
    point.pose.position = checkpoint.point;
    if(Bubble_step == 0)
    {
        Goal_path.poses.clear();
        Goal_path.poses.push_back(Robot_pose);
    }

    Goal_path.header.frame_id = point.header.frame_id;
    Goal_path.poses.push_back(point);

    Bubble_step++;
}

void initial_pose_cb(const geometry_msgs::PoseWithCovarianceStamped &checkpoint)
{
    geometry_msgs::PoseStamped robot_initial_pose;
    robot_initial_pose.header.frame_id = checkpoint.header.frame_id;
    robot_initial_pose.pose = checkpoint.pose.pose;
    Robot_pose = robot_initial_pose;
    Bubble_step = 0;
}

//-----------------------------------------------------------------------------------------------
void visualize_bubble(const nav_msgs::Path &bubble_path)
{
  visualization_msgs::Marker marker;
  visualization_msgs::MarkerArray markerarray_msg;
  visualization_msgs::MarkerArray markerarray_id_msg;

  marker.ns = "bubble_marker";

  marker.scale.z = 0.05;
  marker.lifetime = ros::Duration(0);
  marker.header.frame_id = bubble_path.header.frame_id;
  marker.header.stamp = ros::Time::now();
  for (int i=0;i<bubble_path.poses.size();i++)
  {
    marker.id = bubble_path.poses[i].header.seq;
    marker.points.clear();

    geometry_msgs::Pose pose_buffer = bubble_path.poses[i].pose;
    pose_buffer.position.z = 0;
    marker.pose = pose_buffer;

    marker.type = visualization_msgs::Marker::CYLINDER;
    marker.color.r = 1;
    marker.color.g = 0;
    marker.color.b = 0;
    marker.color.a = 0.3;
    marker.scale.x = bubble_path.poses[i].pose.position.z * 2;
    marker.scale.y = bubble_path.poses[i].pose.position.z * 2;
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

  Bubble_marker_pub.publish(markerarray_msg);
  Bubble_id_marker_pub.publish(markerarray_id_msg);

}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "mpc_bubble_test_node");
  ros::NodeHandle n;
  ros::NodeHandle nh("~");

  get_parameters(nh);

  Robot_pose.header.frame_id = "map";
  Robot_pose.pose.position.x = -1;
  Robot_pose.pose.position.y = -1;
  

  Map_sub = n.subscribe("/map", 1, map_cb);
  Goal_sub = n.subscribe("/move_base_simple/goal", 1, goal_cb);
  Checkpoint_sub = n.subscribe("/clicked_point", 1, checkpoint_cb);
  Initialpose_sub = n.subscribe("/initialpose", 1, initial_pose_cb);

  Path_pub = n.advertise<nav_msgs::Path>("/path", 1);
  Bubble_pub = n.advertise<nav_msgs::Path>("/bubble", 1);
  Bubble_marker_pub = n.advertise<visualization_msgs::MarkerArray>("/bubble_marker", 1);
  Bubble_id_marker_pub = n.advertise<visualization_msgs::MarkerArray>("/bubble_id_marker", 1);

  ros::spin();

  return 0;
}
