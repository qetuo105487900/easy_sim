// Generated by gencpp from file campusrover_msgs/ChooseMode.msg
// DO NOT EDIT!


#ifndef CAMPUSROVER_MSGS_MESSAGE_CHOOSEMODE_H
#define CAMPUSROVER_MSGS_MESSAGE_CHOOSEMODE_H

#include <ros/service_traits.h>


#include <campusrover_msgs/ChooseModeRequest.h>
#include <campusrover_msgs/ChooseModeResponse.h>


namespace campusrover_msgs
{

struct ChooseMode
{

typedef ChooseModeRequest Request;
typedef ChooseModeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ChooseMode
} // namespace campusrover_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::campusrover_msgs::ChooseMode > {
  static const char* value()
  {
    return "5da578ca824a6682cf704b593bb1a59e";
  }

  static const char* value(const ::campusrover_msgs::ChooseMode&) { return value(); }
};

template<>
struct DataType< ::campusrover_msgs::ChooseMode > {
  static const char* value()
  {
    return "campusrover_msgs/ChooseMode";
  }

  static const char* value(const ::campusrover_msgs::ChooseMode&) { return value(); }
};


// service_traits::MD5Sum< ::campusrover_msgs::ChooseModeRequest> should match
// service_traits::MD5Sum< ::campusrover_msgs::ChooseMode >
template<>
struct MD5Sum< ::campusrover_msgs::ChooseModeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::campusrover_msgs::ChooseMode >::value();
  }
  static const char* value(const ::campusrover_msgs::ChooseModeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::campusrover_msgs::ChooseModeRequest> should match
// service_traits::DataType< ::campusrover_msgs::ChooseMode >
template<>
struct DataType< ::campusrover_msgs::ChooseModeRequest>
{
  static const char* value()
  {
    return DataType< ::campusrover_msgs::ChooseMode >::value();
  }
  static const char* value(const ::campusrover_msgs::ChooseModeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::campusrover_msgs::ChooseModeResponse> should match
// service_traits::MD5Sum< ::campusrover_msgs::ChooseMode >
template<>
struct MD5Sum< ::campusrover_msgs::ChooseModeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::campusrover_msgs::ChooseMode >::value();
  }
  static const char* value(const ::campusrover_msgs::ChooseModeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::campusrover_msgs::ChooseModeResponse> should match
// service_traits::DataType< ::campusrover_msgs::ChooseMode >
template<>
struct DataType< ::campusrover_msgs::ChooseModeResponse>
{
  static const char* value()
  {
    return DataType< ::campusrover_msgs::ChooseMode >::value();
  }
  static const char* value(const ::campusrover_msgs::ChooseModeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CAMPUSROVER_MSGS_MESSAGE_CHOOSEMODE_H
