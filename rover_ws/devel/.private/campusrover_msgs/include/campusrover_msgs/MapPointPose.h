// Generated by gencpp from file campusrover_msgs/MapPointPose.msg
// DO NOT EDIT!


#ifndef CAMPUSROVER_MSGS_MESSAGE_MAPPOINTPOSE_H
#define CAMPUSROVER_MSGS_MESSAGE_MAPPOINTPOSE_H

#include <ros/service_traits.h>


#include <campusrover_msgs/MapPointPoseRequest.h>
#include <campusrover_msgs/MapPointPoseResponse.h>


namespace campusrover_msgs
{

struct MapPointPose
{

typedef MapPointPoseRequest Request;
typedef MapPointPoseResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MapPointPose
} // namespace campusrover_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::campusrover_msgs::MapPointPose > {
  static const char* value()
  {
    return "9fe5216ac464279e66a2d885233c843b";
  }

  static const char* value(const ::campusrover_msgs::MapPointPose&) { return value(); }
};

template<>
struct DataType< ::campusrover_msgs::MapPointPose > {
  static const char* value()
  {
    return "campusrover_msgs/MapPointPose";
  }

  static const char* value(const ::campusrover_msgs::MapPointPose&) { return value(); }
};


// service_traits::MD5Sum< ::campusrover_msgs::MapPointPoseRequest> should match
// service_traits::MD5Sum< ::campusrover_msgs::MapPointPose >
template<>
struct MD5Sum< ::campusrover_msgs::MapPointPoseRequest>
{
  static const char* value()
  {
    return MD5Sum< ::campusrover_msgs::MapPointPose >::value();
  }
  static const char* value(const ::campusrover_msgs::MapPointPoseRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::campusrover_msgs::MapPointPoseRequest> should match
// service_traits::DataType< ::campusrover_msgs::MapPointPose >
template<>
struct DataType< ::campusrover_msgs::MapPointPoseRequest>
{
  static const char* value()
  {
    return DataType< ::campusrover_msgs::MapPointPose >::value();
  }
  static const char* value(const ::campusrover_msgs::MapPointPoseRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::campusrover_msgs::MapPointPoseResponse> should match
// service_traits::MD5Sum< ::campusrover_msgs::MapPointPose >
template<>
struct MD5Sum< ::campusrover_msgs::MapPointPoseResponse>
{
  static const char* value()
  {
    return MD5Sum< ::campusrover_msgs::MapPointPose >::value();
  }
  static const char* value(const ::campusrover_msgs::MapPointPoseResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::campusrover_msgs::MapPointPoseResponse> should match
// service_traits::DataType< ::campusrover_msgs::MapPointPose >
template<>
struct DataType< ::campusrover_msgs::MapPointPoseResponse>
{
  static const char* value()
  {
    return DataType< ::campusrover_msgs::MapPointPose >::value();
  }
  static const char* value(const ::campusrover_msgs::MapPointPoseResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CAMPUSROVER_MSGS_MESSAGE_MAPPOINTPOSE_H
