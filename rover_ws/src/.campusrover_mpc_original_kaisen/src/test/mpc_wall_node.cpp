#include <mutex>
#include <ros/ros.h>

#include <std_srvs/SetBool.h>
#include <std_msgs/Bool.h>
#include <costmap_converter/ObstacleArrayMsg.h>
#include <costmap_converter/ObstacleMsg.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/PoseStamped.h>
#include <nav_msgs/Path.h>
#include <nav_msgs/Odometry.h>
#include <tf/tf.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#include <tf2_ros/transform_listener.h>
#include <laser_line_extraction/LineSegmentList.h>

#include <mpc.hpp>

ros::Subscriber Obstacles_sub, Path_sub, Goal_sub, Odom_sub, Vel_sub;
ros::Publisher Twist_pub, Finish_pub;
ros::ServiceServer Enabel_server;

geometry_msgs::Pose cur_pose_, cur_goal_;

bool enable_calcu_ = false;
bool finish_flag_ = true;
int ob_mode_ = 0;
double cur_v = 0, cur_w = 0;
std::string frame_id_;
std::vector<std::pair<double, double>> control_;
std::mutex mutex_;

MPC mpc;

void get_parameters(ros::NodeHandle np)
{
  np.param<std::string>("frame_id", frame_id_, "odom");
  np.param<int>("obstacle_mode", ob_mode_, 1);
}

void initial()
{
  control_.push_back(std::pair<double, double>(0.0, 0.0));
  mpc.setObstacleMode(ob_mode_);
}

void obstacle_cb(const costmap_converter::ObstacleArrayMsg &obs)
{
  static std::vector<std::vector<double>> obstacles;
  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tfListener(tfBuffer);
  geometry_msgs::PoseStamped before_pose, after_pose;
  costmap_converter::ObstacleMsg pre_ob;
  bool first = true;

  before_pose.header.frame_id = obs.obstacles.at(0).header.frame_id;

  obstacles.clear();
  if (obs.header.frame_id != frame_id_)
  {
    try
    {
      for (auto ob : obs.obstacles)
      {
        if (!first)
        {
          before_pose.pose.position.x = ob.polygon.points.at(0).x;
          before_pose.pose.position.y = ob.polygon.points.at(0).y;
          tfBuffer.transform(before_pose, after_pose, frame_id_);

          tf::Quaternion q(
              after_pose.pose.orientation.x,
              after_pose.pose.orientation.y,
              after_pose.pose.orientation.z,
              after_pose.pose.orientation.w);
          tf::Matrix3x3 m(q);
          double roll, pitch, yaw;
          m.getRPY(roll, pitch, yaw);

          std::vector<double> ob_temp;
          ob_temp.push_back(after_pose.pose.position.x);
          ob_temp.push_back(after_pose.pose.position.y);
          ob_temp.push_back(pre_ob.polygon.points.at(0).x);
          ob_temp.push_back(pre_ob.polygon.points.at(0).y);
          if (ob.radius == 0)
            ob_temp.push_back(0.5); // obstacle inflate
          else
            ob_temp.push_back(ob.radius);
          obstacles.push_back(ob_temp);
        }
        pre_ob = ob;
        first = false;
      }
    }
    catch (tf2::TransformException &ex)
    {
      ROS_WARN("[MPC] Obstacle transform : %s", ex.what());
      ros::Duration(0.5).sleep();
      return;
    }
  }
  else
  {
    for (auto ob : obs.obstacles)
    {
      if (!first)
      {
        tf::Quaternion q(
            ob.orientation.x,
            ob.orientation.y,
            ob.orientation.z,
            ob.orientation.w);
        tf::Matrix3x3 m(q);
        double roll, pitch, yaw;
        m.getRPY(roll, pitch, yaw);

        std::vector<double> ob_temp;
        ob_temp.push_back(ob.polygon.points.at(0).x);
        ob_temp.push_back(ob.polygon.points.at(0).y);
        ob_temp.push_back(pre_ob.polygon.points.at(0).x);
        ob_temp.push_back(pre_ob.polygon.points.at(0).y);
        if (ob.radius == 0)
          ob_temp.push_back(0.5); // obstacle inflate
        else
          ob_temp.push_back(ob.radius);
        obstacles.push_back(ob_temp);
      }
      pre_ob = ob;
      first = false;
    }
  }

  mpc.updateObstacle(obstacles);
}

void path_cb(const nav_msgs::Path &path)
{
  static std::vector<std::pair<double, double>> waypoints;
  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tfListener(tfBuffer);
  geometry_msgs::PoseStamped after_pose;

  waypoints.clear();

  if (path.header.frame_id != frame_id_)
  {
    try
    {
      for (auto pt : path.poses)
      {
        tfBuffer.transform(pt, after_pose, frame_id_);
        waypoints.push_back(std::pair<double, double>(after_pose.pose.position.x, after_pose.pose.position.y));
      }
    }
    catch (tf2::TransformException &ex)
    {
      ROS_WARN("[MPC] Path transform : %s", ex.what());
      ros::Duration(0.5).sleep();
      return;
    }
  }
  else
  {
    for (auto pt : path.poses)
    {
      waypoints.push_back(std::pair<double, double>(pt.pose.position.x, pt.pose.position.y));
    }
  }
}

void vel_cb(const geometry_msgs::Twist &vel)
{
  cur_v = vel.linear.x;
  cur_w = vel.angular.z;
}

void odom_cb(const nav_msgs::Odometry &odom)
{
  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tfListener(tfBuffer);
  geometry_msgs::PoseStamped before_pose, after_pose;

  before_pose.header.frame_id = odom.header.frame_id;
  before_pose.pose = odom.pose.pose;

  if (odom.header.frame_id != frame_id_)
  {
    try
    {
      tfBuffer.transform(before_pose, after_pose, frame_id_);
    }
    catch (tf2::TransformException &ex)
    {
      ROS_WARN("[MPC] Odom transform : %s", ex.what());
      ros::Duration(0.5).sleep();
      return;
    }
  }
  else
  {
    after_pose = before_pose;
  }

  tf::Quaternion q(
      after_pose.pose.orientation.x,
      after_pose.pose.orientation.y,
      after_pose.pose.orientation.z,
      after_pose.pose.orientation.w);
  tf::Matrix3x3 m(q);
  double roll, pitch, yaw;
  m.getRPY(roll, pitch, yaw);

  cur_pose_.position.x = after_pose.pose.position.x;
  cur_pose_.position.y = after_pose.pose.position.y;
  cur_pose_.position.z = yaw;

  mpc.setInitialState(cur_pose_.position.x, cur_pose_.position.y, cur_pose_.position.z, control_.at(0).first, control_.at(0).second);
}

void goal_cb(const geometry_msgs::PoseStamped &goal)
{
  static bool first_time = true;
  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tfListener(tfBuffer);
  geometry_msgs::PoseStamped after_pose;

  if (goal.header.frame_id != frame_id_)
  {
    try
    {
      tfBuffer.transform(goal, after_pose, frame_id_);
    }
    catch (tf2::TransformException &ex)
    {
      ROS_WARN("[MPC] Goal transform : %s", ex.what());
      ros::Duration(0.5).sleep();
      return;
    }
  }
  else
  {
    after_pose = goal;
  }

  tf::Quaternion q(
      after_pose.pose.orientation.x,
      after_pose.pose.orientation.y,
      after_pose.pose.orientation.z,
      after_pose.pose.orientation.w);
  tf::Matrix3x3 m(q);
  double roll, pitch, yaw;
  m.getRPY(roll, pitch, yaw);

  cur_goal_.position.x = after_pose.pose.position.x;
  cur_goal_.position.y = after_pose.pose.position.y;
  cur_goal_.position.z = yaw;

  enable_calcu_ = true;

  mpc.setGoal(cur_goal_.position.x, cur_goal_.position.y, cur_goal_.position.z);
}

void mpcSolver(const ros::TimerEvent &event)
{
  geometry_msgs::Twist cmd;
  
  std_msgs::Bool msg;
  finish_flag_ = false;

  if (!enable_calcu_)
  {
    msg.data = finish_flag_;
    Twist_pub.publish(cmd);
    Finish_pub.publish(msg);
    return;
  }

  // mutex_.lock();
  mpc.updateSolver();
  mpc.solve();
  mpc.getControlMatrix(control_);
  // mutex_.unlock();

  double dis = sqrt(pow(cur_pose_.position.x - cur_goal_.position.x, 2) + pow(cur_pose_.position.y - cur_goal_.position.y, 2));

  double d_theta = abs(cur_pose_.position.z - cur_goal_.position.z);

  double cnt = abs(control_.at(0).first) + abs(control_.at(0).second);

  std::cout << "Target: " << mpc.x_G << ", " << mpc.y_G << ", " << mpc.th_G << "\n" << std::endl;

  std::cout << "Current Distance: " << dis << std::endl;
  std::cout << "Position: " << cur_pose_.position.x << ", " << cur_pose_.position.y << ", " << cur_pose_.position.z << std::endl;
  std::cout << "V: " << control_.at(0).first << " ,W: " << control_.at(0).second << "\n" << std::endl;

  std::cout << "==================================================================" << std::endl;

  if (dis < 0.1 && d_theta < 0.05 && abs(control_.at(0).first) < 0.1)
  {
    ROS_INFO("[MPC] Arrived");
    std::cout << "==================================================================" << std::endl;
    mpc.reset();
    finish_flag_ = true;
    enable_calcu_ = false;
    return;
  }

  cmd.linear.x = control_.at(0).first;
  cmd.angular.z = control_.at(0).second;
  msg.data = finish_flag_;

  Twist_pub.publish(cmd);
  Finish_pub.publish(msg);
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "mpc_wall_node");
  ros::NodeHandle n;
  ros::NodeHandle nh("~");
  // ros::MultiThreadedSpinner spinner(2);

  get_parameters(nh);

  Obstacles_sub = n.subscribe("/obstacles", 1, obstacle_cb);
  // Path_sub = n.subscribe("/global_path", 1, path_cb);
  // Vel_sub = n.subscribe("/output/cmd_vel", 1, vel_cb);
  Odom_sub = n.subscribe("/odom_gt", 1, odom_cb);
  Goal_sub = n.subscribe("/move_base_simple/goal", 1, goal_cb);

  Twist_pub = n.advertise<geometry_msgs::Twist>("/input/nav_cmd_vel", 1);
  Finish_pub = n.advertise<std_msgs::Bool>("/mpc_finish", 1);

  mpc.setUp();
  mpc.setVerbose(true);
  initial();

  ros::Timer timer = n.createTimer(ros::Duration(0.1), mpcSolver);
  // spinner.spin();
  ros::spin();

  return 0;
}
