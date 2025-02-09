// Generated by gencpp from file campusrover_msgs/demoPathRequest.msg
// DO NOT EDIT!


#ifndef CAMPUSROVER_MSGS_MESSAGE_DEMOPATHREQUEST_H
#define CAMPUSROVER_MSGS_MESSAGE_DEMOPATHREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace campusrover_msgs
{
template <class ContainerAllocator>
struct demoPathRequest_
{
  typedef demoPathRequest_<ContainerAllocator> Type;

  demoPathRequest_()
    : start_point()
    , end_point()  {
    }
  demoPathRequest_(const ContainerAllocator& _alloc)
    : start_point(_alloc)
    , end_point(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _start_point_type;
  _start_point_type start_point;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _end_point_type;
  _end_point_type end_point;





  typedef boost::shared_ptr< ::campusrover_msgs::demoPathRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::campusrover_msgs::demoPathRequest_<ContainerAllocator> const> ConstPtr;

}; // struct demoPathRequest_

typedef ::campusrover_msgs::demoPathRequest_<std::allocator<void> > demoPathRequest;

typedef boost::shared_ptr< ::campusrover_msgs::demoPathRequest > demoPathRequestPtr;
typedef boost::shared_ptr< ::campusrover_msgs::demoPathRequest const> demoPathRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::campusrover_msgs::demoPathRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::campusrover_msgs::demoPathRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::campusrover_msgs::demoPathRequest_<ContainerAllocator1> & lhs, const ::campusrover_msgs::demoPathRequest_<ContainerAllocator2> & rhs)
{
  return lhs.start_point == rhs.start_point &&
    lhs.end_point == rhs.end_point;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::campusrover_msgs::demoPathRequest_<ContainerAllocator1> & lhs, const ::campusrover_msgs::demoPathRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace campusrover_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::demoPathRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::demoPathRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::demoPathRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::demoPathRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::demoPathRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::demoPathRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::campusrover_msgs::demoPathRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8bcb23441037678d1306415ad104d0ec";
  }

  static const char* value(const ::campusrover_msgs::demoPathRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8bcb23441037678dULL;
  static const uint64_t static_value2 = 0x1306415ad104d0ecULL;
};

template<class ContainerAllocator>
struct DataType< ::campusrover_msgs::demoPathRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "campusrover_msgs/demoPathRequest";
  }

  static const char* value(const ::campusrover_msgs::demoPathRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::campusrover_msgs::demoPathRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string start_point\n"
"string end_point\n"
;
  }

  static const char* value(const ::campusrover_msgs::demoPathRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::campusrover_msgs::demoPathRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.start_point);
      stream.next(m.end_point);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct demoPathRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::campusrover_msgs::demoPathRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::campusrover_msgs::demoPathRequest_<ContainerAllocator>& v)
  {
    s << indent << "start_point: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.start_point);
    s << indent << "end_point: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.end_point);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMPUSROVER_MSGS_MESSAGE_DEMOPATHREQUEST_H
