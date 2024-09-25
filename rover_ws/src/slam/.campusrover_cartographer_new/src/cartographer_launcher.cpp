#include <stdlib.h>  
#include <ros/ros.h>
#include <campusrover_msgs/LocalizerLauncher.h>
#include <sys/wait.h>
#include <signal.h>

std::string g_default_map_file;
std::string g_carto_basename_default;

bool launchCartographer(campusrover_msgs::LocalizerLauncher::Request  &req, campusrover_msgs::LocalizerLauncher::Response &res)
{
  pid_t child_pid;
  child_pid = fork();
  if (child_pid < 0) /* fork succeeded */
  {
    return false;
  }
  switch (req.localizer)
  {
  case req.LOCOLIZAR_2D_VLP16_ODOM:
    if (child_pid == 0)
    {
      std::cout << "child process for launch_2d_scan_matching.launch.xml" << std::endl;
      execlp("roslaunch", "roslaunch", "campusrover_cartographer", "launch_2d_scan_matching.launch.xml", NULL);
    }
    break;
  case req.LOCOLIZAR_2D_YD_SCAN_MATCHING:
    if (child_pid == 0)
    {
      std::cout << "launch_3d_localozer.launch.xml" << std::endl;
      execlp("roslaunch", "roslaunch", "campusrover_cartographer", "launch_3d_localizer.launch.xml", NULL);
    }
    break;
  default:
    break;
  }
  return true;
}

void getParams()
{
  ros::NodeHandle n_private("~");
  n_private.param<std::string>("default_map_file", g_default_map_file, "3F.pbstream");
  n_private.param<std::string>("carto_basename_default", g_carto_basename_default, "/");
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "cartographer_launcher");
  ros::NodeHandle n;
  getParams();
  pid_t child_pid;
  child_pid = fork();
  if (child_pid == 0)
  {
    std::cout << "Default Localizer" << std::endl;
    std::string arg_carto = "carto_basename_default:=" + g_carto_basename_default;
    std::string arg_map = "map_file:=" + g_default_map_file;
    execlp("roslaunch", 
      "roslaunch", "campusrover_cartographer", "launch_localizer.launch.xml", 
      arg_carto.c_str(),
      arg_map.c_str(),
      NULL);
  }
  ros::ServiceServer service = n.advertiseService("launch_cartographer", launchCartographer);
  ros::spin();
  return 0;
}