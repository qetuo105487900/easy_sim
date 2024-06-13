#include <ros/ros.h>
#include <math.h>
#include <iostream>
#include <functional>   // std::minus
#include <numeric>      // std::accumulate

#include <pcl/ModelCoefficients.h>
#include <pcl/point_types.h>
#include <pcl/sample_consensus/method_types.h>
#include <pcl/sample_consensus/model_types.h>
#include <pcl/segmentation/sac_segmentation.h>
#include <pcl/filters/extract_indices.h>
#include <pcl_conversions/pcl_conversions.h>

#include <tf2/LinearMath/Quaternion.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#include <tf2_ros/transform_listener.h>
#include <tf/transform_broadcaster.h>

#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseArray.h>

#include <nav_msgs/Path.h>

#include <sensor_msgs/LaserScan.h>
#include <sensor_msgs/PointCloud2.h>

#include <laser_geometry/laser_geometry.h>
#include <visualization_msgs/Marker.h>
#include <visualization_msgs/MarkerArray.h>

#include <campusrover_msgs/ElevatorControlStatus.h>
#include <campusrover_msgs/ElevatorStatusChecker.h>

#include <Eigen/Dense>

using namespace std;

#define M_PI 3.14159265358979323846  /* pi */
#define INSIDE -1
#define OUTSIDE 1
#define PointType pcl::PointXYZ

ros::Subscriber scan_sub_, scan2_sub_, control_status_sub_, map_sub_;
ros::Publisher pose_pub_, break_point_marker_pub_, elevator_corner_marker_pub_, featuer_point_marker_pub_, elevator_marker_pub_, map_line_pub_, cv_map_pub_, point_pub_;
ros::ServiceClient status_check_client_;

geometry_msgs::Pose robot_tf_pose_;

string status_;
string scan_frame_;
string map_frame_;
string window_type_;

double max_scan_range_;
double corner_feature_threshold;
double window_size_;

double enter_feature_point_neighborhood_dis_;
double enter_break_point_neighborhood_dis_;
double enter_window_size_;
double enter_corner_feature_threshold_;
double exit_feature_point_neighborhood_dis_;
double exit_break_point_neighborhood_dis_;
double exit_window_size_;
double exit_corner_feature_threshold_;

double elevator_feature_dis_range_;
double elevator_feature_d_angle_range_;
int elevator_num_;
double door_gap_dis_;
double enter_door_x1_;
double enter_door_y1_;
double enter_door_y2_;

double exit_door_x1_;
double exit_door_y1_;
double exit_door_y2_;

double elevator_wd_;
double filter_range_dis_;
double filter_range_angle_;

double control_status_;

double feature_point_neighborhood_dis_;
double break_point_neighborhood_dis_;

double shift_x_,shift_y_;

bool elevator_pose_filter_;
bool avg_pose_filter_;
bool enable_mode_ = false;
bool position_find_done_ = false;
bool feature_edit_enable_ = true;
bool feature_update_enable_ = true;
bool pose_edit_enable_ = true;

bool pose_filter_first_time_ = true;
bool feature_filter_first_time_ = true;
bool avg_pose_first_time_ = true;
bool matching_success_;

int sub_mode_;

int avg_pose_size_ ;

double group_win;
double smooth_thershold;
double theta_thershold;

std::vector<double> elevator_pose_yaw_;
std::vector<geometry_msgs::Point> detect_feature_point;
std::vector<geometry_msgs::Point> enter_elevator_feature;
std::vector<geometry_msgs::Point> exit_elevator_feature;
std::vector<geometry_msgs::Point> sample_elevator_feature;

geometry_msgs::PoseArray hold_poses_;
geometry_msgs::PoseArray prosses_poses_;

void VisualizeLine(std::vector<geometry_msgs::Point> points);
void VisualizeCorner(std::vector<geometry_msgs::Point> points);
void VisualizeBreakPoint(std::vector<geometry_msgs::Point> points);
void VisualizefeaturePoint(std::vector<geometry_msgs::Point> points) ;
void FeatureMatching(std::vector<geometry_msgs::Point> points);
void VisualizeElevatorEnterPoint(std::vector<nav_msgs::Path> paths);
void initial_elevator_feature();
void pose_filter(geometry_msgs::PoseArray &poses);
void FeatureExtract(geometry_msgs::PoseArray &scan_poses);
void FeatureFilter(std::vector<geometry_msgs::Point> &feature);
void avg_pose(geometry_msgs::PoseArray &input_pose);
void StatusCheckCallService(ros::ServiceClient &client,campusrover_msgs::ElevatorStatusChecker &srv);
void UpdateCampusRoverPoseFromTF();
void angle_normalize(double &angle);
void ransac(pcl::PointCloud<PointType>::Ptr cloud, pcl::PointIndices::Ptr inliers, pcl::ModelCoefficients::Ptr coefficients);
pcl::PointCloud<PointType>::Ptr cloudFilter(pcl::PointCloud<PointType>::Ptr cloud, pcl::PointIndices::Ptr indices, bool negative);
void EstimatePoseInside(const sensor_msgs::LaserScanConstPtr &scan);

void get_parameters(ros::NodeHandle n_private)
{
  n_private.param<string>("map_frame", map_frame_, "base_link");
  n_private.param<string>("window_type", window_type_, "circular");
  n_private.param<bool>("elevator_pose_filter", elevator_pose_filter_, true); 
  n_private.param<bool>("elevator_avg_pose_filter", avg_pose_filter_, true); 
  n_private.param<double>("max_scan_range", max_scan_range_, 4.0);
  n_private.param<int>("avg_pose_size", avg_pose_size_, 8.0);

  n_private.param<double>("enter_feature_point_neighborhood_dis", enter_feature_point_neighborhood_dis_, 0.065);
  n_private.param<double>("enter_break_point_neighborhood_dis", enter_break_point_neighborhood_dis_, 0.25);
  n_private.param<double>("enter_window_size", enter_window_size_, 0.15);
  n_private.param<double>("enter_corner_feature_threshold", enter_corner_feature_threshold_, 0.0000025);

  n_private.param<double>("exit_feature_point_neighborhood_dis", exit_feature_point_neighborhood_dis_, 0.02);
  n_private.param<double>("exit_break_point_neighborhood_dis", exit_break_point_neighborhood_dis_, 0.05);
  n_private.param<double>("exit_window_size", exit_window_size_, 0.05);
  n_private.param<double>("exit_corner_feature_threshold", exit_corner_feature_threshold_, 0.00000005);

  n_private.param<double>("elevator_feature_dis_range", elevator_feature_dis_range_, 0.1);
  n_private.param<double>("elevator_feature_d_angle_range", elevator_feature_d_angle_range_, 0.1);

  n_private.param<double>("filter_range_dis", filter_range_dis_, 0.1);
  n_private.param<double>("filter_range_angle", filter_range_angle_, 0.3);

  n_private.param<int>("elevator_num", elevator_num_, 2.0);
  n_private.param<double>("door_gap_dis", door_gap_dis_, 0.91);

  n_private.param<double>("enter_door_x1", enter_door_x1_, 0.34);
  n_private.param<double>("enter_door_y1", enter_door_y1_, 0.94);
  n_private.param<double>("enter_door_y2", enter_door_y2_, 0.8);
  
  n_private.param<double>("exit_door_x1", exit_door_x1_, 0.34);
  n_private.param<double>("exit_door_y1", exit_door_y1_, 0.94);
  n_private.param<double>("exit_door_y2", exit_door_y2_, 0.8);
  n_private.param<double>("elevator_wd", elevator_wd_, 0.8);

  n_private.param<double>("shift_x", shift_x_, 0.0);
  n_private.param<double>("shift_y", shift_y_, 0.0);

  n_private.param<int>("sub_mode", sub_mode_, 2.0);

  n_private.param<double>("group_win", group_win, 0.1);
  n_private.param<double>("smooth_thershold", smooth_thershold, 0.005);
  n_private.param<double>("theta_thershold", theta_thershold, 150);

  initial_elevator_feature();
}

void initial_elevator_feature()
{
  static double dis, angle, angle2, angle3, dangle;
  static double vx,vy; 
  static double last_vx,last_vy,last_angle;
  geometry_msgs::Point feature;


  //---enter feature--------//
  for(int i=0; i < 7;i++)
  {
    if(i == 0)
    {
      dis = 0.0;
      angle = angle2 =angle3=0.0;
      vx = vy =0.0;
    }
    else if(i == 1 )    
    {
      vx = 0.0;
      vy = -enter_door_y2_;
      dis = sqrt(pow(vx,2)+pow(vy,2));
      angle = atan2(vy,vx);
    }
    else if(i == 2)
    {
      vx = -(enter_door_x1_*cos(asin(((enter_door_y1_- enter_door_y2_)/2.0)/enter_door_x1_)));
      vy = -((enter_door_y1_- enter_door_y2_)/2.0);
      dis = sqrt(pow(vx,2)+pow(vy,2));
      angle = atan2(vy,vx);
      angle2 = angle;
    }
    else if(i == 3)
    {
      vx = 0.0;
      vy = -enter_door_y2_;
      dis = sqrt(pow(vx,2)+pow(vy,2));
      angle = atan2(vy,vx);
      

    }else if(i == 4)
    {
      vx = enter_door_x1_*cos(asin(((enter_door_y1_-enter_door_y2_)/2.0)/enter_door_x1_));
      vy = -((enter_door_y1_-enter_door_y2_)/2.0);
      dis = sqrt(pow(vx,2)+pow(vy,2));
      angle = atan2(vy,vx);
      angle3 = angle;

    }else if(i == 5)
    {
      vx = 0.0;
      vy = -enter_door_y2_;
      dis = sqrt(pow(vx,2)+pow(vy,2));
      angle = atan2(vy,vx);
    }
    else if(i == 6)
    {
      vx = 0.0;
      vy = 0.0;
      dis = sqrt(pow(vx,2)+pow(vy,2));
      last_angle = angle2;
      angle = angle3;
    }
    dangle = last_angle - angle;
    last_angle = angle;

    feature.x = dis;
    feature.y = angle;
    feature.z = dangle;

    enter_elevator_feature.push_back(feature);
    
    // cout<<"Enter Feature = "<<feature<<'\n';
  }

  //---exit feature--------//
  for(int i=0; i < 7;i++)
  {
    if(i == 0)
    {
      dis = 0.0;
      angle = angle2 =angle3=0.0;
      vx = vy =0.0;
    }
    else if(i == 1 )    
    {
      vx = 0.0;
      vy = -exit_door_y2_;
      dis = sqrt(pow(vx,2)+pow(vy,2));
      angle = atan2(vy,vx);
    }
    else if(i == 2)
    {
      vx = -exit_door_x1_;
      vy = 0.0;
      dis = sqrt(pow(vx,2)+pow(vy,2));
      angle = atan2(vy,vx);
      angle2 = angle;
    }
    else if(i == 3)
    {
      vx = 0.0;
      vy = -exit_door_y2_;
      dis = sqrt(pow(vx,2)+pow(vy,2));
      angle = atan2(vy,vx);
      

    }else if(i == 4)
    {
      vx = exit_door_x1_;
      vy = 0.0;
      dis = sqrt(pow(vx,2)+pow(vy,2));
      angle = atan2(vy,vx);
      angle3 = angle;

    }else if(i == 5)
    {
      vx = 0.0;
      vy = -exit_door_y2_;
      dis = sqrt(pow(vx,2)+pow(vy,2));
      angle = atan2(vy,vx);
    }
    else if(i == 6)
    {
      vx = 0.0;
      vy = 0.0;
      dis = sqrt(pow(vx,2)+pow(vy,2));
      last_angle = angle2;
      angle = angle3;
    }

    dangle = last_angle - angle;
    last_angle = angle;

    if(dangle > M_PI)
    {
      dangle = -2*M_PI + dangle;
    }else if(dangle < -M_PI)
    {
      dangle = 2*M_PI + dangle;
    }

    feature.x = dis;
    feature.y = angle;
    feature.z = dangle;

    exit_elevator_feature.push_back(feature);
    
    // cout<<"Exit Feature = "<<feature<<'\n';
  }
}

void ScanCallback(const sensor_msgs::LaserScanConstPtr &scan)
{
  static geometry_msgs::Pose pose;
  static geometry_msgs::PoseArray scan_poses;
  static double angle;

  std::vector<double> range;
  std::vector<double> intensities;

  scan_frame_ = scan->header.frame_id;

  if(sub_mode_ != 1)
    return;

  if(!enable_mode_)
  {
    if(control_status_ != 0 )
    {
      pose_pub_.publish(prosses_poses_);
    }
    return;
  }

  if(scan->ranges.size()==0)
    return;
  
  scan_poses.header.stamp = ros::Time::now();
  
  scan_poses.header.frame_id = scan_frame_;
  scan_poses.poses.clear();


  for (int i = 0; i < scan->ranges.size(); i++)
  {
    if(scan->ranges[i] > 0.001)
    {
      angle = scan->angle_min + (i * scan->angle_increment);
      if(scan->ranges[i] < max_scan_range_)
      {
        pose.position.x = scan->ranges[i]*cos(angle);
        pose.position.y = scan->ranges[i]*sin(angle);
        scan_poses.poses.push_back(pose);
        //cout<<"scan_poses x = "<<pose.position.x<<" scan_poses y = "<<pose.position.y<<'\n';
        //cout<<"angle = "<<angle<<'\n';
      }
    }
  }
  matching_success_ = true;
  // FeatureExtract(scan_poses);
  if (status_ == "enter")
    FeatureExtract(scan_poses);
  else if (status_ == "exit")
    EstimatePoseInside(scan);
  FeatureExtract(scan_poses);
  if(!matching_success_)
  {
    pose_pub_.publish(hold_poses_);
  }
}
//--------------------------------------------------------------------

void ControlStatusCallback(const campusrover_msgs::ElevatorControlStatusConstPtr &con_status)
{
  geometry_msgs::Pose prosses_pose;
  
  static campusrover_msgs::ElevatorStatusChecker status_msg;
  static campusrover_msgs::ElevatorControlStatus control_status_msg;

  control_status_ = con_status->control_status;

  if(control_status_ == control_status_msg.STANDBY)
  {
    enable_mode_ = false;
    pose_filter_first_time_ = true;
    feature_filter_first_time_ = true;
    avg_pose_first_time_ = true;
    feature_edit_enable_ = true;
    feature_update_enable_ = true;
    pose_edit_enable_ = true;
    position_find_done_ = false;
    prosses_poses_.poses.clear();
    hold_poses_.poses.clear();
    return;
  }

  prosses_poses_.header.frame_id = map_frame_;
  prosses_poses_.poses.clear();

  

  double angle_1;

  UpdateCampusRoverPoseFromTF();
  if(hold_poses_.poses.size() != 0)
  {
    for (int i = 0; i < hold_poses_.poses.size(); i++)
    {
      angle_1 = atan2(robot_tf_pose_.position.y - hold_poses_.poses[i].position.y, robot_tf_pose_.position.x - hold_poses_.poses[i].position.x);
      // angle_1 = atan2(hold_poses_.poses[0].position.y - robot_tf_pose_.position.y, hold_poses_.poses[0].position.x - robot_tf_pose_.position.y);

      angle_1 = angle_1 - elevator_pose_yaw_.at(i);

      angle_normalize(angle_1);

      // cout << "angle_1 : " << angle_1<<'\n';
      
      if (abs(angle_1 ) < 1.57)
      {
        prosses_pose.position.z = INSIDE;
      }
      else
      {
        prosses_pose.position.z = OUTSIDE;
      }
    }
  }

  // cout << "prosses_pose.position.z : " << prosses_pose.position.z<<'\n';
  

  

  if(control_status_ == control_status_msg.MOVE_TO_OUTSIDE_BUTTON 
    && !position_find_done_)
  {
    enable_mode_ = true;
    sub_mode_ = 1.0; // LaserScan
    feature_point_neighborhood_dis_ = enter_feature_point_neighborhood_dis_; //
    break_point_neighborhood_dis_ = enter_break_point_neighborhood_dis_; //
    window_size_ = enter_window_size_; //
    corner_feature_threshold = enter_corner_feature_threshold_; //
    status_ = "enter";
    if(hold_poses_.poses.size() != 0)
    {
      if(hold_poses_.poses[0].position.z >= 6.0 )
      {
        status_msg.request.node_name.data = "position_finder";
        status_msg.request.status.data = true;
        StatusCheckCallService(status_check_client_, status_msg);
        position_find_done_ = true;
        // feature_edit_enable_ = false;
      }
    }
  }
  else if(control_status_ == control_status_msg.MOVE_TO_OUTSIDE_BUTTON 
          && position_find_done_)
  {
    enable_mode_ = false;
    // prosses_pose.position.x = hold_poses_.poses[0].position.x;
    // prosses_pose.position.y = hold_poses_.poses[0].position.y;
    // prosses_pose.orientation = hold_poses_.poses[0].orientation; 
    // prosses_poses_.poses.push_back(prosses_pose);
    // feature_edit_enable_ = false;
    // feature_filter_first_time_ = true;
    prosses_poses_ = hold_poses_;
    prosses_poses_.poses[0].position.z = OUTSIDE;
    pose_pub_.publish(prosses_poses_);
    
  }
  else if(control_status_ == control_status_msg.MOVE_TO_OUTSIDE_STANDBY_POSITION)
  {
    enable_mode_ = false;
    // prosses_pose.position.x = hold_poses_.poses[0].position.x;
    // prosses_pose.position.y = hold_poses_.poses[0].position.y;
    // prosses_pose.orientation = hold_poses_.poses[0].orientation; 
    // prosses_poses_.poses.push_back(prosses_pose);
    prosses_poses_ = hold_poses_;
    prosses_poses_.poses[0].position.z = OUTSIDE;
    // pose_filter_first_time_ = true;
    position_find_done_ = false;
    pose_pub_.publish(prosses_poses_);
  }
  else if (control_status_ == control_status_msg.WAIT_FOR_OUTSIDE_DOOR_OPEN)
  {
    enable_mode_ = true;
    if(hold_poses_.poses.size() != 0)
    {
      if(hold_poses_.poses[0].position.z >= 6.0 )
      {
        // enable_mode_ = false;
        // feature_edit_enable_ = false;
        // pose_edit_enable_ = false;
        prosses_poses_ = hold_poses_;
        prosses_poses_.poses[0].position.z = OUTSIDE;
        pose_pub_.publish(prosses_poses_);
      }
    }
  }
  else if(control_status_ == control_status_msg.ENTER_ELEVATOR_OUTSIDE 
          || control_status_ == control_status_msg.ENTER_ELEVATOR_INSIDE)
          // || control_status_ == control_status_msg.ENTER_ELEVATOR_INSIDE_NO_ROTATE || control_status_ == control_status_msg.ENTER_ELEVATOR_INSIDE_ROTATE)

  {
    if(prosses_pose.position.z == INSIDE)
    {
      // cout << "inside " <<'\n';
      enable_mode_ = false;
      prosses_pose.position.x = hold_poses_.poses[0].position.x;
      prosses_pose.position.y = hold_poses_.poses[0].position.y;
      prosses_pose.orientation = hold_poses_.poses[0].orientation; 
      prosses_poses_.poses.push_back(prosses_pose);
      // prosses_poses_ = hold_poses_;
      pose_pub_.publish(prosses_poses_);
    }
    else
    {
      // cout << "outside " <<'\n';
      enable_mode_ = true;
      if(hold_poses_.poses.size() != 0)
      {
        if(hold_poses_.poses[0].position.z >= 6.0 )
        {
          // enable_mode_ = false;
          // feature_update_enable_ = false;
          feature_edit_enable_ = false;
          pose_edit_enable_ = false;
          prosses_poses_ = hold_poses_;
          prosses_poses_.poses[0].position.z = OUTSIDE;
          pose_pub_.publish(prosses_poses_);
        }
      }
      // enable_mode_ = false;
      // prosses_poses_ = hold_poses_;
      // pose_pub_.publish(prosses_poses_);
    }
    
    
  }
  else if(control_status_ == control_status_msg.PRESS_OUTSIDE_BUTTON)
  {
    if(prosses_pose.position.z > 0)
    {
      enable_mode_ = false;
      // prosses_pose.position.x = hold_poses_.poses[0].position.x;
      // prosses_pose.position.y = hold_poses_.poses[0].position.y;
      // prosses_pose.orientation = hold_poses_.poses[0].orientation; 
      // prosses_poses_.poses.push_back(prosses_pose);
      prosses_poses_ = hold_poses_;
      pose_pub_.publish(prosses_poses_);
    }
  }
  else if (control_status_ > control_status_msg.ENTER_ELEVATOR_INSIDE 
  // else if (control_status_ > control_status_msg.ENTER_ELEVATOR_INSIDE_ROTATE 
          && control_status_ <= control_status_msg.LEAVE_ELEVATOR_OUTSIDE) // inside
  {
    status_ = "exit";
    // enable_mode_ = false;
    enable_mode_ = true;
    // sub_mode_ = 2;

    // if (!position_find_done_ && enable_mode_)
    // {
    //   feature_filter_first_time_ = true;
    //   feature_edit_enable_ = true;
    //   feature_update_enable_ = true;
    // }

    if(hold_poses_.poses.size() != 0)
    {
      if(hold_poses_.poses[0].position.z >= 6.0 )
      {
        // enable_mode_ = false;
        prosses_pose.position.x = hold_poses_.poses[0].position.x;
        prosses_pose.position.y = hold_poses_.poses[0].position.y;
        prosses_pose.orientation = hold_poses_.poses[0].orientation; 
        prosses_poses_.poses.push_back(prosses_pose);
        // prosses_poses_ = hold_poses_;
        pose_pub_.publish(prosses_poses_);
      }
    }
    // prosses_pose.position.x = hold_poses_.poses[0].position.x;
    // prosses_pose.position.y = hold_poses_.poses[0].position.y;
    // prosses_pose.orientation = hold_poses_.poses[0].orientation; 
    // prosses_poses_.poses.push_back(prosses_pose);
    // pose_pub_.publish(prosses_poses_);
  }
  else
  {
    enable_mode_ = false;
    pose_filter_first_time_ = true;
    feature_filter_first_time_ = true;
    avg_pose_first_time_ = true;
    feature_update_enable_ = true;
    position_find_done_ = false;
    feature_edit_enable_ = true;
    // pose_pub_.publish(prosses_poses_);
  }
  
}

//--------------------------------------------------------------------
struct Scan{
  float r;
  float th;
};

void FeatureExtract(geometry_msgs::PoseArray &scan_poses)
{
  std::vector<Scan> scans;
  for (int i = 0; i < scan_poses.poses.size(); i++)
  {
    Scan scan;
    scan.r = sqrt(pow(scan_poses.poses.at(i).position.x,2)+pow(scan_poses.poses.at(i).position.y,2));
    scan.th = atan2(scan_poses.poses.at(i).position.y, scan_poses.poses.at(i).position.x);
    scans.push_back(scan);
  }

  std::vector<float> c;
  std::vector<std::pair<int, float>> edges;

  for (int i = 0; i < scans.size(); i++)
  {
    std::pair<int, int> S;
    S.first = S.second = i;

    for (int k = i; k > 0; k--)
    {
      if (sqrt(pow(scans.at(k).r*cos(scans.at(k).th)-scans.at(i).r*cos(scans.at(i).th), 2) +
              pow(scans.at(k).r*sin(scans.at(k).th)-scans.at(i).r*sin(scans.at(i).th), 2)) < 0.1)
      {
        S.first = k;
      }
      else
      {
        S.first = k;
        break;
      }
    }
    for (int k = i; k < scans.size(); k++)
    {
      if (sqrt(pow(scans.at(k).r*cos(scans.at(k).th)-scans.at(i).r*cos(scans.at(i).th), 2) +
              pow(scans.at(k).r*sin(scans.at(k).th)-scans.at(i).r*sin(scans.at(i).th), 2)) < 0.1)
      {
        S.second = k;
      }
      else
      {
        S.second = k;
        break;
      }
    }

    if ((i - S.first == 1 || S.second - i == 1) && (S.second - S.first) > 5)
    {
      c.push_back(-1.0);
      continue;
    }

    if ((i - S.first) >= (S.second - i))
    {
      S.first = i - (S.second - i);
    }
    else
    {
      S.second = i + (i - S.first);
    }

    if ((S.second - S.first) < 5)
    {
      c.push_back(0);
      continue;
    }

    float diff_sum = 0;
    for (int j = S.first; j<=S.second; j++)
    {
      float diff = 0;
      if (j == i)
      {
        continue;
      }
      else
      {
        diff = scans.at(j).r - scans.at(i).r;
      }
      diff_sum += diff;
    }
    // c.push_back(abs(diff_sum)/((S.second - S.first)*scans.at(i).r));
    // c.push_back(abs(diff_sum)/(S.second - S.first));
    // c.push_back(pow(diff_sum, 2)/((S.second - S.first)*scans.at(i).r));
    c.push_back(pow(diff_sum/(S.second - S.first), 2));
  }
  for (int i = 0; i < c.size(); i++)
  {
    if (c.at(i) > smooth_thershold)
    {
      std::pair<int, float> edge;
      edge.first = i; // scan index
      edge.second = c.at(i); // smoothness
      edges.push_back(edge);
    }
    else if (c.at(i) == -1.0)
    {
      std::pair<int, float> edge;
      edge.first = i; // scan index
      edge.second = c.at(i); // smoothness
      edges.push_back(edge);
    }
  }

  std::vector<std::vector<std::pair<int, float>>> groups;
  std::vector<std::pair<int, float>> edge_group;
  
  if (edges.size() == 0)
  {
    return;
  }

  for (int i = 0; i < edges.size()-1; i++)
  {
    if (sqrt(pow(scan_poses.poses.at(edges.at(i).first).position.x - scan_poses.poses.at(edges.at(i+1).first).position.x,2) +
        pow(scan_poses.poses.at(edges.at(i).first).position.y - scan_poses.poses.at(edges.at(i+1).first).position.y,2)) < group_win*scans.at(edges.at(i).first).r)
    {
      edge_group.push_back(edges[i]);
    }
    else if (edge_group.size() != 0)
    {
      groups.push_back(edge_group);
      edge_group.clear();
    }
    else
    {
      edge_group.push_back(edges[i]);
      groups.push_back(edge_group);
      edge_group.clear();
    }
  }
  edge_group.push_back(edges.back());
  groups.push_back(edge_group);

  std::vector<int> edge;

  for (int i = 0; i < groups.size(); i++)
  {
    std::pair<int, float> last = groups.at(i).at(0);
    for (int j = 0; j < groups.at(i).size(); j++)
    {
      if (groups.at(i).at(j).second >= last.second)
      {
        last = groups.at(i).at(j);
      }
      if (groups.at(i).at(j).second == -1.0)
      {
        last = groups.at(i).at(j);
        break;
      }
    }
    edge.push_back(last.first);
  }

  std::vector<geometry_msgs::Point> featuer_points_1;
  for (int i = 0; i < edge.size(); i++)
  {
    geometry_msgs::Point pt;
    pt.x = scan_poses.poses.at(edge.at(i)).position.x;
    pt.y = scan_poses.poses.at(edge.at(i)).position.y;
    featuer_points_1.push_back(pt);
  }

  float theta_threshold = (theta_thershold/180)*M_PI;
  std::vector<geometry_msgs::Point> featuer_points_2;

  featuer_points_2.push_back(featuer_points_1.front());
  for (int i = 1; i < featuer_points_1.size()-1; i++)
  {
    double left_theta = atan2(featuer_points_1.at(i+1).y-featuer_points_1.at(i).y, featuer_points_1.at(i+1).x-featuer_points_1.at(i).x);
    double right_theta = atan2(featuer_points_1.at(i-1).y-featuer_points_1.at(i).y, featuer_points_1.at(i-1).x-featuer_points_1.at(i).x);
    if (left_theta < 0)
    {
      left_theta += 2*M_PI;
    }
    if (right_theta < 0)
    {
      right_theta += 2*M_PI;
    }
    double theta_delta = abs(left_theta - right_theta);

    if (theta_delta > M_PI)
    {
      theta_delta = 2*M_PI - theta_delta;
    }

    if (theta_delta <= theta_threshold)
    {
      featuer_points_2.push_back(featuer_points_1.at(i));
    }
  }
  featuer_points_2.push_back(featuer_points_1.back());
  
  FeatureFilter(featuer_points_2);
  VisualizefeaturePoint(featuer_points_2);
  FeatureMatching(featuer_points_2);
}
//--------------------------------------------------------------------
void FeatureFilter(std::vector<geometry_msgs::Point> &feature)
{
  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tfListener(tfBuffer);
  static std::vector<std::vector<geometry_msgs::Point>> avg_point;
  static bool first = true;

  std::vector<geometry_msgs::Point> input, output;
  geometry_msgs::Point out;

  if (feature_filter_first_time_)
  {
    avg_point.clear();
    feature_filter_first_time_ = false;
    first = true;
  }

  input.clear();
  for (int i = 0; i < feature.size(); i++)
  {
    geometry_msgs::PointStamped before_point, map_point;
    before_point.header.frame_id = scan_frame_;
    before_point.point = feature.at(i);

    try
    {
      tfBuffer.transform(before_point, map_point, map_frame_);
    }
    catch (tf2::TransformException &ex)
    {
      ROS_WARN("elevator point finder : %s",ex.what());
      ros::Duration(0.5).sleep();
      return;
    }
    input.push_back(map_point.point);
  }

  if (first)
  {
    for (int i = 0; i < input.size(); i++)
    {
      std::vector<geometry_msgs::Point> point;
      input.at(i).z = 2;
      point.push_back(input.at(i));
      avg_point.push_back(point);
    }
    first = false;
    return;
  }

  if (feature_update_enable_)
  {
    for (int j = 0; j < input.size(); j++)
    {
      bool match = false;
      for (int k = 0; k < avg_point.size(); k++)
      {
        double x=0, y=0;
        for (int i = 0; i < avg_point.at(k).size(); i++)
        {
          x += avg_point.at(k).at(i).x;
          y += avg_point.at(k).at(i).y;
        }
        x /= avg_point.at(k).size();
        y /= avg_point.at(k).size();

        if (sqrt(pow(input.at(j).x - x,2)+pow(input.at(j).y - y,2))< 0.08)
        {
          match = true;
          if (avg_point.at(k).size() > avg_pose_size_)
          {
            avg_point.at(k).erase(avg_point.at(k).begin());
            avg_point.at(k).push_back(input.at(j));
          }
          else
          {
            avg_point.at(k).push_back(input.at(j));
          }
        }
      }
      if (!match && feature_edit_enable_)
      {
        std::vector<geometry_msgs::Point> point;
        input.at(j).z = 0;
        point.push_back(input.at(j));
        avg_point.push_back(point);
      }
    }
  }

  for (int k = 0; k < avg_point.size(); k++)
  {
    bool match = false;
    double x=0, y=0;
    for (int i = 0; i < avg_point.at(k).size(); i++)
    {
      x += avg_point.at(k).at(i).x;
      y += avg_point.at(k).at(i).y;
    }
    x /= avg_point.at(k).size();
    y /= avg_point.at(k).size();

    for (int j = 0; j < input.size(); j++)
    {
      if (sqrt(pow(input.at(j).x - x,2)+pow(input.at(j).y - y,2))< 0.08)
      {
        match = true;
        for (int i = 0; i < avg_point.at(k).size(); i++)
        {
          if (avg_point.at(k).at(i).z <= 10)
          {
            avg_point.at(k).at(i).z += 2;
          }
        }
      }
    }
    if (!match && feature_edit_enable_)
    {
      for (int i = 0; i < avg_point.at(k).size(); i++)
      {
        if (avg_point.at(k).at(i).z > 0)
        {
          avg_point.at(k).at(i).z --;
        }
      }
    }
  }

  for (int k = 0; k < avg_point.size(); k++)
  {
    double x=0, y=0;
    for (int i = 0; i < avg_point.at(k).size(); i++)
    {
      x += avg_point.at(k).at(i).x;
      y += avg_point.at(k).at(i).y;
    }
    x /= avg_point.at(k).size();
    y /= avg_point.at(k).size();

    out.x = x;
    out.y = y;

    if (avg_point.at(k).at(0).z > 5)
    {
      output.push_back(out);
    }
  }

  for (int i = 0; i < output.size(); i++)
  {
    geometry_msgs::PointStamped before_point, scan_point;
    before_point.header.frame_id = map_frame_;
    before_point.point = output.at(i);

    try
    {
      tfBuffer.transform(before_point, scan_point, scan_frame_);
    }
    catch (tf2::TransformException &ex)
    {
      ROS_WARN("elevator point finder : %s",ex.what());
      ros::Duration(0.5).sleep();
      return;
    }
    output.at(i) = scan_point.point;
  }
  
  feature = output;
}
//-----------------------------------------------------------------------------------------------
void FeatureMatching(std::vector<geometry_msgs::Point> points)
{
  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tfListener(tfBuffer);
  static double last_point_x,last_point_y;
  static geometry_msgs::Point find_feature_point;
  static std::vector<geometry_msgs::Point> elevator_feature_points;
  static double dis, angle, dangle;
  static double last_angle;
  static geometry_msgs::PoseStamped feature_pose;
  static geometry_msgs::Pose elevator_pose;
  // static campusrover_elevator::ElevatorPoseelevator_pose;
  static geometry_msgs::PoseArray elevator_poses;
  // static campusrover_elevator::ElevatorPoseArray elevator_poses;
  static tf2::Quaternion elevator_pose_q_tf;
  static geometry_msgs::Quaternion elevator_pose_q_msg;
  static double angle1, angle2;
  static double dangle_featrue;
  static double door_corner_dis;
  static double door_corner_dangle;
  static double error_dangle;

  elevator_feature_points.clear();
  elevator_poses.poses.clear();
  elevator_poses.header.frame_id = scan_frame_;
  elevator_poses.header.stamp =ros::Time::now();

  //std::cout<<"points_size"<<points.size()<<'\n';

  if(points.size()<3)
  {
    matching_success_ = false;
    return;
  }
    
  
  if(status_ == "enter")
  {
    dangle_featrue = enter_elevator_feature[2].z;
    door_corner_dis = enter_door_y1_;
    door_corner_dangle =  enter_elevator_feature[6].z;
  }
  else if(status_ == "exit")
  {
    dangle_featrue = exit_elevator_feature[2].z;
    door_corner_dis = exit_door_y1_;
    door_corner_dangle = exit_elevator_feature[6].z;
  }

  for(int i = 0; i < points.size()-2;i++)
  {
    
    dis = angle = dangle =0;
    for(int f = i; f < i+3;f++)
    {
      // if(f >= points.size()-3)
      // {
      //   break;
      // }
      if(f == i)
      {
        last_point_x = points[f].x;
        last_point_y = points[f].y;
        last_angle = 0.0;
      }else
      {
        dis = sqrt(pow(last_point_x - points[f].x,2)+pow(last_point_y - points[f].y,2));
        angle = atan2(last_point_y - points[f].y, last_point_x - points[f].x);
        dangle = last_angle - angle;
        last_point_x = points[f].x;
        last_point_y = points[f].y;
        last_angle = angle;

        if(dangle > M_PI)
        {
          dangle = -2*M_PI + dangle;
        }else if(dangle < -M_PI)
        {
          dangle = 2*M_PI + dangle;
        }
      } 

      if(f == i+2)
      {

        error_dangle = dangle - dangle_featrue;

        if(error_dangle > M_PI)
        {
          error_dangle = -2*M_PI + error_dangle;
        }
        else if(error_dangle < -M_PI)
        {
          error_dangle = 2*M_PI + error_dangle;
        }

        if(abs(error_dangle) <= elevator_feature_d_angle_range_)
        //if(abs(dangle - dangle_featrue ) <= 0.5)
        {
          find_feature_point.x = points[i+1].x;
          find_feature_point.y = points[i+1].y;
          find_feature_point.z = i+1;
          elevator_feature_points.push_back(find_feature_point);
        }
        
      }
      
    }
    // std::cout << " dangle " <<  dangle <<'\n';
    
  }
  // std::cout<<"---------------------------------"<<'\n';
  VisualizeCorner(elevator_feature_points);

  if(elevator_feature_points.size()<2)
  {
    matching_success_ = false;
    return;
  }

  for(int f_1 = 0;f_1 < elevator_feature_points.size();f_1++)
  {
    for(int f_2 = 0;f_2 < elevator_feature_points.size();f_2++)
    { 
      if(abs(sqrt(pow(elevator_feature_points[f_1].x -elevator_feature_points[f_2].x,2)+
                  pow(elevator_feature_points[f_1].y -elevator_feature_points[f_2].y,2))-door_corner_dis) <= elevator_feature_dis_range_)
      {

        angle1 = atan2(points[elevator_feature_points[f_1].z].y - points[elevator_feature_points[f_1].z+1].y, 
                              points[elevator_feature_points[f_1].z].x - points[elevator_feature_points[f_1].z+1].x);

        angle2 = atan2(points[elevator_feature_points[f_2].z-1].y - points[elevator_feature_points[f_2].z].y, 
                              points[elevator_feature_points[f_2].z-1].x - points[elevator_feature_points[f_2].z].x);
        dangle = angle1 - angle2;
        if(dangle > M_PI)
        {
          dangle = -2*M_PI + dangle;
        }
        else if(dangle < -M_PI)
        {
          dangle = 2*M_PI + dangle;
        }

        //std::cout << " dangle " <<  dangle <<'\n';
        

        error_dangle = dangle - door_corner_dangle;

        if(error_dangle > M_PI)
        {
          error_dangle = -2*M_PI + error_dangle;
        }
        else if(error_dangle < -M_PI)
        {
          error_dangle = 2*M_PI + error_dangle;
        }
        
        if(abs(error_dangle) <= elevator_feature_d_angle_range_)
        {
          elevator_pose.position.x = ((elevator_feature_points[f_1].x +elevator_feature_points[f_2].x)/2.0);
          elevator_pose.position.y = (elevator_feature_points[f_1].y +elevator_feature_points[f_2].y)/2.0;
          double yaw = atan2(elevator_feature_points[f_1].y - elevator_feature_points[f_2].y, 
                              elevator_feature_points[f_1].x - elevator_feature_points[f_2].x);
          elevator_pose_q_tf.setRPY(0.0,0.0,yaw);
          elevator_pose_q_msg = tf2::toMsg(elevator_pose_q_tf);
          elevator_pose.orientation = elevator_pose_q_msg;

          elevator_poses.poses.push_back(elevator_pose);
          
        }
      }
    }
  }

  if(elevator_pose_filter_ )
  {
    pose_filter(elevator_poses);
  }

  if (elevator_poses.poses.size() != 0)
  {
    elevator_pose_yaw_.clear();
    hold_poses_.poses.clear();
  }
  
  for (int i = 0; i < elevator_poses.poses.size(); i++)
  {
    double shift_roll, shift_pitch, shift_yaw;

    tf::Quaternion sq( elevator_poses.poses.at(i).orientation.x,
                      elevator_poses.poses.at(i).orientation.y,
                      elevator_poses.poses.at(i).orientation.z,
                      elevator_poses.poses.at(i).orientation.w);
    tf::Matrix3x3 sm(sq);
    
    sm.getRPY(shift_roll, shift_pitch, shift_yaw);

    elevator_poses.poses.at(i).position.x = elevator_poses.poses.at(i).position.x + shift_x_*cos(shift_yaw+M_PI/2.0) - shift_y_*sin(shift_yaw+M_PI/2.0);
    elevator_poses.poses.at(i).position.y = elevator_poses.poses.at(i).position.y + shift_x_*sin(shift_yaw+M_PI/2.0) + shift_y_*cos(shift_yaw+M_PI/2.0);

    if (status_ == "enter")
    {
      elevator_pose_q_tf.setRPY(0.0,0.0,shift_yaw+M_PI/2.0);
    }
    else if (status_ == "exit")
    {
      elevator_pose_q_tf.setRPY(0.0,0.0,(shift_yaw+M_PI/2.0));
    }
    elevator_pose_q_msg = tf2::toMsg(elevator_pose_q_tf);
    elevator_poses.poses.at(i).orientation = elevator_pose_q_msg;
    elevator_pose_yaw_.push_back(shift_yaw+M_PI/2.0);
    
    hold_poses_.header.frame_id = map_frame_;
    hold_poses_.poses.push_back(elevator_poses.poses.at(i));

  }
  // pose_pub_.publish(elevator_poses);
}
//-----------------------------------------------------------------------------------------------
void ransac(pcl::PointCloud<PointType>::Ptr cloud, pcl::PointIndices::Ptr inliers, pcl::ModelCoefficients::Ptr coefficients)
{
  static pcl::SACSegmentation<PointType> seg;

  seg.setOptimizeCoefficients(true);
  seg.setModelType(pcl::SACMODEL_LINE);
  seg.setMethodType(pcl::SAC_RANSAC);
  seg.setDistanceThreshold(0.01);
  seg.setMaxIterations(100);
  seg.setInputCloud(cloud);
  seg.segment(*inliers, *coefficients);
}
//-----------------------------------------------------------------------------------------------
pcl::PointCloud<PointType>::Ptr cloudFilter(pcl::PointCloud<PointType>::Ptr cloud, pcl::PointIndices::Ptr indices, bool negative)
{
  pcl::PointCloud<PointType>::Ptr cloud_out(new pcl::PointCloud<PointType>);
  pcl::ExtractIndices<PointType> extract;
  
  extract.setInputCloud(cloud);
  extract.setIndices(indices);
  extract.setNegative(negative);
  extract.filter(*cloud_out);

  return cloud_out;
}
//-----------------------------------------------------------------------------------------------
void EstimatePoseInside(const sensor_msgs::LaserScanConstPtr &scan)
{
  static geometry_msgs::PoseStamped before_pose;
  static geometry_msgs::PoseStamped elevator_pose;
  static geometry_msgs::PoseArray elevator_poses;
  static sensor_msgs::PointCloud2 tmp;
  static laser_geometry::LaserProjection proj;
  static tf2::Quaternion elevator_pose_q_tf;
  static geometry_msgs::Quaternion elevator_pose_q_msg;
  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tfListener(tfBuffer);

  std::vector<pcl::ModelCoefficients> line_vectors;
  
  pcl::PointIndices::Ptr inliers(new pcl::PointIndices);
  pcl::ModelCoefficients::Ptr coefficients(new pcl::ModelCoefficients);
  pcl::PointCloud<PointType>::Ptr inlier_cloud, outlier_cloud;
  pcl::PointCloud<PointType>::Ptr inter_point(new pcl::PointCloud<PointType>);
  pcl::PointCloud<PointType>::Ptr cloud(new pcl::PointCloud<PointType>);
  PointType initial_pose;
    
  int total_points = cloud->points.size();
  int count = 0;
  double _roll, _pitch, _yaw;
  
  elevator_poses.poses.clear();

  proj.projectLaser(*scan, tmp);
  pcl::fromROSMsg(tmp, *cloud);

  before_pose.header.frame_id = hold_poses_.header.frame_id;
  before_pose.pose.position = hold_poses_.poses[0].position;
  before_pose.pose.orientation = hold_poses_.poses[0].orientation;

  if(before_pose.header.frame_id != scan_frame_)
  {
    try
    {
      tfBuffer.transform(before_pose, elevator_pose, scan_frame_);
    }
    catch (tf2::TransformException &ex)
    {
      ROS_WARN("elevator point finder : %s",ex.what());
      ros::Duration(0.5).sleep();
      return;
    }
  }
  else
  {
    elevator_pose.header.frame_id = hold_poses_.header.frame_id;
    elevator_pose.pose = hold_poses_.poses.at(0);
  }
  hold_poses_.poses.clear();

  tf::Matrix3x3 sm(tf::Quaternion(elevator_pose.pose.orientation.x,
                                  elevator_pose.pose.orientation.y,
                                  elevator_pose.pose.orientation.z,
                                  elevator_pose.pose.orientation.w));
  sm.getRPY(_roll, _pitch, _yaw);
    
  initial_pose.x = elevator_pose.pose.position.x;
  initial_pose.y = elevator_pose.pose.position.y;
  initial_pose.z = _yaw;

  while (cloud->points.size() > 0.05 * total_points && count < 4)
  {
    ransac(cloud, inliers, coefficients);

    inlier_cloud = cloudFilter(cloud, inliers, false);
    outlier_cloud = cloudFilter(cloud, inliers, true);

    line_vectors.push_back(*coefficients);

    count++;

    cloud = outlier_cloud;
  }
  // std::cout << "found " << count << " lines" << std::endl;
  if (line_vectors.size() == 0)
    return;

  for (int i = 0; i < line_vectors.size(); i++)
  {
    for (int j = 0; j < line_vectors.size(); j++)
    {
      if (i == j)
        continue;

      double th_1 = std::atan2(line_vectors.at(i).values.at(4), line_vectors.at(i).values.at(3));
      double th_2 = std::atan2(line_vectors.at(j).values.at(4), line_vectors.at(j).values.at(3));
      double d_th = th_1 - th_2;

      if(d_th > M_PI)
        d_th -= 2*M_PI;
      else if(d_th < -M_PI)
        d_th += 2*M_PI;
      
      if (d_th > 1.46 && d_th < M_PI - 1.46)
      {
        double x1 = line_vectors.at(i).values.at(0);
        double y1 = line_vectors.at(i).values.at(1);

        double s1 = line_vectors.at(i).values.at(3);
        double s2 = line_vectors.at(i).values.at(4);

        double x2 = line_vectors.at(j).values.at(0);
        double y2 = line_vectors.at(j).values.at(1);

        double s3 = line_vectors.at(j).values.at(3);
        double s4 = line_vectors.at(j).values.at(4);

        double t = ((x1-x2)*s4-(y1-y2)*s3)/(s1*s4-s2*s3);

        pcl::PointXYZ point;
        point.x = x1-t*s1;
        point.y = y1-t*s2;
        point.z = 0;
        inter_point->push_back(point);
      }
    }
  }

  // std::cout << "found " << inter_point->points.size() << " intersect points" << std::endl;
  
  pcl::PointCloud<PointType>::Ptr corner_set(new pcl::PointCloud<PointType>);
  for (int i = 0; i < 4; i++)
  {
    corner_set->points.push_back(initial_pose);
    corner_set->points.at(i).z = 1;
  }
  

  for (int i = 0; i < inter_point->points.size(); i++)
  {
    double theta = std::atan2(inter_point->points.at(i).y-initial_pose.y,
                              inter_point->points.at(i).x-initial_pose.x)
                    -initial_pose.z;
    
    if(theta > M_PI)
      theta -= 2*M_PI;
    else if(theta < -M_PI)
      theta += 2*M_PI;
    
    // std::cout << theta << std::endl;

    if (std::abs(theta) < 1.25 && std::abs(theta) > 0.2) // front
    {
      if (theta > 0) // left
      {
        if (
            std::pow(inter_point->points.at(i).x-initial_pose.x,2)+
            std::pow(inter_point->points.at(i).y-initial_pose.y,2)-
            std::pow(corner_set->points.at(0).x-initial_pose.x,2)-
            std::pow(corner_set->points.at(0).y-initial_pose.y,2) > 0
           )
        {
          corner_set->points.at(0) = inter_point->points.at(i);
        }
      }
      else // right
      {
        if (
            std::pow(inter_point->points.at(i).x-initial_pose.x,2)+
            std::pow(inter_point->points.at(i).y-initial_pose.y,2)-
            std::pow(corner_set->points.at(1).x-initial_pose.x,2)-
            std::pow(corner_set->points.at(1).y-initial_pose.y,2) > 0
           )
        {
          corner_set->points.at(1) = inter_point->points.at(i);
        }
      }
    }
    else if (std::abs(theta) > 1.25 && std::abs(theta) < 1.9) // back
    {
      if (theta > 0) // left
      {
        if (
            std::pow(inter_point->points.at(i).x-initial_pose.x,2)+
            std::pow(inter_point->points.at(i).y-initial_pose.y,2)-
            std::pow(corner_set->points.at(2).x-initial_pose.x,2)-
            std::pow(corner_set->points.at(2).y-initial_pose.y,2) > 0
           )
        {
          corner_set->points.at(2) = inter_point->points.at(i);
        }
      }
      else // right
      {
        if (
            std::pow(inter_point->points.at(i).x-initial_pose.x,2)+
            std::pow(inter_point->points.at(i).y-initial_pose.y,2)-
            std::pow(corner_set->points.at(3).x-initial_pose.x,2)-
            std::pow(corner_set->points.at(3).y-initial_pose.y,2) > 0
           )
        {
          corner_set->points.at(3) = inter_point->points.at(i);
        }
      }
    }
  }
  
  // std::cout << "found " << corner_set->points.size() << " match points" << std::endl;

  double x1 = -INFINITY;
  double y1 = -INFINITY;

  double s1 = -INFINITY;
  double s2 = -INFINITY;

  double x2 = -INFINITY;
  double y2 = -INFINITY;

  double s3 = -INFINITY;
  double s4 = -INFINITY;

  double yaw = 0;
  int th_count = 0;
  int pt_count = 0;

  pcl::PointXYZ point;
  
  if (corner_set->points.at(2).z != 1 && corner_set->points.at(3).z != 1)
  {
    PointType p1, p2;
    p1 = corner_set->points.at(2);
    p2 = corner_set->points.at(3);

    double theta = std::atan2(p1.y-p2.y, p1.x-p2.x) - M_PI_2;
    if(theta > M_PI)
      theta -= 2*M_PI;
    else if(theta < -M_PI)
      theta += 2*M_PI;
    
    point.x = (p1.x+p2.x)/2;
    point.y = (p1.y+p2.y)/2;

    yaw += theta;
    pt_count++;
    th_count++;
  }
  if (corner_set->points.at(0).z != 1 && corner_set->points.at(1).z != 1)
  {
    PointType p1, p2;
    p1 = corner_set->points.at(0);
    p2 = corner_set->points.at(1);

    double theta = std::atan2(p1.y-p2.y, p1.x-p2.x) - M_PI_2;
    if(theta > M_PI)
      theta -= 2*M_PI;
    else if(theta < -M_PI)
      theta += 2*M_PI;
    
    x1 = (p1.x+p2.x)/2;
    y1 = (p1.y+p2.y)/2;
    s1 = std::cos(theta);
    s2 = std::sin(theta);

    yaw += theta;
    th_count++;
  }
  if (corner_set->points.at(3).z != 1 && corner_set->points.at(1).z != 1)
  {
    PointType p1, p2;
    p1 = corner_set->points.at(1);
    p2 = corner_set->points.at(3);

    double theta = std::atan2(p1.y-p2.y, p1.x-p2.x);
    if(theta > M_PI)
      theta -= 2*M_PI;
    else if(theta < -M_PI)
      theta += 2*M_PI;
    
    x2 = p2.x;
    y2 = p2.y;
    s3 = std::cos(theta+M_PI_2);
    s4 = std::sin(theta+M_PI_2);
    
    yaw += theta;
    th_count++;
  }
  if (corner_set->points.at(0).z != 1 && corner_set->points.at(2).z != 1)
  {
    PointType p1, p2;
    p1 = corner_set->points.at(0);
    p2 = corner_set->points.at(2);

    double theta = std::atan2(p1.y-p2.y, p1.x-p2.x);
    if(theta > M_PI)
      theta -= 2*M_PI;
    else if(theta < -M_PI)
      theta += 2*M_PI;
    
    x2 = p2.x;
    y2 = p2.y;
    s3 = std::cos(theta-M_PI_2);
    s4 = std::sin(theta-M_PI_2);
    
    yaw += theta;
    th_count++;
  }

  double t = ((x1-x2)*s4-(y1-y2)*s3)/(s1*s4-s2*s3);

  point.x += x1-t*s1;
  point.y += y1-t*s2;

  point.x /= (pt_count+1);
  point.y /= (pt_count+1);
  yaw /= th_count;
  point.z = yaw;

  // std::cout << "esti pose: " << point.x << ", " << point.y << ", " << yaw << std::endl;

  if (!isnan(point.x) && !isnan(point.y))
  {
    elevator_pose.pose.position.x = point.x;
    elevator_pose.pose.position.y = point.y;
  }
  if (!isnan(yaw))
  {
    elevator_pose_q_tf.setRPY(0.0,0.0,yaw);
    elevator_pose_q_msg = tf2::toMsg(elevator_pose_q_tf);
    elevator_pose.pose.orientation = elevator_pose_q_msg;
  }
  elevator_poses.header.frame_id=elevator_pose.header.frame_id;
  elevator_poses.poses.push_back(elevator_pose.pose);

  pose_filter(elevator_poses);

  tf::Matrix3x3 m(tf::Quaternion(elevator_poses.poses.at(0).orientation.x,
                                  elevator_poses.poses.at(0).orientation.y,
                                  elevator_poses.poses.at(0).orientation.z,
                                  elevator_poses.poses.at(0).orientation.w));
  
  m.getRPY(_roll, _pitch, _yaw);

  elevator_poses.poses.at(0).position.x = elevator_poses.poses.at(0).position.x + shift_x_*cos(_yaw+M_PI_2) - shift_y_*sin(_yaw+M_PI_2);
  elevator_poses.poses.at(0).position.y = elevator_poses.poses.at(0).position.y + shift_x_*sin(_yaw+M_PI_2) + shift_y_*cos(_yaw+M_PI_2);
  
  elevator_pose_q_tf.setRPY(0.0,0.0,_yaw+M_PI_2);
  elevator_pose_q_msg = tf2::toMsg(elevator_pose_q_tf);
  elevator_poses.poses.at(0).orientation = elevator_pose_q_msg;
  
  elevator_pose_yaw_.clear();
  elevator_pose_yaw_.push_back(_yaw+M_PI_2);
  
  hold_poses_.poses.push_back(elevator_poses.poses.at(0));

}
//-----------------------------------------------------------------------------------------------
void pose_filter(geometry_msgs::PoseArray &filter_poses)
{
  static geometry_msgs::PoseStamped before_pose;
  static geometry_msgs::PoseStamped map_pose;
  static geometry_msgs::Pose pose;
  static std::vector<geometry_msgs::PoseStamped> poses;
  static geometry_msgs::PoseStamped local_pose;
  static std::vector<geometry_msgs::PoseStamped> local_poses;
  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tfListener(tfBuffer);
  static double m_roll, m_pitch, m_yaw;
  static double roll, pitch, yaw;
  static bool matching;

  

  if(pose_filter_first_time_)
  {
    if(filter_poses.poses.size() == 0)
      return;

    poses.clear();

    for(int i =0;i<filter_poses.poses.size();i++)
    {
      before_pose.header.frame_id = filter_poses.header.frame_id;
      before_pose.pose.position = filter_poses.poses[i].position;
      before_pose.pose.orientation = filter_poses.poses[i].orientation;

      if(filter_poses.header.frame_id != map_frame_)
      {
        try
        {
          tfBuffer.transform(before_pose, map_pose, map_frame_);
        }
        catch (tf2::TransformException &ex)
        {
          ROS_WARN("elevator point finder : %s",ex.what());
          ros::Duration(0.5).sleep();
          return;
        }
      }
      else
      {
        map_pose.header.frame_id = filter_poses.header.frame_id;
        map_pose.pose = before_pose.pose;
      }

      map_pose.pose.position.z = 2.0;
      poses.push_back(map_pose);
    }
    pose_filter_first_time_ = false;
  }
  else
  {

    for(int i =0;i<filter_poses.poses.size();i++)
    {
      matching = false;
      before_pose.header.frame_id = filter_poses.header.frame_id;
      before_pose.pose.position = filter_poses.poses[i].position;
      before_pose.pose.orientation = filter_poses.poses[i].orientation;

      if(filter_poses.header.frame_id != map_frame_)
      {
        try
        {
          tfBuffer.transform(before_pose, map_pose, map_frame_);
        }
        catch (tf2::TransformException &ex)
        {
          ROS_WARN("elevator point finder2 : %s",ex.what());
          ros::Duration(0.5).sleep();
          return;
        }
      }
      else
      {
        map_pose.header.frame_id = filter_poses.header.frame_id;
        map_pose.pose = before_pose.pose;
      }
      tf::Quaternion q( map_pose.pose.orientation.x,
                        map_pose.pose.orientation.y,
                        map_pose.pose.orientation.z,
                        map_pose.pose.orientation.w);
      tf::Matrix3x3 m(q);
      
      m.getRPY(m_roll, m_pitch, m_yaw);

      for(int j= 0;j<poses.size();j++)
      {
        tf::Quaternion q2( poses[j].pose.orientation.x,
                          poses[j].pose.orientation.y,
                          poses[j].pose.orientation.z,
                          poses[j].pose.orientation.w);
        tf::Matrix3x3 m2(q2);
        m2.getRPY(roll, pitch, yaw);
        
        if(abs(sqrt(pow(map_pose.pose.position.x - poses[j].pose.position.x,2)+
                    pow(map_pose.pose.position.y - poses[j].pose.position.y,2)))< filter_range_dis_
                    && abs(m_yaw - yaw)< filter_range_angle_)
        {
          matching =true;
        }
      }
      if(!matching && pose_edit_enable_)
      {
        //std::cout << " add new pose!! " << '\n';
        map_pose.pose.position.z = 2.0;
        poses.push_back(map_pose);
      }
    }
    for (int j = 0; j < poses.size(); j++)
    {
      matching = false;
      for(int i = 0; i < filter_poses.poses.size(); i++)
      {
        before_pose.header.frame_id = filter_poses.header.frame_id;
        before_pose.pose.position = filter_poses.poses[i].position;
        before_pose.pose.orientation = filter_poses.poses[i].orientation;

        if(filter_poses.header.frame_id != map_frame_)
        {
          try
          {
            tfBuffer.transform(before_pose, map_pose, map_frame_);
          }
          catch (tf2::TransformException &ex)
          {
            ROS_WARN("elevator point finder2 : %s",ex.what());
            ros::Duration(0.5).sleep();
            return;
          }
        }
        else
        {
          map_pose.header.frame_id = filter_poses.header.frame_id;
          map_pose.pose = before_pose.pose;
        }
        tf::Quaternion q( map_pose.pose.orientation.x,
                          map_pose.pose.orientation.y,
                          map_pose.pose.orientation.z,
                          map_pose.pose.orientation.w);
        tf::Matrix3x3 m(q);
        
        m.getRPY(m_roll, m_pitch, m_yaw);

        tf::Quaternion q2( poses[j].pose.orientation.x,
                          poses[j].pose.orientation.y,
                          poses[j].pose.orientation.z,
                          poses[j].pose.orientation.w);
        tf::Matrix3x3 m2(q2);
        m2.getRPY(roll, pitch, yaw);
        
        if(abs(sqrt(pow(map_pose.pose.position.x - poses[j].pose.position.x,2)+
                    pow(map_pose.pose.position.y - poses[j].pose.position.y,2)))< filter_range_dis_
                    && abs(m_yaw - yaw)< filter_range_angle_)
        {
          if(poses[j].pose.position.z <=10.0)
          {
            poses[j].pose.position.z = poses[j].pose.position.z+2;
          }
          matching = true;
        }
      }
      if (!matching && pose_edit_enable_)
      {
        poses[j].pose.position.z--;
      }
    }
    //std::cout << " =============== " << '\n';
  }

  filter_poses.poses.clear();
  filter_poses.header.frame_id = map_frame_;
  for(int k =0;k<poses.size();k++)
  {
    if(poses[k].pose.position.z > 5.0)
    {
      pose.position.x = poses[k].pose.position.x;
      pose.position.y = poses[k].pose.position.y;
      pose.position.z = poses[k].pose.position.z;
      pose.orientation = poses[k].pose.orientation;
      
      filter_poses.poses.push_back(pose);
    }
    

    if(poses[k].pose.position.z <= 0 && pose_edit_enable_)
    {
      if(poses.size() > 1)
      {
        poses.erase(poses.begin()+k);
        //break;
      }
    }
  }

  if(avg_pose_filter_)
  {
    avg_pose(filter_poses);
  }
  
  // filter_poses.poses.push_back(pose);

  
}
//-----------------------------------------------------------------------------------------------
void avg_pose(geometry_msgs::PoseArray &input_pose)
{
  static std::vector<std::vector<geometry_msgs::Pose>> avg_poses;
  static bool first = true;

  geometry_msgs::PoseArray output;
  geometry_msgs::Pose out;

  if (avg_pose_first_time_)
  {
    avg_poses.clear();
    avg_pose_first_time_ = false;
    first = true;
  }

  if (first)
  {
    avg_poses.clear();
    for (int i = 0; i < input_pose.poses.size(); i++)
    {
      std::vector<geometry_msgs::Pose> pose;
      pose.push_back(input_pose.poses.at(i));
      avg_poses.push_back(pose);
    }
    first = false;
  }

  for (int j = 0; j < input_pose.poses.size(); j++)
  {
    bool match = false;
    for (int k = 0; k < avg_poses.size(); k++)
    {
      double x=0, y=0, yaw=0, r, p, yaw_;
      for (int i = 0; i < avg_poses.at(k).size(); i++)
      {
        x += avg_poses.at(k).at(i).position.x;
        y += avg_poses.at(k).at(i).position.y;
        tf::Quaternion q2(avg_poses.at(k).at(i).orientation.x,
                          avg_poses.at(k).at(i).orientation.y,
                          avg_poses.at(k).at(i).orientation.z,
                          avg_poses.at(k).at(i).orientation.w);
        tf::Matrix3x3 m2(q2);
        m2.getRPY(r, p, yaw_);
        yaw += yaw_;
      }
      x /= avg_poses.at(k).size();
      y /= avg_poses.at(k).size();
      yaw /= avg_poses.at(k).size();

      tf::Quaternion q2(input_pose.poses.at(j).orientation.x,
                        input_pose.poses.at(j).orientation.y,
                        input_pose.poses.at(j).orientation.z,
                        input_pose.poses.at(j).orientation.w);
      tf::Matrix3x3 m2(q2);
      m2.getRPY(r, p, yaw_);

      if (sqrt(pow(input_pose.poses.at(j).position.x - x,2)+pow(input_pose.poses.at(j).position.y - y,2))< 0.1
          && abs(yaw_ - yaw) < 0.1)
      {
        match = true;
        if (avg_poses.at(k).size() > avg_pose_size_)
        {
          avg_poses.at(k).erase(avg_poses.at(k).begin());
          avg_poses.at(k).push_back(input_pose.poses.at(j));
          double x=0, y=0, yaw=0, r, p, yaw_;
          for (int i = 0; i < avg_poses.at(k).size(); i++)
          {
            x += avg_poses.at(k).at(i).position.x;
            y += avg_poses.at(k).at(i).position.y;
            tf::Quaternion q2(avg_poses.at(k).at(i).orientation.x,
                              avg_poses.at(k).at(i).orientation.y,
                              avg_poses.at(k).at(i).orientation.z,
                              avg_poses.at(k).at(i).orientation.w);
            tf::Matrix3x3 m2(q2);
            m2.getRPY(r, p, yaw_);
            yaw += yaw_;
          }
          x /= avg_poses.at(k).size();
          y /= avg_poses.at(k).size();
          yaw /= avg_poses.at(k).size();

          tf2::Quaternion qt;
          geometry_msgs::Quaternion q;

          qt.setRPY(0,0,yaw);
          q = tf2::toMsg(qt);

          out.position.x = x;
          out.position.y = y;
          out.position.z = input_pose.poses.at(j).position.z;
          out.orientation = q;

          output.poses.push_back(out);

          // break;
        }
        else
        {
          avg_poses.at(k).push_back(input_pose.poses.at(j));
        }
      }
    }
    if (!match && pose_edit_enable_)
    {
      std::vector<geometry_msgs::Pose> pose;
      pose.push_back(input_pose.poses.at(j));
      avg_poses.push_back(pose);
    }
  }

  input_pose.poses = output.poses;
}
//-----------------------------------------------------------------------------------------------
void UpdateCampusRoverPoseFromTF()
{
  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tfListener(tfBuffer);
  static geometry_msgs::TransformStamped transformStamped;

  try
  {
    transformStamped = tfBuffer.lookupTransform(map_frame_, scan_frame_, ros::Time(0), ros::Duration(2));
  }
  catch (tf2::TransformException &ex)
  {
    ROS_WARN(" %s. Can't update pose from TF, for that will be use the latest source point.", ex.what());
  }

  robot_tf_pose_.position.x = transformStamped.transform.translation.x;
  robot_tf_pose_.position.y = transformStamped.transform.translation.y;
  robot_tf_pose_.position.z = transformStamped.transform.translation.z;
  robot_tf_pose_.orientation.x = transformStamped.transform.rotation.x;
  robot_tf_pose_.orientation.y = transformStamped.transform.rotation.y;
  robot_tf_pose_.orientation.z = transformStamped.transform.rotation.z;
  robot_tf_pose_.orientation.w = transformStamped.transform.rotation.w;

  // std::cout << "x : " << robot_tf_pose_.position.x<< " y : "<< robot_tf_pose_.position.y<<'\n';
  
}
//-----------------------------------------------------------------------------------------------
void VisualizeCorner(std::vector<geometry_msgs::Point> points) 
{
  static visualization_msgs::MarkerArray point_markers;
  static visualization_msgs::Marker point_marker;

  point_markers.markers.clear();

  if(points.size() == 0)
    return;

  point_marker.header.frame_id = scan_frame_;
  point_marker.header.stamp = ros::Time::now();
  point_marker.ns = "corner_position_Orignal";
  point_marker.action = visualization_msgs::Marker::ADD;
  point_marker.pose.position.z = 0;
  point_marker.pose.orientation.x = 0.0;
  point_marker.pose.orientation.y = 0.0;
  point_marker.pose.orientation.z = 0.0;
  point_marker.pose.orientation.w = 1.0;
  point_marker.scale.y = window_size_;
  point_marker.scale.x = window_size_;
  point_marker.scale.z = 0.01;
  point_marker.type = visualization_msgs::Marker::CYLINDER;
  point_marker.color.a = 0.5f;
  point_marker.color.r = 0.0f;
  point_marker.color.g = 1.0f;
  point_marker.color.b = 0.0f;
  point_marker.lifetime = ros::Duration(0.1);

  for(int i=0; i < points.size(); i++)
  {
    point_marker.id = i;
    point_marker.pose.position.x = points[i].x;
    point_marker.pose.position.y = points[i].y;
    point_markers.markers.push_back(point_marker);
  }
  

  elevator_corner_marker_pub_.publish(point_markers);
}
//-----------------------------------------------------------------------------------------------
void VisualizeBreakPoint(std::vector<geometry_msgs::Point> points) 
{
  static visualization_msgs::MarkerArray point_markers;
  static visualization_msgs::Marker point_marker;

  point_markers.markers.clear();

  if(points.size() == 0)
    return;

  point_marker.header.frame_id = scan_frame_;
  point_marker.header.stamp = ros::Time::now();
  point_marker.ns = "breakpoint_position_Orignal";
  point_marker.action = visualization_msgs::Marker::ADD;
  point_marker.pose.position.z = 0;
  point_marker.pose.orientation.x = 0.0;
  point_marker.pose.orientation.y = 0.0;
  point_marker.pose.orientation.z = 0.0;
  point_marker.pose.orientation.w = 1.0;
  point_marker.scale.y = window_size_;
  point_marker.scale.x = window_size_;
  point_marker.scale.z = 0.01;
  point_marker.type = visualization_msgs::Marker::CYLINDER;
  point_marker.color.a = 0.5f;
  point_marker.color.r = 1.0f;
  point_marker.color.g = 0.0f;
  point_marker.color.b = 0.0f;
  point_marker.lifetime = ros::Duration(0.1);

  for(int i=0; i < points.size(); i++)
  {
    point_marker.id = i;
    point_marker.pose.position.x = points[i].x;
    point_marker.pose.position.y = points[i].y;
    point_markers.markers.push_back(point_marker);
  }
  

  break_point_marker_pub_.publish(point_markers);
}
//-----------------------------------------------------------------------------------------------
void VisualizefeaturePoint(std::vector<geometry_msgs::Point> points) 
{
  static visualization_msgs::MarkerArray point_markers;
  static visualization_msgs::Marker point_marker;

  point_markers.markers.clear();

  if(points.size() == 0)
    return;

  point_marker.header.frame_id = scan_frame_;
  point_marker.header.stamp = ros::Time::now();
  point_marker.ns = "breakpoint_position_Orignal";
  point_marker.action = visualization_msgs::Marker::ADD;
  point_marker.pose.position.z = 0;
  point_marker.pose.orientation.x = 0.0;
  point_marker.pose.orientation.y = 0.0;
  point_marker.pose.orientation.z = 0.0;
  point_marker.pose.orientation.w = 1.0;
  point_marker.scale.y = window_size_;
  point_marker.scale.x = window_size_;
  point_marker.scale.z = 0.01;
  point_marker.type = visualization_msgs::Marker::CYLINDER;
  point_marker.color.a = 0.5f;
  point_marker.color.r = 0.0f;
  point_marker.color.g = 0.0f;
  point_marker.color.b = 1.0f;
  point_marker.lifetime = ros::Duration(0.1);

  for(int i=0; i < points.size(); i++)
  {
    point_marker.id = i;
    point_marker.pose.position.x = points[i].x;
    point_marker.pose.position.y = points[i].y;
    point_markers.markers.push_back(point_marker);
  }
  

  featuer_point_marker_pub_.publish(point_markers);
}

//-----------------------------------------------------------------------------------------------
void VisualizeElevatorEnterPoint(std::vector<nav_msgs::Path> paths) 
{
  static visualization_msgs::MarkerArray all_rollOuts;
  static visualization_msgs::Marker lane_waypoint_marker;
  static geometry_msgs::Point point;
  lane_waypoint_marker.header.frame_id = scan_frame_;
  lane_waypoint_marker.header.stamp = ros::Time(0);
  lane_waypoint_marker.ns = "elevator_marker";
  lane_waypoint_marker.type = visualization_msgs::Marker::LINE_STRIP;
  lane_waypoint_marker.action = visualization_msgs::Marker::ADD;
  lane_waypoint_marker.scale.x = 0.05;
  lane_waypoint_marker.scale.y = 0.05;
  lane_waypoint_marker.frame_locked = false;
  lane_waypoint_marker.lifetime = ros::Duration(0.1);

  static int max_count = 0;
  all_rollOuts.markers.clear();
  if(paths.size() > max_count)
  {
    max_count = paths.size();
  }
  
  for (int i = 0; i < paths.size(); i++)
  {
    lane_waypoint_marker.points.clear();
    //if(i == 0)
    {
      lane_waypoint_marker.id = i;

      lane_waypoint_marker.color.r = 0.0;
      lane_waypoint_marker.color.g = 0.0;
      lane_waypoint_marker.color.b = 1.0;
      lane_waypoint_marker.color.a = 0.9;
    }
    // else if(i ==1)
    // {
    //   lane_waypoint_marker.id = i;

    //   lane_waypoint_marker.color.r = 1.0;
    //   lane_waypoint_marker.color.g = 0.0;
    //   lane_waypoint_marker.color.b = 0.0;
    //   lane_waypoint_marker.color.a = 0.9;
    // }
    // else if(i ==2)
    // {
    //   lane_waypoint_marker.id = i;

    //   lane_waypoint_marker.color.r = 0.0;
    //   lane_waypoint_marker.color.g = 0.0;
    //   lane_waypoint_marker.color.b = 1.0;
    //   lane_waypoint_marker.color.a = 0.9;
    // }

    for (int j = 0; j < paths[i].poses.size(); j++)
    {
        point.x = paths[i].poses[j].pose.position.x;
        point.y = paths[i].poses[j].pose.position.y;
        point.z = paths[i].poses[j].pose.position.z;

      lane_waypoint_marker.points.push_back(point);
    }
  
    all_rollOuts.markers.push_back(lane_waypoint_marker);
  }
  if(paths.size()<max_count)
  {
    for(int f = 0;f <max_count-paths.size();f++)
    {
      lane_waypoint_marker.id = all_rollOuts.markers.size()+f;
      lane_waypoint_marker.color.a = 0.01;
      //lane_waypoint_marker.points.push_back(point);
      all_rollOuts.markers.push_back(lane_waypoint_marker);
    }
  }

  elevator_marker_pub_.publish(all_rollOuts);

}
//-----------------------------------------------------------------------------------------------
void angle_normalize(double &angle)
{
  if(angle > M_PI)
  {
    angle = -2*M_PI + angle;
  }else if(angle < -M_PI)
  {
    angle = 2*M_PI + angle;
  }
}
//--------------------------------------------------------------------

void StatusCheckCallService(ros::ServiceClient &client,campusrover_msgs::ElevatorStatusChecker &srv)
{
  string str = "===========position_finder status check============= " ;
  cout << "Request massage: \n" << srv.request;
  while (!client.call(srv))
  {
    ROS_ERROR("position_finder status check : Failed to call service");
    ros::Duration(1.0).sleep();
  }
}
//-----------------------------------------------------------------------------------------------//
int main(int argc, char **argv)
{
  ros::init(argc, argv, "elevator_position_finder");
  ros::NodeHandle nh;
  ros::NodeHandle nh_private("~");
  get_parameters(nh_private);
  ros::Time::init();

  scan_sub_ = nh.subscribe("scan", 10, ScanCallback);
  control_status_sub_ = nh.subscribe("control_status", 10, ControlStatusCallback);
  //pose_sub_ = nh.subscribe("pose_topic", 10, PoseCallback);

  pose_pub_ = nh.advertise<geometry_msgs::PoseArray>("elevator_poses", 1);
  elevator_corner_marker_pub_ = nh.advertise<visualization_msgs::MarkerArray>("elevator_corner_marker", 50);
  break_point_marker_pub_ = nh.advertise<visualization_msgs::MarkerArray>("break_point_marker", 50);
  featuer_point_marker_pub_ = nh.advertise<visualization_msgs::MarkerArray>("feature_point_marker", 50);
  elevator_marker_pub_ = nh.advertise<visualization_msgs::MarkerArray>("elevator_marker", 10);

  status_check_client_ = nh.serviceClient<campusrover_msgs::ElevatorStatusChecker>("elevator_status_checker");

  ros::spin();

  return 0;
}
