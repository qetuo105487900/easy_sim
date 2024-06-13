/* s=start point , e=end point
      e6        s6                  e2        s2  
      s7--------e5        _         s3--------e1
       /        \        | |         /        \
______/          \_______|_|________/          \______
e8  s8,e7       s5,e4             s4,e3      s1,e0     s0

           e0                            e1

panel line is s4 to e4 

panel line is 95 cm
door 80 cm
right line and left line is 78 cm 
*/

#include <ros/ros.h>
#include <math.h>
#include <iostream>

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

#include <visualization_msgs/Marker.h>
#include <visualization_msgs/MarkerArray.h>

#include <campusrover_msgs/ElevatorControlStatus.h>
#include <campusrover_msgs/ElevatorStatusChecker.h>
#include <campusrover_msgs/BboxAngleArray.h>
#include <campusrover_msgs/ElevatorPose.h>
#include <campusrover_msgs/ElevatorPoseArray.h>

#include <laser_line_extraction/LineSegmentList.h>
#include <vision_msgs/Detection2DArray.h>

using namespace std;

#define INSIDE -1
#define OUTSIDE 1

ros::Subscriber line_sub_, control_status_sub_, panel_pose_sub_, reset_elevator_pose_sub_;
ros::Publisher pose_pub_, elevator_marker_pub_, elevator_id_marker_pub_;
ros::ServiceClient status_check_client_;

string odom_frame_;
campusrover_msgs::ElevatorPoseArray process_elevator_poses_;
campusrover_msgs::ElevatorPoseArray tracked_elevator_poses_;
campusrover_msgs::ElevatorPoseArray nontracked_elevator_poses_;
geometry_msgs::PoseStamped Panel_pose;
geometry_msgs::Pose robot_tf_pose_;

int control_status_;

bool enable_pose_tracker_;

double elevator_door_depth_,depth_default_;
double elevator_door_width_,door_width_default_;

double elevator_door_max_size_;
double elevator_door_min_size_;

double angle_tolerance_;

bool ResetAvgPose = true;

std::vector<double> elevator_detect_angles_;

void angle_normalize(double &angle);
campusrover_msgs::ElevatorPoseArray pose_tracker(geometry_msgs::PoseArray &poses);
void ElevatorPosesFilter(campusrover_msgs::ElevatorPoseArray &input_poses);
void visualize(const campusrover_msgs::ElevatorPoseArray &poses);
void UpdateCampusRoverPoseFromTF();
void StatusCheckCallService(ros::ServiceClient &client,campusrover_msgs::ElevatorStatusChecker &srv);
void get_parameters(ros::NodeHandle n_private)
{
  n_private.param<string>("odom_frame", odom_frame_, "odom");
  n_private.param<bool>("enable_pose_tracker", enable_pose_tracker_, true);
  n_private.param<double>("elevator_door_depth_default", depth_default_, 0.29); 
  n_private.param<double>("elevator_door_width_default", door_width_default_, 0.8); 
  n_private.param<double>("elevator_door_max_size", elevator_door_max_size_, 1.2); 
  n_private.param<double>("elevator_door_min_size", elevator_door_min_size_, 0.8); 
  n_private.param<double>("angle_tolerance", angle_tolerance_, 0.05); 
}
//----------------------------------------------------------------------------------------------
void ControlStatusCallback(const campusrover_msgs::ElevatorControlStatusConstPtr &con_status)
{
  static campusrover_msgs::ElevatorStatusChecker status_msg;
  static campusrover_msgs::ElevatorControlStatus control_status_msg;
  static bool position_find_done_=false;
  int inout_status;
  control_status_ = con_status->control_status;

  if(control_status_ == control_status_msg.STANDBY )
  {
    position_find_done_=false;
    ResetAvgPose = true;
    Panel_pose.pose.position.x = 0;
    tracked_elevator_poses_.poses.clear();
    return;
  }

  if(tracked_elevator_poses_.poses.size() == 0)
    return;

  UpdateCampusRoverPoseFromTF();

  for (int i=0;i<tracked_elevator_poses_.poses.size();i++)
  {
    double angle_to_elevator_pose, roll_, pitch_, yaw_;

    tf::Matrix3x3 m(tf::Quaternion(tracked_elevator_poses_.poses[i].pose.orientation.x,
                                  tracked_elevator_poses_.poses[i].pose.orientation.y,
                                  tracked_elevator_poses_.poses[i].pose.orientation.z,
                                  tracked_elevator_poses_.poses[i].pose.orientation.w));
    m.getRPY(roll_, pitch_, yaw_);

    angle_to_elevator_pose = atan2(robot_tf_pose_.position.y - tracked_elevator_poses_.poses[i].pose.position.y, robot_tf_pose_.position.x - tracked_elevator_poses_.poses[i].pose.position.x);
    angle_to_elevator_pose = angle_to_elevator_pose - yaw_;

    angle_normalize(angle_to_elevator_pose);
    
    // cout << tracked_elevator_poses_.poses[i].id << ":" << round(angle_to_elevator_pose * 100) / 100 << endl;
    if (abs(angle_to_elevator_pose ) <= 1.57) //    door l           door c             door r
    {                                       //                      pi
                                            //                       |
                                            //  -1.57(-pi/2)      -- | --           1.57(pi/2)
                                            //                     robot
                                            //                       |
                                            //                       |
                                            //                       0     
      tracked_elevator_poses_.poses[i].pose.position.z = INSIDE;
    }
    else
    {
      tracked_elevator_poses_.poses[i].pose.position.z = OUTSIDE;
    }
  }

  // if(control_status_ >= control_status_msg.MOVE_TO_OUTSIDE_BUTTON 
  //   && control_status_ <= control_status_msg.ENTER_ELEVATOR_OUTSIDE 
  //   && tracked_elevator_poses_.poses.size()>0)
  // {
    
  // }
  // else if(control_status_ >= control_status_msg.MOVE_TO_INSIDE_BUTTON 
  //   && control_status_ <= control_status_msg.LEAVE_ELEVATOR_INSIDE 
  //   && tracked_elevator_poses_.poses.size()>0)
  // {
    
  // }

  tracked_elevator_poses_.header.frame_id = odom_frame_;
  tracked_elevator_poses_.header.stamp = ros::Time::now();
  visualize(tracked_elevator_poses_);
  pose_pub_.publish(tracked_elevator_poses_);  

  if(!position_find_done_ && tracked_elevator_poses_.poses.size()==2)
  {
    status_msg.request.node_name.data = "position_finder";
    status_msg.request.status.data = true;
    StatusCheckCallService(status_check_client_, status_msg);
    position_find_done_ = true;
  }
  
}
//----------------------------------------------------------------------------------------------
void LineCallback(const laser_line_extraction::LineSegmentList &lines)
{
  static campusrover_msgs::ElevatorControlStatus control_status_msg;

  if(lines.line_segments.size() == 0)
    return;
  if(Panel_pose.pose.position.x == 0)
    return;
  if(control_status_ < control_status_msg.MOVE_TO_OUTSIDE_BUTTON || control_status_ >= control_status_msg.ENTER_ELEVATOR_OUTSIDE)
    return;

  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tfListener(tfBuffer);
  geometry_msgs::TransformStamped transform_to_odom;
  static geometry_msgs::PoseStamped before_elevator_pose,after_elevator_pose;
  campusrover_msgs::ElevatorPoseArray elevator_poses;
  campusrover_msgs::ElevatorPose elevator_pose;
  tf2::Quaternion elevator_pose_q_tf;

  int line_panel_id = -1;
  double minimal_dis = 9999;
  // Panel_pose.pose.position.x=1.88;
  // Panel_pose.pose.position.y=0;

  //maybe have 8/9 line at lidar scan, this use for loop to find the closest line to the panel aka the panel's line
  for(int i = 0; i<lines.line_segments.size();i++) 
  {
    geometry_msgs::PointStamped line_pointa,line_pointb,line_pointa_odom,line_pointb_odom;
    line_pointa.header.frame_id = lines.header.frame_id;
    line_pointa.point.x = lines.line_segments[i].start[0];
    line_pointa.point.y = lines.line_segments[i].start[1];
    line_pointb.header.frame_id = lines.header.frame_id;
    line_pointb.point.x = lines.line_segments[i].end[0];
    line_pointb.point.y = lines.line_segments[i].end[1];

    /*transform lidar tf to odom tf */
    if(line_pointa.header.frame_id != "odom")
    {
      try
      {
        // tfBuffer.transform<geometry_msgs::PointStamped>(line_pointa, line_pointa_odom, "odom", ros::Duration(1.0));
        // tfBuffer.transform<geometry_msgs::PointStamped>(line_pointb, line_pointb_odom, "odom", ros::Duration(1.0));
        transform_to_odom = tfBuffer.lookupTransform("odom", lines.header.frame_id, lines.header.stamp, ros::Duration(1.0) );
        tf2::doTransform(line_pointa, line_pointa_odom, transform_to_odom);
        tf2::doTransform(line_pointb, line_pointb_odom, transform_to_odom);
      }
      catch (tf2::TransformException &ex) 
      {
        ROS_WARN("%s",ex.what());
        ros::Duration(1.0).sleep();
        return;
      }
    }
    else
    {
      line_pointa_odom.header.frame_id = line_pointa.header.frame_id;
      line_pointa_odom.point = line_pointa.point;
      line_pointb_odom.header.frame_id = line_pointb.header.frame_id;
      line_pointb_odom.point = line_pointb.point;
    }

    float a_x,a_y;
    double dis_to_panel;
    a_x = (line_pointa_odom.point.x + line_pointb_odom.point.x) / 2 ; // if the line center is the closest to the panel
    a_y = (line_pointa_odom.point.y + line_pointb_odom.point.y) / 2 ;
    dis_to_panel = sqrt( pow( a_x - Panel_pose.pose.position.x, 2) + pow( a_y - Panel_pose.pose.position.y, 2) ); 
    if(dis_to_panel < minimal_dis && dis_to_panel < 0.2)  // here find the panel line
    {
      minimal_dis = dis_to_panel;
      line_panel_id = i;
    }
  }

  if (line_panel_id == -1)
    return;

  //find the parallel line of the panel's line
  for(int i = 0; i < lines.line_segments.size(); i++)
  {
    if(i == line_panel_id) // don't need to find the panel's line
      continue;

    // Check if two line segments are almost parallel
    //after this if , the result will just have 4 line
    if(std::abs(lines.line_segments[i].angle - lines.line_segments[line_panel_id].angle) < angle_tolerance_ ) // angle_tolerance_ = 0.05 degree
    {
      double dis, dis1, dis2;
      double idx_r, idx_l;
      
      //use the same 'i' to find this i is left parallel line or right parallel line

      dis1 = sqrt(pow(lines.line_segments[i].end[0] - lines.line_segments[line_panel_id].start[0],2)   
                        +pow(lines.line_segments[i].end[1] - lines.line_segments[line_panel_id].start[1],2));
      dis2 = sqrt(pow(lines.line_segments[i].start[0] - lines.line_segments[line_panel_id].end[0],2)   
                        +pow(lines.line_segments[i].start[1] - lines.line_segments[line_panel_id].end[1],2));

      if(dis1 < dis2) //right parallel line
      {
        dis = dis1;
        elevator_pose.id = 1;
        elevator_pose.name = "e1";
        idx_r = i;
        idx_l = line_panel_id;
      }
      else //left parallel line
      {
        dis = dis2;
        elevator_pose.id = 0;
        elevator_pose.name = "e0";
        idx_r = line_panel_id;
        idx_l = i;
      }
      // std::cout<<" dis: "<<dis;

      // after 2 if , this will just remind 2 line
      if( dis > elevator_door_min_size_ && dis < elevator_door_max_size_) //min = 0.8 , max = 1.3
      {
        double gap_angle = atan2(lines.line_segments[idx_r].end[1] - lines.line_segments[idx_l].start[1],
                                  lines.line_segments[idx_r].end[0] - lines.line_segments[idx_l].start[0]);
        double l1_angle = atan2(lines.line_segments[idx_r].start[1] - lines.line_segments[idx_r].end[1],
                                  lines.line_segments[idx_r].start[0] - lines.line_segments[idx_r].end[0]);
        double l2_angle = atan2(lines.line_segments[idx_l].start[1] - lines.line_segments[idx_l].end[1],
                                  lines.line_segments[idx_l].start[0] - lines.line_segments[idx_l].end[0]);
        
        //use the same 'i' to find this i is left parallel line or right parallel line
        if(std::abs(gap_angle - l1_angle) < angle_tolerance_ && std::abs(gap_angle - l2_angle) < angle_tolerance_)
        {
          gap_angle = gap_angle+ M_PI_2; //M_PI_2 = pi/2, add 90 degree to face elevator door
          angle_normalize(gap_angle);

          before_elevator_pose.header.frame_id = lines.header.frame_id;
          before_elevator_pose.pose.position.x = (lines.line_segments[idx_r].end[0] + lines.line_segments[idx_l].start[0])/2.0;
          before_elevator_pose.pose.position.y = (lines.line_segments[idx_r].end[1] + lines.line_segments[idx_l].start[1])/2.0;

          elevator_door_depth_ = depth_default_; //depth_default_ = 0.29
          elevator_door_width_ = door_width_default_; // door_width_default_ = 0.8

          //find the door depth and door width
          for(int j = 0; j<lines.line_segments.size(); j++ )  //here lines.line_segments.size() maybe have 9/8 line
          { // idx_l = 8(left parallel line) , idx_r = 4(panel)
            // j = 5,6,7
            if( (idx_l > idx_r && (j > idx_r && j < idx_l)) || (idx_l < idx_r && (j > idx_r || j < idx_l)) )
            { 
              //use this to find the real left/right line, 6   
              if(std::abs(lines.line_segments[j].angle - lines.line_segments[line_panel_id].angle) < angle_tolerance_ )
              {
                double door_r_x = lines.line_segments[j].start[0];
                double door_r_y = lines.line_segments[j].start[1];
                double door_angle_r = atan2(door_r_y - before_elevator_pose.pose.position.y, door_r_x - before_elevator_pose.pose.position.x);
                angle_normalize(door_angle_r);
                double elevator_door_depth_r = abs(sqrt(pow(door_r_y - before_elevator_pose.pose.position.y,2)   
                          +pow(door_r_x - before_elevator_pose.pose.position.x,2)) * cos(door_angle_r));
                double elevator_door_width_r = abs(sqrt(pow(door_r_y - before_elevator_pose.pose.position.y,2)   
                          +pow(door_r_x - before_elevator_pose.pose.position.x,2)) * sin(door_angle_r));
                
                double door_l_x = lines.line_segments[j].end[0];
                double door_l_y = lines.line_segments[j].end[1];
                double door_angle_l = atan2(door_l_y - before_elevator_pose.pose.position.y, door_l_x - before_elevator_pose.pose.position.x);
                angle_normalize(door_angle_l);
                double elevator_door_depth_l = abs(sqrt(pow(door_l_y - before_elevator_pose.pose.position.y,2)   
                          +pow(door_l_x - before_elevator_pose.pose.position.x,2)) * cos(door_angle_l));
                double elevator_door_width_l = abs(sqrt(pow(door_l_y - before_elevator_pose.pose.position.y,2)   
                          +pow(door_l_x - before_elevator_pose.pose.position.x,2)) * sin(door_angle_l));

                elevator_door_depth_ = (elevator_door_depth_r + elevator_door_depth_l) / 2;
                elevator_door_width_ = max(elevator_door_width_r,elevator_door_width_l) * 2;
                // std::cout <<"depth"<< elevator_door_depth_<< "\twidth" << elevator_door_width_ << std::endl;
                if(elevator_door_width_ < 0.8) 
                  elevator_door_width_ = door_width_default_;
                break;
              }
            }
          }

          elevator_pose.depth = elevator_door_depth_;
          elevator_pose.door_width = elevator_door_width_;
          
          before_elevator_pose.header.frame_id = lines.header.frame_id;
          before_elevator_pose.pose.position.x = (lines.line_segments[idx_r].end[0] + lines.line_segments[idx_l].start[0]) /2.0 + elevator_door_depth_*cos(gap_angle);
          before_elevator_pose.pose.position.y = (lines.line_segments[idx_r].end[1] + lines.line_segments[idx_l].start[1]) /2.0 + elevator_door_depth_*sin(gap_angle);
          elevator_pose_q_tf.setRPY(0.0,0.0,gap_angle);
          geometry_msgs::Quaternion elevator_pose_q_msg = tf2::toMsg(elevator_pose_q_tf);
          before_elevator_pose.pose.orientation = elevator_pose_q_msg;
          
          if(before_elevator_pose.header.frame_id != odom_frame_)
          {
            try
            {
              // tfBuffer.transform(before_elevator_pose, after_elevator_pose, odom_frame_);

              transform_to_odom = tfBuffer.lookupTransform("odom", lines.header.frame_id, lines.header.stamp, ros::Duration(1.0) );
              tf2::doTransform(before_elevator_pose, after_elevator_pose, transform_to_odom);
            }
            catch (tf2::TransformException &ex)
            {
              ROS_WARN("elevator_position_finder_line_base_node : %s",ex.what());
              ros::Duration(0.5).sleep();
              return;
            }
          }
          else
          {
            after_elevator_pose = before_elevator_pose;
          }

          elevator_pose.pose = after_elevator_pose.pose;
          elevator_pose.header.frame_id = after_elevator_pose.header.frame_id;
          elevator_pose.header.stamp = ros::Time::now();

          elevator_poses.poses.push_back(elevator_pose);
        }                                                         
      }
    }
    
  }

  if(enable_pose_tracker_)
  {
    ElevatorPosesFilter(elevator_poses);
    tracked_elevator_poses_ = elevator_poses;
  }
  else
  {
    nontracked_elevator_poses_ = elevator_poses;
  }
}
//-----------------------------------------------------------------------------------------------
void angle_normalize(double &angle)
{ //M_PI = pi
  if(angle > M_PI)
  {
    angle = -2*M_PI + angle;
  }
  else if(angle < -M_PI)
  {
    angle = 2*M_PI + angle;
  }
}

//-----------------------------------------------------------------------------------------------
void ResetElevatorPoseCallback(const std_msgs::Empty::ConstPtr& msg)
{
  ResetAvgPose = true;
}
//-----------------------------------------------------------------------------------------------
void ElevatorPosesFilter(campusrover_msgs::ElevatorPoseArray &input_poses)
{
  static std::vector<campusrover_msgs::ElevatorPose> avg_poses_0,avg_poses_1;
  static campusrover_msgs::ElevatorPose avg_pose_0,avg_pose_1;
  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tfListener(tfBuffer);
  campusrover_msgs::ElevatorPose local_pose;

  if (ResetAvgPose)
  {
    avg_poses_0.clear();
    avg_poses_1.clear();
    ResetAvgPose = false;
  }

  local_pose.header = input_poses.header;
  for (auto pose : input_poses.poses)
  {
    local_pose = pose;

    if (pose.id == 0 && avg_poses_0.size() < 8)
    {
      avg_poses_0.push_back(local_pose);
    }
    else if (pose.id == 0 && avg_poses_0.size() >= 8)
    {
      double dis = sqrt(pow(avg_pose_0.pose.position.x - pose.pose.position.x,2) + pow(avg_pose_0.pose.position.y - pose.pose.position.y,2));
      if(dis < 0.3)
      {
        avg_poses_0.erase(avg_poses_0.begin());
        avg_poses_0.push_back(local_pose);
      }
    }
    
    if(pose.id == 1 && avg_poses_1.size() < 8)
    {
      avg_poses_1.push_back(local_pose);
    }
    else if (pose.id == 1 && avg_poses_1.size() >= 8)
    {
      double dis = sqrt(pow(avg_pose_1.pose.position.x - pose.pose.position.x,2) + pow(avg_pose_1.pose.position.y - pose.pose.position.y,2));
      if(dis < 0.3)
      {
        avg_poses_1.erase(avg_poses_1.begin());
        avg_poses_1.push_back(local_pose);
      }
    }
  }


  // average poses
  input_poses.poses.clear();
  if(avg_poses_0.size() > 0)
  {
    tf2::Quaternion quaternion;
    geometry_msgs::Quaternion q;
    double avg_x=0, avg_y=0, avg_z=0, avg_yaw=0, roll, pitch, yaw;
    double avg_depth=0,avg_door_width=0;

    for (auto pose : avg_poses_0)
    {
      avg_x += pose.pose.position.x;
      avg_y += pose.pose.position.y;
      avg_z += pose.pose.position.z;

      tf::Matrix3x3 m(tf::Quaternion(pose.pose.orientation.x,
                                    pose.pose.orientation.y,
                                    pose.pose.orientation.z,
                                    pose.pose.orientation.w));
      m.getRPY(roll, pitch, yaw);

      avg_yaw += yaw;

      avg_depth += pose.depth;
      avg_door_width += pose.door_width;
    }
    avg_x /= avg_poses_0.size();
    avg_y /= avg_poses_0.size();
    avg_z /= avg_poses_0.size();
    avg_yaw /= avg_poses_0.size();
    avg_depth /= avg_poses_0.size();
    avg_door_width /= avg_poses_0.size();

    quaternion.setRPY(0, 0, avg_yaw);
    q = tf2::toMsg(quaternion);

    avg_pose_0.pose.position.x = avg_x;
    avg_pose_0.pose.position.y = avg_y;
    avg_pose_0.pose.position.z = avg_z;
    avg_pose_0.pose.orientation = q;
    avg_pose_0.id = 0;
    avg_pose_0.name = "e0";
    avg_pose_0.depth = avg_depth;
    avg_pose_0.door_width = avg_door_width;
    avg_pose_0.header.frame_id = odom_frame_;
    avg_pose_0.header.stamp = ros::Time::now();

    input_poses.poses.push_back(avg_pose_0);
  }

  if(avg_poses_1.size() > 0)
  {
    tf2::Quaternion quaternion;
    geometry_msgs::Quaternion q;
    double avg_x=0, avg_y=0, avg_z=0, avg_yaw=0, roll, pitch, yaw;
    double avg_depth=0,avg_door_width=0;

    for (auto pose : avg_poses_1)
    {
      avg_x += pose.pose.position.x;
      avg_y += pose.pose.position.y;
      avg_z += pose.pose.position.z;

      tf::Matrix3x3 m(tf::Quaternion(pose.pose.orientation.x,
                                    pose.pose.orientation.y,
                                    pose.pose.orientation.z,
                                    pose.pose.orientation.w));
      m.getRPY(roll, pitch, yaw);

      avg_yaw += yaw;

      avg_depth += pose.depth;
      avg_door_width += pose.door_width;
    }
    avg_x /= avg_poses_1.size();
    avg_y /= avg_poses_1.size();
    avg_z /= avg_poses_1.size();
    avg_yaw /= avg_poses_1.size();
    avg_depth /= avg_poses_0.size();
    avg_door_width /= avg_poses_0.size();

    quaternion.setRPY(0, 0, avg_yaw);
    q = tf2::toMsg(quaternion);

    avg_pose_1.pose.position.x = avg_x;
    avg_pose_1.pose.position.y = avg_y;
    avg_pose_1.pose.position.z = avg_z;
    avg_pose_1.pose.orientation = q;
    avg_pose_1.id = 1;
    avg_pose_1.name = "e1";
    avg_pose_1.depth = avg_depth;
    avg_pose_1.door_width = avg_door_width;
    avg_pose_1.header.frame_id = odom_frame_;
    avg_pose_1.header.stamp = ros::Time::now();

    input_poses.poses.push_back(avg_pose_1);
  }


  input_poses.header.frame_id = odom_frame_;
}
//-----------------------------------------------------------------------------------------------
void UpdateCampusRoverPoseFromTF()
{
  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tfListener(tfBuffer);
  static geometry_msgs::TransformStamped transformStamped;

  try
  {
    transformStamped = tfBuffer.lookupTransform(odom_frame_, "base_link", ros::Time(0), ros::Duration(2));
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
void visualize(const campusrover_msgs::ElevatorPoseArray &poses)
{
  visualization_msgs::Marker marker;
  visualization_msgs::MarkerArray markerarray_msg;
  visualization_msgs::MarkerArray markerarray_id_msg;

  marker.ns = "elevator_position";

  marker.type = visualization_msgs::Marker::ARROW;
  marker.scale.x = 1.0;
  marker.scale.y = 0.05;
  marker.scale.z = 0.05;
  marker.color.r = 0.8;
  marker.color.g = 0.8;
  marker.color.b = 0.8;
  marker.color.a = 1.0;
  marker.lifetime = ros::Duration(1.0);;
  marker.header.frame_id = poses.header.frame_id;
  marker.header.stamp = ros::Time::now();
  for (int i=0;i<poses.poses.size();i++)
  {
    marker.id = poses.poses[i].id;
    marker.pose = poses.poses[i].pose;

    marker.color.r = 0.0;
    marker.color.g = 1.0;
    marker.color.b = 0.0;

    // std::cout<<" id: "<<poses.poses[i].id<<" name: "<<poses.poses[i].name<<std::endl;
    

    markerarray_msg.markers.push_back(marker);
  }
  // std::cout<<" ============================== "<<std::endl;

  for (int j=0;j<poses.poses.size();j++)
  {
    marker.id = poses.poses[j].id;
    marker.pose = poses.poses[j].pose;

    marker.type = visualization_msgs::Marker::TEXT_VIEW_FACING;

    // marker.text = "id "+std::to_string(marker.id);


    marker.text = poses.poses[j].name;
    marker.color.r = 0.8;
    marker.color.g = 0;
    marker.color.b = 0.8;
    marker.scale.z = 0.4;
    markerarray_id_msg.markers.push_back(marker);
  }

  elevator_marker_pub_.publish(markerarray_msg);
  elevator_id_marker_pub_.publish(markerarray_id_msg);
  
}
//-----------------------------------------------------------------------------------------------
void PanelPoseCallback(const geometry_msgs::PoseStamped &panel_pose_msg)
{
  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tfListener(tfBuffer);
  static geometry_msgs::PoseStamped before_pose;
  static geometry_msgs::PoseStamped odom_pose;
  double roll, pitch, yaw;

  before_pose = panel_pose_msg;
  if(before_pose.header.frame_id != "odom")
  {
    try
    {
      tfBuffer.transform(before_pose, odom_pose, "odom");
    }
    catch (tf2::TransformException &ex)
    {
      ROS_WARN("position finder line base : %s",ex.what());
      ros::Duration(0.5).sleep();
      return;
    }
  }
  else
  {
    odom_pose.header.frame_id = before_pose.header.frame_id;
    odom_pose.pose = before_pose.pose;
  }

  Panel_pose=odom_pose;

}
//-----------------------------------------------------------------------------------------------//
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
  ros::init(argc, argv, "elevator_position_finder_line_base");
  ros::NodeHandle nh;
  ros::NodeHandle nh_private("~");
  get_parameters(nh_private);
  ros::Time::init();

  line_sub_ = nh.subscribe("line_segments", 10, LineCallback);
  control_status_sub_ = nh.subscribe("control_status", 10, ControlStatusCallback);
  panel_pose_sub_ = nh.subscribe("panel_est", 10, PanelPoseCallback);
  reset_elevator_pose_sub_ = nh.subscribe("reset_elevator_pose", 10, ResetElevatorPoseCallback);

  pose_pub_ = nh.advertise<campusrover_msgs::ElevatorPoseArray>("elevator_poses", 0.1);
  status_check_client_ = nh.serviceClient<campusrover_msgs::ElevatorStatusChecker>("elevator_status_checker");

  elevator_marker_pub_ = nh.advertise<visualization_msgs::MarkerArray>("elevator_markers", 0.1);
  elevator_id_marker_pub_ = nh.advertise<visualization_msgs::MarkerArray>("elevator_id_markers", 0.1);

  ros::spin();

  return 0;
}
