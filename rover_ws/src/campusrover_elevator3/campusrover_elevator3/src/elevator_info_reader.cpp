#include <string.h>
#include <yaml-cpp/yaml.h>
#include <ros/ros.h>
#include <campusrover_msgs/ElevatorInfo.h>
#include <campusrover_msgs/ElevatorInfoArray.h>
#include <campusrover_msgs/ElevatorInfoReader.h>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/Pose.h>

std::string elevators_file;
campusrover_msgs::ElevatorInfoArray elevators_info;

ros::Publisher elevator_infos_pub;

void getParam(ros::NodeHandle nh)
{
  nh.param<std::string>("config_file", elevators_file, "");
}

void LoadInfo(const YAML::Node Info)
{
  campusrover_msgs::ElevatorInfo elevator_info;

  elevators_info.elevator_infos.clear();

  elevator_info.building = Info["building"].as<std::string>();
  const YAML::Node& Infos = Info["elevators"];
  for (YAML::const_iterator i = Infos.begin(); i != Infos.end(); ++i)
  {
    const YAML::Node& Info_ = *i;
    elevator_info.id = Info_["id"].as<int>();
    elevator_info.elevator_size.x = Info_["elevator_size"]["x"].as<float>();
    elevator_info.elevator_size.y = Info_["elevator_size"]["y"].as<float>();
    elevator_info.elevator_size.z = Info_["elevator_size"]["z"].as<float>();

    elevator_info.elevator_door_size.x = Info_["elevator_door_size"]["x"].as<float>();
    elevator_info.elevator_door_size.y = Info_["elevator_door_size"]["y"].as<float>();
    elevator_info.elevator_door_size.z = Info_["elevator_door_size"]["z"].as<float>();

    elevator_info.outside_button_position.position.x = Info_["outside_button_position"]["position"]["x"].as<float>();
    elevator_info.outside_button_position.position.y = Info_["outside_button_position"]["position"]["y"].as<float>();
    elevator_info.outside_button_position.position.z = Info_["outside_button_position"]["position"]["z"].as<float>();
    elevator_info.outside_button_position.orientation.x = Info_["outside_button_position"]["orientation"]["x"].as<float>();
    elevator_info.outside_button_position.orientation.y = Info_["outside_button_position"]["orientation"]["y"].as<float>();
    elevator_info.outside_button_position.orientation.z = Info_["outside_button_position"]["orientation"]["z"].as<float>();
    elevator_info.outside_button_position.orientation.w = Info_["outside_button_position"]["orientation"]["w"].as<float>();

    elevator_info.inside_button_position.position.x = Info_["inside_button_position"]["position"]["x"].as<float>();
    elevator_info.inside_button_position.position.y = Info_["inside_button_position"]["position"]["y"].as<float>();
    elevator_info.inside_button_position.position.z = Info_["inside_button_position"]["position"]["z"].as<float>();
    elevator_info.inside_button_position.orientation.x = Info_["inside_button_position"]["orientation"]["x"].as<float>();
    elevator_info.inside_button_position.orientation.y = Info_["inside_button_position"]["orientation"]["y"].as<float>();
    elevator_info.inside_button_position.orientation.z = Info_["inside_button_position"]["orientation"]["z"].as<float>();
    elevator_info.inside_button_position.orientation.w = Info_["inside_button_position"]["orientation"]["w"].as<float>();

    elevators_info.elevator_infos.push_back(elevator_info);
  }
}

// void pub_timer(const ros::TimerEvent& event)
// {
//   elevator_infos_pub.publish(elevators_info);
// }
bool ElevatorInfoServiceCallback(campusrover_msgs::ElevatorInfoReader::Request  &req, campusrover_msgs::ElevatorInfoReader::Response &res)
{
  YAML::Node config;
  std::string elevator_info_filename = elevators_file;
  try 
  {
    elevator_info_filename.append("/configs/").append(req.building).append(".yaml");
    std::cout << "[elevator_info] Loading config file: " << elevator_info_filename  << std::endl;
    config = YAML::LoadFile(elevator_info_filename);
  } catch(YAML::Exception& e) {
    std::cerr << e.what() << "\n";
    return false;
  }

  LoadInfo(config);

  res.elevator_infos = elevators_info;
  elevator_infos_pub.publish(elevators_info);
  return true;
}
int main(int argc, char **argv)
{
  ros::init(argc, argv, "elevator_info");
  ros::NodeHandle nh;
  ros::NodeHandle nh_private("~");
  // YAML::Node config;

  getParam(nh_private);
  // try 
  // {
  //   std::cout << "[elevator_info] Loading config file: " << elevators_file << std::endl;
  //   config = YAML::LoadFile(elevators_file);
  // } catch(YAML::Exception& e) {
  //   std::cerr << e.what() << "\n";
  //   return 1;
  // }
  // LoadInfo(config);
  ros::ServiceServer info_reader_service = nh.advertiseService("elevator_info_reader", ElevatorInfoServiceCallback);
  elevator_infos_pub = nh.advertise<campusrover_msgs::ElevatorInfoArray>("elevator_infos", 1);

  // ros::Timer timer = nh.createTimer(ros::Duration(0.1), pub_timer);
  ros::spin();
}