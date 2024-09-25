// Generated by gencpp from file button_recognition/recog_server.msg
// DO NOT EDIT!


#ifndef BUTTON_RECOGNITION_MESSAGE_RECOG_SERVER_H
#define BUTTON_RECOGNITION_MESSAGE_RECOG_SERVER_H

#include <ros/service_traits.h>


#include <button_recognition/recog_serverRequest.h>
#include <button_recognition/recog_serverResponse.h>


namespace button_recognition
{

struct recog_server
{

typedef recog_serverRequest Request;
typedef recog_serverResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct recog_server
} // namespace button_recognition


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::button_recognition::recog_server > {
  static const char* value()
  {
    return "3e93f1b70ee662ac10c8c863201cbf9c";
  }

  static const char* value(const ::button_recognition::recog_server&) { return value(); }
};

template<>
struct DataType< ::button_recognition::recog_server > {
  static const char* value()
  {
    return "button_recognition/recog_server";
  }

  static const char* value(const ::button_recognition::recog_server&) { return value(); }
};


// service_traits::MD5Sum< ::button_recognition::recog_serverRequest> should match
// service_traits::MD5Sum< ::button_recognition::recog_server >
template<>
struct MD5Sum< ::button_recognition::recog_serverRequest>
{
  static const char* value()
  {
    return MD5Sum< ::button_recognition::recog_server >::value();
  }
  static const char* value(const ::button_recognition::recog_serverRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::button_recognition::recog_serverRequest> should match
// service_traits::DataType< ::button_recognition::recog_server >
template<>
struct DataType< ::button_recognition::recog_serverRequest>
{
  static const char* value()
  {
    return DataType< ::button_recognition::recog_server >::value();
  }
  static const char* value(const ::button_recognition::recog_serverRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::button_recognition::recog_serverResponse> should match
// service_traits::MD5Sum< ::button_recognition::recog_server >
template<>
struct MD5Sum< ::button_recognition::recog_serverResponse>
{
  static const char* value()
  {
    return MD5Sum< ::button_recognition::recog_server >::value();
  }
  static const char* value(const ::button_recognition::recog_serverResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::button_recognition::recog_serverResponse> should match
// service_traits::DataType< ::button_recognition::recog_server >
template<>
struct DataType< ::button_recognition::recog_serverResponse>
{
  static const char* value()
  {
    return DataType< ::button_recognition::recog_server >::value();
  }
  static const char* value(const ::button_recognition::recog_serverResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BUTTON_RECOGNITION_MESSAGE_RECOG_SERVER_H
