// Generated by gencpp from file campusrover_msgs/MapClosestLocationResponse.msg
// DO NOT EDIT!


#ifndef CAMPUSROVER_MSGS_MESSAGE_MAPCLOSESTLOCATIONRESPONSE_H
#define CAMPUSROVER_MSGS_MESSAGE_MAPCLOSESTLOCATIONRESPONSE_H


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
struct MapClosestLocationResponse_
{
  typedef MapClosestLocationResponse_<ContainerAllocator> Type;

  MapClosestLocationResponse_()
    : closest_point()  {
    }
  MapClosestLocationResponse_(const ContainerAllocator& _alloc)
    : closest_point(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _closest_point_type;
  _closest_point_type closest_point;





  typedef boost::shared_ptr< ::campusrover_msgs::MapClosestLocationResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::campusrover_msgs::MapClosestLocationResponse_<ContainerAllocator> const> ConstPtr;

}; // struct MapClosestLocationResponse_

typedef ::campusrover_msgs::MapClosestLocationResponse_<std::allocator<void> > MapClosestLocationResponse;

typedef boost::shared_ptr< ::campusrover_msgs::MapClosestLocationResponse > MapClosestLocationResponsePtr;
typedef boost::shared_ptr< ::campusrover_msgs::MapClosestLocationResponse const> MapClosestLocationResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::campusrover_msgs::MapClosestLocationResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::campusrover_msgs::MapClosestLocationResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::campusrover_msgs::MapClosestLocationResponse_<ContainerAllocator1> & lhs, const ::campusrover_msgs::MapClosestLocationResponse_<ContainerAllocator2> & rhs)
{
  return lhs.closest_point == rhs.closest_point;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::campusrover_msgs::MapClosestLocationResponse_<ContainerAllocator1> & lhs, const ::campusrover_msgs::MapClosestLocationResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace campusrover_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::MapClosestLocationResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::MapClosestLocationResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::MapClosestLocationResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::MapClosestLocationResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::MapClosestLocationResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::MapClosestLocationResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::campusrover_msgs::MapClosestLocationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f0e21e8f298a097dccdd7714dd98bff6";
  }

  static const char* value(const ::campusrover_msgs::MapClosestLocationResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf0e21e8f298a097dULL;
  static const uint64_t static_value2 = 0xccdd7714dd98bff6ULL;
};

template<class ContainerAllocator>
struct DataType< ::campusrover_msgs::MapClosestLocationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "campusrover_msgs/MapClosestLocationResponse";
  }

  static const char* value(const ::campusrover_msgs::MapClosestLocationResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::campusrover_msgs::MapClosestLocationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string closest_point\n"
;
  }

  static const char* value(const ::campusrover_msgs::MapClosestLocationResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::campusrover_msgs::MapClosestLocationResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.closest_point);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MapClosestLocationResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::campusrover_msgs::MapClosestLocationResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::campusrover_msgs::MapClosestLocationResponse_<ContainerAllocator>& v)
  {
    s << indent << "closest_point: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.closest_point);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMPUSROVER_MSGS_MESSAGE_MAPCLOSESTLOCATIONRESPONSE_H
