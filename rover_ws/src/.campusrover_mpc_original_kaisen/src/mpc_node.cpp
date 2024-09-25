#include <time.h>
#include <mutex>
#include <ros/ros.h>

#include <std_srvs/SetBool.h>
#include <std_msgs/Bool.h>
#include <costmap_converter/ObstacleArrayMsg.h>
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

ros::Subscriber Obstacles_sub, Line_sub, Checkpoint_sub, Path_sub, Goal_sub, Odom_sub, Vel_sub, Reset_sub;
ros::Publisher Twist_pub, Finish_pub;
ros::ServiceServer Enabel_server;

geometry_msgs::Pose cur_pose_, cur_goal_;

bool enable_calcu_ = false;
bool finish_flag_ = true;
bool verbose = false;
int ob_mode_ = 0, path_mode_ = 0;
double cur_v = 0, cur_w = 0;
std::string frame_id_;
std::vector<std::pair<double, double>> control_;
std::mutex mutex_;

MPC mpc;

void get_parameters(ros::NodeHandle np)
{
  np.param<std::string>("frame_id", frame_id_, "odom");
  np.param<int>("obstacle_mode", ob_mode_, 0); // 0: round, 1: wall
  np.param<int>("path_mode", path_mode_, 0); // 0: round, 1: wall
  np.param<bool>("verbose", verbose, false); // 0: round, 1: wall
}

void initial()
{
  control_.push_back(std::pair<double, double>(0.0, 0.0));
  mpc.setObstacleMode(ob_mode_);
  mpc.setPathMode(path_mode_);
  mpc.setVerbose(verbose);
}

void obstacle_cb(const costmap_converter::ObstacleArrayMsg &obs)
{
  if (ob_mode_ != 0 || !enable_calcu_)
    return;

  static std::vector<std::vector<double>> obstacles;
  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tfListener(tfBuffer);
  geometry_msgs::PoseStamped before_pose, after_pose;

  before_pose.header.frame_id = obs.obstacles.at(0).header.frame_id;

  obstacles.clear();
  if (obs.header.frame_id != frame_id_)
  {
    try
    {
      for (auto ob : obs.obstacles)
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
        ob_temp.push_back(yaw); // x,y,theta
        ob_temp.push_back(ob.velocities.twist.linear.x);
        ob_temp.push_back(ob.velocities.twist.angular.z); // v,w
        if (ob.radius == 0)
          ob_temp.push_back(0.5); // obstacle inflate
        else
          ob_temp.push_back(ob.radius);
        obstacles.push_back(ob_temp);
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
      ob_temp.push_back(yaw); // x,y,theta
      ob_temp.push_back(ob.velocities.twist.linear.x);
      ob_temp.push_back(ob.velocities.twist.linear.y); // vx,vy
      if (ob.radius == 0)
        ob_temp.push_back(0.5); // obstacle inflate
      else
        ob_temp.push_back(ob.radius);
      obstacles.push_back(ob_temp);
    }
  }

  mpc.updateObstacle(obstacles);
}

void wall_cb(const laser_line_extraction::LineSegmentList &obs)
{
  if (ob_mode_ != 1 || !enable_calcu_)
    return;

  static std::vector<std::vector<double>> walls;
  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tfListener(tfBuffer);
  geometry_msgs::PoseStamped before_pose, after_pose;

  before_pose.header.frame_id = obs.header.frame_id;

  walls.clear();
  if (obs.header.frame_id != frame_id_)
  {
    try
    {
      for (auto ob : obs.line_segments)
      {
        if (ob.radius > 1.5)
          continue;

        std::vector<double> ob_temp;

        before_pose.pose.position.x = ob.start.at(0);
        before_pose.pose.position.y = ob.start.at(1);
        tfBuffer.transform(before_pose, after_pose, frame_id_);

        ob_temp.push_back(after_pose.pose.position.x);
        ob_temp.push_back(after_pose.pose.position.y); // x1,y1

        before_pose.pose.position.x = ob.end.at(0);
        before_pose.pose.position.y = ob.end.at(1);
        tfBuffer.transform(before_pose, after_pose, frame_id_);

        ob_temp.push_back(after_pose.pose.position.x);
        ob_temp.push_back(after_pose.pose.position.y); // x2,y2
        ob_temp.push_back(0.1);                        // wall inflate

        walls.push_back(ob_temp);
      }
    }
    catch (tf2::TransformException &ex)
    {
      ROS_WARN("[MPC] Wall transform : %s", ex.what());
      ros::Duration(0.5).sleep();
      return;
    }
  }
  else
  {
    for (auto ob : obs.line_segments)
    {
      std::vector<double> ob_temp;

      ob_temp.push_back(ob.start.at(0));
      ob_temp.push_back(ob.start.at(1)); // x1,y1

      ob_temp.push_back(ob.end.at(0));
      ob_temp.push_back(ob.end.at(1)); // x2,y2
      ob_temp.push_back(0.1);          // wall inflate

      walls.push_back(ob_temp);
    }
  }

  mpc.updateObstacle(walls);
}

void checkpoint_cb(const geometry_msgs::PoseStamped &point)
{
  static bool first_time = true;
  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tfListener(tfBuffer);
  geometry_msgs::PoseStamped after_pose;

  // if (!enable_calcu_)
  //   return;

  if (point.header.frame_id != frame_id_)
  {
    try
    {
      tfBuffer.transform(point, after_pose, frame_id_);
    }
    catch (tf2::TransformException &ex)
    {
      ROS_WARN("[MPC] Checkpoint transform : %s", ex.what());
      ros::Duration(0.5).sleep();
      return;
    }
  }
  else
  {
    after_pose = point;
  }

  tf::Quaternion q(
      after_pose.pose.orientation.x,
      after_pose.pose.orientation.y,
      after_pose.pose.orientation.z,
      after_pose.pose.orientation.w);
  tf::Matrix3x3 m(q);
  double roll, pitch, yaw;
  m.getRPY(roll, pitch, yaw);

  ROS_INFO("[MPC] Received Checkpoint");
  std::cout << "X: " << after_pose.pose.position.x << " Y: " << after_pose.pose.position.y << " Theta: " << yaw << std::endl;
  mpc.setCheckPoint(after_pose.pose.position.x, after_pose.pose.position.y, yaw);
}

void path_cb(const nav_msgs::Path &path)
{
  static std::vector<std::vector<double>> waypoints;
  static tf2_ros::Buffer tfBuffer;
  static tf2_ros::TransformListener tfListener(tfBuffer);
  geometry_msgs::PoseStamped after_pose;

  if (path_mode_ != 1)
    return;

  // if (!enable_calcu_)
  //   return;

  waypoints.clear();

  if (path.header.frame_id != frame_id_)
  {
    try
    {
      for (auto pt : path.poses)
      {
        pt.header.frame_id = path.header.frame_id;
        tfBuffer.transform(pt, after_pose, frame_id_);
        std::vector<double> way;
        way.push_back(after_pose.pose.position.x);
        way.push_back(after_pose.pose.position.y);
        tf::Quaternion q(after_pose.pose.orientation.x,
                        after_pose.pose.orientation.y,
                        after_pose.pose.orientation.z,
                        after_pose.pose.orientation.w);
        tf::Matrix3x3 m(q);
        double roll, pitch, yaw;
        m.getRPY(roll, pitch, yaw);
        way.push_back(yaw);
        waypoints.push_back(way);
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
      std::vector<double> way;
      way.push_back(pt.pose.position.x);
      way.push_back(pt.pose.position.y);
      tf::Quaternion q(pt.pose.orientation.x,
                      pt.pose.orientation.y,
                      pt.pose.orientation.z,
                      pt.pose.orientation.w);
      tf::Matrix3x3 m(q);
      double roll, pitch, yaw;
      m.getRPY(roll, pitch, yaw);
      way.push_back(yaw);
      waypoints.push_back(way);
    }
  }
  
  // cur_goal_.position.x = waypoints.at(waypoints.size()-1).at(0);
  // cur_goal_.position.y = waypoints.at(waypoints.size()-1).at(1);
  // cur_goal_.position.z = waypoints.at(waypoints.size()-1).at(2);

  mpc.setGoal(cur_goal_.position.x, cur_goal_.position.y, cur_goal_.position.z);
  mpc.setRefPath(waypoints);
  finish_flag_ = false;
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

  // if (!enable_calcu_)
  //   return;

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

  // if (!enable_calcu_)
  //   return;

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

  if (path_mode_ != 0)
    return;

  double dis = sqrt(pow(cur_pose_.position.x - cur_goal_.position.x, 2) + pow(cur_pose_.position.y - cur_goal_.position.y, 2));
  double d_theta = abs(cur_pose_.position.z - cur_goal_.position.z);
  if (dis > 0.1 || d_theta > 0.05)
  {
    finish_flag_ = false;
  }
  else
  {
    return;
  }

  ROS_INFO("[MPC] Received Goal");
  std::cout << "X: " << cur_goal_.position.x << " Y: " << cur_goal_.position.y << " Theta: " << cur_goal_.position.z << std::endl;
  mpc.setGoal(cur_goal_.position.x, cur_goal_.position.y, cur_goal_.position.z);
}

void reset_cb(const std_msgs::Bool &flag)
{
  if (flag.data)
  {
    enable_calcu_ = false;
    finish_flag_ = true;
    mpc.reset();
    initial();
  }
}

void mpcSolver(const ros::TimerEvent &event)
{
  // static clock_t last_t = clock();
  geometry_msgs::Twist cmd;
  std_msgs::Bool msg;

  if (!enable_calcu_ || finish_flag_)
  {
    msg.data = finish_flag_;
    Finish_pub.publish(msg);
    return;
  }

  double dis = sqrt(pow(cur_pose_.position.x - cur_goal_.position.x, 2) + pow(cur_pose_.position.y - cur_goal_.position.y, 2));

  double d_theta = fmod(abs(cur_pose_.position.z - cur_goal_.position.z), M_PI);

  double cnt = abs(control_.at(0).first) + abs(control_.at(0).second);

  // std::cout << "Target: " << mpc.x_G << ", " << mpc.y_G << ", " << mpc.th_G << "\n" << std::endl;

  // std::cout << "Current Distance: " << dis << std::endl;
  // std::cout << "Position: " << cur_pose_.position.x << ", " << cur_pose_.position.y << ", " << cur_pose_.position.z << std::endl;
  // std::cout << "V: " << control_.at(0).first << " ,W: " << control_.at(0).second << "\n" << std::endl;

  // std::cout << "==================================================================" << std::endl;

  if (dis < 0.1 && d_theta < 0.1 && abs(control_.at(0).first) < 0.1)
  {
    ROS_INFO("[MPC] Arrived");
    std::cout << "==================================================================" << std::endl;
    mpc.reset();
    finish_flag_ = true;
    Twist_pub.publish(cmd);
    Finish_pub.publish(msg);
    return;
  }

  // mutex_.lock();
  mpc.updateSolver();
  mpc.solve();
  mpc.getControlMatrix(control_);
  // mutex_.unlock();

  cmd.linear.x = control_.at(0).first;
  cmd.angular.z = control_.at(0).second;
  msg.data = finish_flag_;

  Twist_pub.publish(cmd);
  Finish_pub.publish(msg);

  // std::cout << (double)(clock() - last_t)/CLOCKS_PER_SEC << " seconds" << std::endl;
  // last_t = clock();
}

bool enable_service(std_srvs::SetBool::Request &req, std_srvs::SetBool::Response &res)
{
  enable_calcu_ = req.data;
  finish_flag_ = false;
  ROS_INFO("[MPC] Service : recieved enable signel %s", req.data ? "True" : "False");
  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "mpc_node");
  ros::NodeHandle n;
  ros::NodeHandle nh("~");
  ros::MultiThreadedSpinner spinner(2);

  get_parameters(nh);
  mpc.setUp();
  initial();

  Obstacles_sub = n.subscribe("/obstacles", 1, obstacle_cb);
  Line_sub = n.subscribe("/line_segments", 1, wall_cb);
  Checkpoint_sub = n.subscribe("/checkpoint", 1, checkpoint_cb);
  Path_sub = n.subscribe("/path", 1, path_cb);
  Vel_sub = n.subscribe("/cur_vel", 1, vel_cb);
  Odom_sub = n.subscribe("/odom", 1, odom_cb);
  Goal_sub = n.subscribe("/goal", 1, goal_cb);
  Reset_sub = n.subscribe("/reset_mpc", 1, reset_cb);

  Twist_pub = n.advertise<geometry_msgs::Twist>("/output_vel", 1);
  Finish_pub = n.advertise<std_msgs::Bool>("/mpc_finish", 1);

  Enabel_server = n.advertiseService("enable_mpc", enable_service);

  ros::Timer timer = n.createTimer(ros::Duration(0.1), mpcSolver);
  spinner.spin();
  // ros::spin();

  return 0;
}
