// Generated by gencpp from file campusrover_msgs/TargetButton.msg
// DO NOT EDIT!


#ifndef CAMPUSROVER_MSGS_MESSAGE_TARGETBUTTON_H
#define CAMPUSROVER_MSGS_MESSAGE_TARGETBUTTON_H

#include <ros/service_traits.h>


#include <campusrover_msgs/TargetButtonRequest.h>
#include <campusrover_msgs/TargetButtonResponse.h>


namespace campusrover_msgs
{

struct TargetButton
{

typedef TargetButtonRequest Request;
typedef TargetButtonResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct TargetButton
} // namespace campusrover_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::campusrover_msgs::TargetButton > {
  static const char* value()
  {
    return "1d1f001af806ced13ac6bfa055fecdf2";
  }

  static const char* value(const ::campusrover_msgs::TargetButton&) { return value(); }
};

template<>
struct DataType< ::campusrover_msgs::TargetButton > {
  static const char* value()
  {
    return "campusrover_msgs/TargetButton";
  }

  static const char* value(const ::campusrover_msgs::TargetButton&) { return value(); }
};


// service_traits::MD5Sum< ::campusrover_msgs::TargetButtonRequest> should match
// service_traits::MD5Sum< ::campusrover_msgs::TargetButton >
template<>
struct MD5Sum< ::campusrover_msgs::TargetButtonRequest>
{
  static const char* value()
  {
    return MD5Sum< ::campusrover_msgs::TargetButton >::value();
  }
  static const char* value(const ::campusrover_msgs::TargetButtonRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::campusrover_msgs::TargetButtonRequest> should match
// service_traits::DataType< ::campusrover_msgs::TargetButton >
template<>
struct DataType< ::campusrover_msgs::TargetButtonRequest>
{
  static const char* value()
  {
    return DataType< ::campusrover_msgs::TargetButton >::value();
  }
  static const char* value(const ::campusrover_msgs::TargetButtonRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::campusrover_msgs::TargetButtonResponse> should match
// service_traits::MD5Sum< ::campusrover_msgs::TargetButton >
template<>
struct MD5Sum< ::campusrover_msgs::TargetButtonResponse>
{
  static const char* value()
  {
    return MD5Sum< ::campusrover_msgs::TargetButton >::value();
  }
  static const char* value(const ::campusrover_msgs::TargetButtonResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::campusrover_msgs::TargetButtonResponse> should match
// service_traits::DataType< ::campusrover_msgs::TargetButton >
template<>
struct DataType< ::campusrover_msgs::TargetButtonResponse>
{
  static const char* value()
  {
    return DataType< ::campusrover_msgs::TargetButton >::value();
  }
  static const char* value(const ::campusrover_msgs::TargetButtonResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CAMPUSROVER_MSGS_MESSAGE_TARGETBUTTON_H
