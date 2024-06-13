#include <ros/ros.h>
#include <math.h>
#include <iostream>
#include <cmath>

#include <tf2/LinearMath/Quaternion.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#include <tf/transform_broadcaster.h>
#include <tf2_ros/transform_listener.h>

#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseArray.h>

#include <nav_msgs/Path.h>

#include <sensor_msgs/LaserScan.h>
#include <sensor_msgs/PointCloud2.h>

#include <pcl/point_types.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/filters/passthrough.h>

#include <visualization_msgs/Marker.h>
#include <visualization_msgs/MarkerArray.h>

#include <campusrover_msgs/DoorStatus.h>
#include <campusrover_msgs/ElevatorInfo.h>
#include <campusrover_msgs/ElevatorInfoArray.h>
#include <campusrover_msgs/ElevatorControlStatus.h>
#include <campusrover_msgs/ElevatorPose.h>
#include <campusrover_msgs/ElevatorPoseArray.h>

using namespace std;

#define M_PI 3.14159265358979323846  /* pi */

ros::Subscriber scan_sub_, pose_sub_, pointcloud_sub_, control_status_sub_, elevator_infos_sub_;
ros::Publisher door_status_pub_, elevator_marker_pub_,elevator_door_points_pub_, door_pub_;

std::vector<double> scan_range_;
std::vector<double> scan_angle_;
std::vector<geometry_msgs::Point> scan_points_,velodyne_points_;
geometry_msgs::PointStamped point_state;
campusrover_msgs::ElevatorPoseArray elevator_poses;
campusrover_msgs::ElevatorInfoArray elevator_infos;
geometry_msgs::Pose odom_to_scan_tf;

bool get_scan_data = false;
bool use_velodyne_ = false;

int elevator_num_ = 0;
double elevator_depth_,elevator_door_depth_;
double elevator_width_l_;
double elevator_width_r_;
double door_offset_;
double door_open_threshold_;
double stuck_threshold_;

double control_status_;

void VisualizeElevatorEnterPoint(campusrover_msgs::DoorStatus msgs) ;
void VisualizeDoorPoints(std::vector<geometry_msgs::PointStamped> points,const string lidar_frame);
void CalculateDoorStatus(std::vector<geometry_msgs::Point> points,const string lidar_frame);
void rotate_to(double &x, double &y, double rad) ;

void get_parameters(ros::NodeHandle n_private)
{
  n_private.param<double>("elevator_depth", elevator_depth_, 1.34);
  n_private.param<double>("elevator_door_depth", elevator_door_depth_, 0.29);
  n_private.param<double>("elevator_width_l", elevator_width_l_, 0.7);
  n_private.param<double>("elevator_width_r", elevator_width_r_, -0.7);
  n_private.param<double>("door_offset", door_offset_, 0.05);
  n_private.param<double>("door_open_threshold", door_open_threshold_, 0.6);
  n_private.param<double>("stuck_threshold", stuck_threshold_, 0.3);
  n_private.param<bool>("use_velodyne", use_velodyne_, false);

}

void rotate_to(double &x, double &y, double rad) 
{
  double newX = x * cos(rad) - y * sin(rad);
  double newY = x * sin(rad) + y * cos(rad);
  x = newX;
  y = newY;
}

void ScanCallback(const sensor_msgs::LaserScanConstPtr &scan)
{
  if(elevator_num_ == 0 || control_status_ == campusrover_msgs::ElevatorControlStatus::STANDBY || use_velodyne_)
  {
    return;
  }

  string scan_frame_ = scan->header.frame_id;
  std::vector<geometry_msgs::Point> scan_points_;

  for (int i = 0; i < scan->ranges.size(); i++)
  {
    if(scan->ranges[i] > scan->range_min && scan->ranges[i] < scan->range_max)
    {
      geometry_msgs::Point point;
      double angle;
      angle = scan->angle_min + (i * scan->angle_increment);
      point.x = scan->ranges[i] * cos(angle);
      point.y = scan->ranges[i] * sin(angle);
      scan_points_.push_back(point);
    }
  }
  CalculateDoorStatus(scan_points_,scan_frame_);
  
}

void PointCloudCallback(const sensor_msgs::PointCloud2ConstPtr& msg)
{
  if(elevator_num_ == 0 || control_status_ == campusrover_msgs::ElevatorControlStatus::STANDBY || !use_velodyne_)
  {
    return;
  }
  string velodyne_frame_ = msg->header.frame_id;
  std::vector<geometry_msgs::Point> velodyne_points_;

  pcl::PointCloud<pcl::PointXYZ>::Ptr adjust_pcl_ptr (new pcl::PointCloud<pcl::PointXYZ>);
  pcl::PointCloud<pcl::PointXYZ>::Ptr pcl_filter (new pcl::PointCloud<pcl::PointXYZ>);
  pcl::fromROSMsg(*msg, *adjust_pcl_ptr);

  pcl::PassThrough<pcl::PointXYZ> PT;
  PT.setInputCloud(adjust_pcl_ptr);
  PT.setFilterFieldName("z");
  PT.setFilterLimits(-1.3,0.5);
  PT.filter(*pcl_filter);

  pcl::PointCloud<pcl::PointXYZ> adjust_pcl = *pcl_filter;

  velodyne_points_.clear();
  for(int i = 0;i<adjust_pcl.points.size(); i++)
  {
      geometry_msgs::Point point;
      point.x = adjust_pcl.points[i].x;
      point.y = adjust_pcl.points[i].y;
      point.z = adjust_pcl.points[i].z;
      velodyne_points_.push_back(point);
  }
  CalculateDoorStatus(velodyne_points_,velodyne_frame_);
}

void CalculateDoorStatus(std::vector<geometry_msgs::Point> lidar_points,const string lidar_frame)
{
  std::vector<geometry_msgs::PointStamped> points;
  static geometry_msgs::Pose pose;
  static std_msgs::String door_status;
  static geometry_msgs::Point point_1;
  static geometry_msgs::Point point_2;
  static geometry_msgs::PoseStamped before_pose ;
  static geometry_msgs::PoseStamped after_pose ;
  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tfListener(tfBuffer);
  static geometry_msgs::TransformStamped transformStamped;
  static double angle_1, angle_2, angle_d;
  static double roll, pitch, yaw, yaw_v, yaw_s, yaw_e;
  static double d1, d2, dd, d_v;

  campusrover_msgs::DoorStatus doors_status_msg;
  geometry_msgs::TransformStamped t_from_camera_to_baselink ;  

  for(int i = 0;i <elevator_num_;i++)
  {

    try
    {
      transformStamped = tfBuffer.lookupTransform("odom", lidar_frame, ros::Time::now(), ros::Duration(2));
    }
    catch (tf2::TransformException &ex)
    {
      ROS_WARN(" %s. Can't update pose from TF, for that will be use the latest source point.", ex.what());
    }

    odom_to_scan_tf.position.x = transformStamped.transform.translation.x;
    odom_to_scan_tf.position.y = transformStamped.transform.translation.y;
    odom_to_scan_tf.position.z = transformStamped.transform.translation.z;
    odom_to_scan_tf.orientation.x = transformStamped.transform.rotation.x;
    odom_to_scan_tf.orientation.y = transformStamped.transform.rotation.y;
    odom_to_scan_tf.orientation.z = transformStamped.transform.rotation.z;
    odom_to_scan_tf.orientation.w = transformStamped.transform.rotation.w;

    tf::Quaternion q1( odom_to_scan_tf.orientation.x,
                      odom_to_scan_tf.orientation.y,
                      odom_to_scan_tf.orientation.z,
                      odom_to_scan_tf.orientation.w);
    yaw_s = tf::getYaw(q1);

    tf::Quaternion q2( elevator_poses.poses[i].pose.orientation.x,
                      elevator_poses.poses[i].pose.orientation.y,
                      elevator_poses.poses[i].pose.orientation.z,
                      elevator_poses.poses[i].pose.orientation.w);
    yaw_e = tf::getYaw(q2);

    if(control_status_ <= campusrover_msgs::ElevatorControlStatus::ENTER_ELEVATOR_INSIDE)
    {
      yaw_s = yaw_s;
      yaw_e = yaw_e;
    }
    else if(control_status_ == campusrover_msgs::ElevatorControlStatus::WAIT_FOR_ELEVATOR_ARRIVE || control_status_ == campusrover_msgs::ElevatorControlStatus::LEAVE_ELEVATOR_INSIDE)
    {
      yaw_s = yaw_s - M_PI;
      yaw_e = yaw_e - M_PI;
    }


    point_1.x = elevator_poses.poses[i].pose.position.x - (elevator_poses.poses[i].door_width/2.0) * sin(yaw_e); // right side
    point_1.y = elevator_poses.poses[i].pose.position.y + (elevator_poses.poses[i].door_width/2.0) * cos(yaw_e);

    point_2.x = elevator_poses.poses[i].pose.position.x - (-elevator_poses.poses[i].door_width/2.0) * sin(yaw_e); // left side
    point_2.y = elevator_poses.poses[i].pose.position.y + (-elevator_poses.poses[i].door_width/2.0) * cos(yaw_e);

    point_state.header.frame_id = "door_corner";
    point_state.point = point_1;
    points.push_back(point_state);
    point_state.point = point_2;
    points.push_back(point_state);

    /*based on robot*/
    double sx = odom_to_scan_tf.position.x ;      
    double sy = odom_to_scan_tf.position.y ;
    double syaw = yaw_s ;

    double ecx = elevator_poses.poses[i].pose.position.x ;      
    double ecy = elevator_poses.poses[i].pose.position.y ;
    double eyaw = yaw_e ;

    double p1x = point_1.x ;      
    double p1y = point_1.y ;
    double p1yaw = yaw_e ;

    double p2x = point_2.x ;      
    double p2y = point_2.x ;
    double p2yaw = yaw_e ;

    double transform_x = sx ;
    double transform_y = sy ;
    double transform_yaw = -(syaw) ;

    double relativeEcx = ecx - transform_x;
    double relativeEcy = ecy - transform_y;    
    double relativeSx = sx - transform_x;
    double relativeSy = sy - transform_y;
    double relativeP1x = p1x - transform_x;
    double relativeP1y = p1y - transform_y;
    double relativeP2x = p2x - transform_x;
    double relativeP2y = p2y - transform_y;

    rotate_to(relativeEcx, relativeEcy, transform_yaw);
    rotate_to(relativeSx, relativeSy, transform_yaw);
    rotate_to(relativeP1x, relativeP1y, transform_yaw);
    rotate_to(relativeP2x, relativeP2y, transform_yaw);

    // 调整方向角
    double newecyaw = eyaw - (-transform_yaw);
    double newsyaw = syaw - (-transform_yaw);
    double newp1yaw = p1yaw - (-transform_yaw);
    double newp2yaw = p2yaw - (-transform_yaw);
    /*based on robot*/

    d1 = sqrt(pow( (relativeP1x - relativeSx) , 2) + pow((relativeP1y - relativeSy) , 2));
    d2 = sqrt(pow( (relativeP2x - relativeSx) , 2) + pow((relativeP2y - relativeSy) , 2));
    dd = sqrt(pow( (relativeEcx - relativeSx) , 2) + pow((relativeEcy - relativeSy) , 2));

    angle_1 = atan(relativeP1y/relativeP1x);
    angle_2 = atan(relativeP2y/relativeP2x);
    angle_d = atan(relativeEcy/relativeSx);

    yaw_v = newecyaw ;

    d_v = abs(dd * cos(yaw_v-angle_d));

    double total_dooropen = 0, count_opendoor = 0;
    double total_stuck = 0, count_stuck = 0;

    if(elevator_infos.elevator_infos.size()>0)
    {
      elevator_door_depth_ = elevator_infos.elevator_infos[elevator_poses.poses[i].id].elevator_door_size.x;
      elevator_depth_ = elevator_infos.elevator_infos[elevator_poses.poses[i].id].elevator_size.x;
      elevator_width_l_ = elevator_infos.elevator_infos[elevator_poses.poses[i].id].elevator_size.y/2 + elevator_infos.elevator_infos[elevator_poses.poses[i].id].inside_button_position.orientation.y;
      elevator_width_r_ = -elevator_infos.elevator_infos[elevator_poses.poses[i].id].elevator_size.y/2 + elevator_infos.elevator_infos[elevator_poses.poses[i].id].inside_button_position.orientation.y;
    }
      

    for(int s = 0;s <lidar_points.size();s++)
    {
      double scan_angle = atan2(lidar_points[s].y ,lidar_points[s].x);
      double scan_range = sqrt( pow(lidar_points[s].y,2) + pow(lidar_points[s].x,2) );

      if ( (angle_2 > angle_1 && (scan_angle > angle_1 && scan_angle < angle_2)) || (angle_2 < angle_1 && (scan_angle > angle_1 || scan_angle < angle_2))  )
      {
        double l_v = abs(scan_range * cos(scan_angle-yaw_v));
        double d_h = abs(dd * sin(yaw_v-angle_d));
        double l_h = scan_range * sin(scan_angle-yaw_v) - d_h;

        // cout<<"l "<<l<<" scan_range "<<scan_range_[s]<<'\n';
        if(l_v - d_v + door_offset_ >= 0)
        {
          total_dooropen++;
          if(l_v - d_v - door_offset_ >= 0 )
          {
            count_opendoor++;
          }
        }
        
        total_stuck++;
        if(l_v - d_v >= elevator_door_depth_ + elevator_depth_ - door_offset_ )
        {
          point_state.header.frame_id="wall_and_outside";
        }
        else if(l_v - d_v - door_offset_ >= elevator_door_depth_ )
        {
          if(l_h >= elevator_width_r_ + door_offset_ && l_h <= elevator_width_l_ - door_offset_)
          {
            count_stuck++;
            point_state.header.frame_id="stuck";
          }
          else
          {
            point_state.header.frame_id="wall_and_outside";
          }
        }
        else if(l_v - d_v >= -elevator_poses.poses[i].depth - door_offset_)
        {
          
          if( abs(l_h) < elevator_poses.poses[i].door_width/2 - door_offset_)
          {
            count_stuck++;
            point_state.header.frame_id="stuck";
          }
          else
          {
            point_state.header.frame_id="wall_and_outside";
          }
        }
        else
        {
          count_stuck++;
          point_state.header.frame_id="stuck";
        }

        point_state.point = lidar_points[s];
        points.push_back(point_state);
      }
    }


    double open_rate = count_opendoor / total_dooropen;
    double stuck_rate = count_stuck / total_stuck;

    geometry_msgs::Twist door ;
    door.linear.x = count_opendoor ;
    door.linear.y = total_dooropen ;
    door.linear.z = open_rate ;
    door.angular.x = count_stuck ;
    door.angular.y = total_stuck ;
    door.angular.z = stuck_rate ;
    door_pub_.publish(door);

    string elevator_id_status = std::to_string(elevator_poses.poses[i].id);
    if(elevator_poses.poses[i].id == 0)
    {
      // std::cout<<"open_rate :"<<open_rate<<"\t stuck_rate :"<<stuck_rate<<std::endl;
      // std::cout<<"count_opendoor :"<<count_opendoor<<"\t total_dooropen :"<<total_dooropen<<std::endl;
      // std::cout<<"count_stuck :"<<count_stuck<<"\t total_stuck :"<<total_stuck<<std::endl;

    }


    if(control_status_ == campusrover_msgs::ElevatorControlStatus::LEAVE_ELEVATOR_INSIDE)
    {
        if(open_rate > 0.1)   
        {
            if(stuck_rate < 0.45)  
            {
                elevator_id_status += "open";
            }
            else
            {
                elevator_id_status += "open_cant_enter";
            }
        }
        else
        {
            elevator_id_status += "close";
        }
    }
    else
    {
        if(open_rate > door_open_threshold_)   
        {
            if(stuck_rate < stuck_threshold_)  
            {
                elevator_id_status += "open";
            }
            else
            {
                elevator_id_status += "open_cant_enter";
            }
        }
        else
        {
            elevator_id_status += "close";
        }
    }

    door_status.data = elevator_id_status;
    doors_status_msg.doors_status.push_back(door_status);
    
  }

  doors_status_msg.doors_pose.header.frame_id = lidar_frame;
  door_status_pub_.publish(doors_status_msg);
  VisualizeElevatorEnterPoint(doors_status_msg);
  VisualizeDoorPoints(points,lidar_frame);
}
//-------------------------------------------------------------
void PoseCallback(const campusrover_msgs::ElevatorPoseArrayConstPtr &poses)
{
  elevator_num_ = poses->poses.size();
  elevator_poses.header = poses->header;
  elevator_poses.poses= poses->poses;
}
//-------------------------------------------------------------
void ElevatorInfoCallback(const campusrover_msgs::ElevatorInfoArray &ele_info )
{
  elevator_infos = ele_info;
}
//--------------------------------------------------------------------
void VisualizeDoorPoints(std::vector<geometry_msgs::PointStamped> points, const string lidar_frame) 
{
  static visualization_msgs::MarkerArray point_markers;
  static visualization_msgs::Marker point_marker;

  point_markers.markers.clear();

  if(points.size() == 0)
    return;

  point_marker.header.frame_id = lidar_frame;
  point_marker.header.stamp = ros::Time::now();
  point_marker.ns = "Door_Points";
  point_marker.action = visualization_msgs::Marker::ADD;
  point_marker.pose.position.z = 0;
  point_marker.pose.orientation.x = 0.0;
  point_marker.pose.orientation.y = 0.0;
  point_marker.pose.orientation.z = 0.0;
  point_marker.pose.orientation.w = 1.0;
  point_marker.scale.y = 0.02;
  point_marker.scale.x = 0.02;
  point_marker.scale.z = 0.02;
  point_marker.type = visualization_msgs::Marker::CYLINDER;
  point_marker.color.a = 0.5f;
  point_marker.color.r = 0.0f;
  point_marker.color.g = 1.0f;
  point_marker.color.b = 0.0f;

  for(int i=0; i < points.size(); i++)
  {
    point_marker.id = i;
    point_marker.pose.position.x = points[i].point.x;
    point_marker.pose.position.y = points[i].point.y;
    point_marker.pose.position.z = points[i].point.z;
    if(points[i].header.frame_id=="stuck")
    {
      point_marker.scale.y = 0.02;
      point_marker.scale.x = 0.02;
      point_marker.color.a = 0.5f;
      point_marker.color.r = 1.0f;
      point_marker.color.g = 0.0f;
      point_marker.color.b = 0.0f;
    }
    else if(points[i].header.frame_id=="door")
    {
      point_marker.scale.y = 0.02;
      point_marker.scale.x = 0.02;
      point_marker.color.a = 0.5f;
      point_marker.color.r = 0.0f;
      point_marker.color.g = 1.0f;
      point_marker.color.b = 0.0f;
    }
    else if(points[i].header.frame_id=="wall_and_outside")
    {
      point_marker.scale.y = 0.02;
      point_marker.scale.x = 0.02;
      point_marker.color.a = 0.5f;
      point_marker.color.r = 1.0f;
      point_marker.color.g = 1.0f;
      point_marker.color.b = 0.0f;
    }
    else if(points[i].header.frame_id=="door_corner")
    {
      point_marker.scale.y = 0.1;
      point_marker.scale.x = 0.1;
      point_marker.color.a = 1;
      point_marker.color.r = 1.0f;
      point_marker.color.g = 0.0f;
      point_marker.color.b = 1.0f;
    }
    point_markers.markers.push_back(point_marker);
  }
  

  elevator_door_points_pub_.publish(point_markers);
}

void VisualizeElevatorEnterPoint(campusrover_msgs::DoorStatus msgs) 
{
  static visualization_msgs::MarkerArray all_rollOuts;
  static visualization_msgs::Marker lane_waypoint_marker;
  static geometry_msgs::Point point;
  lane_waypoint_marker.header.frame_id = msgs.doors_pose.header.frame_id;
  lane_waypoint_marker.header.stamp = ros::Time(0);
  lane_waypoint_marker.ns = "elevator_door_status_marker";
  lane_waypoint_marker.type = visualization_msgs::Marker::LINE_STRIP;
  lane_waypoint_marker.action = visualization_msgs::Marker::ADD;
  lane_waypoint_marker.scale.x = 0.05;
  lane_waypoint_marker.scale.y = 0.05;
  lane_waypoint_marker.frame_locked = false;
  static int max_count = 0;
  all_rollOuts.markers.clear();
  if(msgs.doors_pose.poses.size() > max_count)
  {
    max_count = msgs.doors_pose.poses.size();
  }
  
  for (int i = 0; i < msgs.doors_pose.poses.size(); i++)
  {
    lane_waypoint_marker.points.clear();
    if(msgs.doors_status[i].data.substr(1) == "open")
    {
      lane_waypoint_marker.id = i;

      lane_waypoint_marker.color.r = 0.0;
      lane_waypoint_marker.color.g = 1.0;
      lane_waypoint_marker.color.b = 0.0;
      lane_waypoint_marker.color.a = 0.9;
    }
    else if(msgs.doors_status[i].data.substr(1) == "open_cant_enter")
    {
      lane_waypoint_marker.id = i;

      lane_waypoint_marker.color.r = 1.0;
      lane_waypoint_marker.color.g = 1.0;
      lane_waypoint_marker.color.b = 0.0;
      lane_waypoint_marker.color.a = 0.9;
    }
    else if(msgs.doors_status[i].data.substr(1) == "close")
    {
      lane_waypoint_marker.id = i;

      lane_waypoint_marker.color.r = 1.0;
      lane_waypoint_marker.color.g = 0.0;
      lane_waypoint_marker.color.b = 0.0;
      lane_waypoint_marker.color.a = 0.9;
    }
    // else if(i ==2)
    // {
    //   lane_waypoint_marker.id = i;

    //   lane_waypoint_marker.color.r = 0.0;
    //   lane_waypoint_marker.color.g = 0.0;
    //   lane_waypoint_marker.color.b = 1.0;
    //   lane_waypoint_marker.color.a = 0.9;
    // }



    tf::Quaternion q( msgs.doors_pose.poses[i].orientation.x,
                      msgs.doors_pose.poses[i].orientation.y,
                      msgs.doors_pose.poses[i].orientation.z,
                      msgs.doors_pose.poses[i].orientation.w);
    tf::Matrix3x3 m(q);
    double roll, pitch, yaw, yaw_v;
    m.getRPY(roll, pitch, yaw_v);

    yaw = yaw_v - M_PI/2.0;
    
    int doorid = stoi(msgs.doors_status[i].data.substr(0,1));
    point.x = msgs.doors_pose.poses[i].position.x + (elevator_poses.poses[doorid].door_width/2.0)*cos(yaw);
    point.y = msgs.doors_pose.poses[i].position.y + (elevator_poses.poses[doorid].door_width/2.0)*sin(yaw);

    lane_waypoint_marker.points.push_back(point);

    point.x = msgs.doors_pose.poses[i].position.x - (elevator_poses.poses[doorid].door_width/2.0)*cos(yaw);
    point.y = msgs.doors_pose.poses[i].position.y - (elevator_poses.poses[doorid].door_width/2.0)*sin(yaw);
      
    lane_waypoint_marker.points.push_back(point);

  
    all_rollOuts.markers.push_back(lane_waypoint_marker);
  }
  // if(msgs.doors_pose.poses.size()<max_count)
  // {
  //   for(int f = 0;f <max_count-msgs.doors_pose.poses.size();f++)
  //   {
  //     lane_waypoint_marker.id = all_rollOuts.markers.size()+f;
  //     lane_waypoint_marker.color.a = 0.01;
  //     //lane_waypoint_marker.points.push_back(point);
  //     all_rollOuts.markers.push_back(lane_waypoint_marker);
  //   }
  // }

  elevator_marker_pub_.publish(all_rollOuts);

}
//--------------------------------------------------------------------
void ControlStatusCallback(const campusrover_msgs::ElevatorControlStatusConstPtr &con_status)
{
  control_status_ = con_status->control_status;;
}

//--------------------------------------------------------------------

int main(int argc, char **argv)
{
  ros::init(argc, argv, "elevator_door_status");
  ros::NodeHandle nh;
  ros::NodeHandle nh_private("~");
  get_parameters(nh_private);
  ros::Time::init();

  scan_sub_ = nh.subscribe("scan2", 1, ScanCallback);
  pointcloud_sub_ = nh.subscribe("pointcloud", 1, PointCloudCallback);
  pose_sub_ = nh.subscribe("elevator_poses", 1, PoseCallback);
  control_status_sub_ = nh.subscribe("control_status", 1, ControlStatusCallback);
  elevator_infos_sub_ = nh.subscribe("elevator_infos", 10, ElevatorInfoCallback);

  door_status_pub_ = nh.advertise<campusrover_msgs::DoorStatus> ("doors_status", 10);
  elevator_marker_pub_ = nh.advertise<visualization_msgs::MarkerArray>("doors_status_marker", 50);
  elevator_door_points_pub_ = nh.advertise<visualization_msgs::MarkerArray>("doors_points_marker", 50);
  door_pub_ = nh.advertise<geometry_msgs::Twist> ("door", 1);

  ros::spin();

  return 0;
}
