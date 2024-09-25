// Generated by gencpp from file campusrover_msgs/ArmAction.msg
// DO NOT EDIT!


#ifndef CAMPUSROVER_MSGS_MESSAGE_ARMACTION_H
#define CAMPUSROVER_MSGS_MESSAGE_ARMACTION_H

#include <ros/service_traits.h>


#include <campusrover_msgs/ArmActionRequest.h>
#include <campusrover_msgs/ArmActionResponse.h>


namespace campusrover_msgs
{

struct ArmAction
{

typedef ArmActionRequest Request;
typedef ArmActionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ArmAction
} // namespace campusrover_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::campusrover_msgs::ArmAction > {
  static const char* value()
  {
    return "512c6f416d6851352390c756a87cd4c1";
  }

  static const char* value(const ::campusrover_msgs::ArmAction&) { return value(); }
};

template<>
struct DataType< ::campusrover_msgs::ArmAction > {
  static const char* value()
  {
    return "campusrover_msgs/ArmAction";
  }

  static const char* value(const ::campusrover_msgs::ArmAction&) { return value(); }
};


// service_traits::MD5Sum< ::campusrover_msgs::ArmActionRequest> should match
// service_traits::MD5Sum< ::campusrover_msgs::ArmAction >
template<>
struct MD5Sum< ::campusrover_msgs::ArmActionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::campusrover_msgs::ArmAction >::value();
  }
  static const char* value(const ::campusrover_msgs::ArmActionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::campusrover_msgs::ArmActionRequest> should match
// service_traits::DataType< ::campusrover_msgs::ArmAction >
template<>
struct DataType< ::campusrover_msgs::ArmActionRequest>
{
  static const char* value()
  {
    return DataType< ::campusrover_msgs::ArmAction >::value();
  }
  static const char* value(const ::campusrover_msgs::ArmActionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::campusrover_msgs::ArmActionResponse> should match
// service_traits::MD5Sum< ::campusrover_msgs::ArmAction >
template<>
struct MD5Sum< ::campusrover_msgs::ArmActionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::campusrover_msgs::ArmAction >::value();
  }
  static const char* value(const ::campusrover_msgs::ArmActionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::campusrover_msgs::ArmActionResponse> should match
// service_traits::DataType< ::campusrover_msgs::ArmAction >
template<>
struct DataType< ::campusrover_msgs::ArmActionResponse>
{
  static const char* value()
  {
    return DataType< ::campusrover_msgs::ArmAction >::value();
  }
  static const char* value(const ::campusrover_msgs::ArmActionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CAMPUSROVER_MSGS_MESSAGE_ARMACTION_H
