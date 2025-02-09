// Generated by gencpp from file campusrover_msgs/BubbleMPCRequest.msg
// DO NOT EDIT!


#ifndef CAMPUSROVER_MSGS_MESSAGE_BUBBLEMPCREQUEST_H
#define CAMPUSROVER_MSGS_MESSAGE_BUBBLEMPCREQUEST_H


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
struct BubbleMPCRequest_
{
  typedef BubbleMPCRequest_<ContainerAllocator> Type;

  BubbleMPCRequest_()
    : enable(false)
    , robot_radius(0.0)
    , away_dis(0.0)  {
    }
  BubbleMPCRequest_(const ContainerAllocator& _alloc)
    : enable(false)
    , robot_radius(0.0)
    , away_dis(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _enable_type;
  _enable_type enable;

   typedef float _robot_radius_type;
  _robot_radius_type robot_radius;

   typedef float _away_dis_type;
  _away_dis_type away_dis;





  typedef boost::shared_ptr< ::campusrover_msgs::BubbleMPCRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::campusrover_msgs::BubbleMPCRequest_<ContainerAllocator> const> ConstPtr;

}; // struct BubbleMPCRequest_

typedef ::campusrover_msgs::BubbleMPCRequest_<std::allocator<void> > BubbleMPCRequest;

typedef boost::shared_ptr< ::campusrover_msgs::BubbleMPCRequest > BubbleMPCRequestPtr;
typedef boost::shared_ptr< ::campusrover_msgs::BubbleMPCRequest const> BubbleMPCRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::campusrover_msgs::BubbleMPCRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::campusrover_msgs::BubbleMPCRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::campusrover_msgs::BubbleMPCRequest_<ContainerAllocator1> & lhs, const ::campusrover_msgs::BubbleMPCRequest_<ContainerAllocator2> & rhs)
{
  return lhs.enable == rhs.enable &&
    lhs.robot_radius == rhs.robot_radius &&
    lhs.away_dis == rhs.away_dis;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::campusrover_msgs::BubbleMPCRequest_<ContainerAllocator1> & lhs, const ::campusrover_msgs::BubbleMPCRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace campusrover_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::BubbleMPCRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::BubbleMPCRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::BubbleMPCRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::BubbleMPCRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::BubbleMPCRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::BubbleMPCRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::campusrover_msgs::BubbleMPCRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f48d61475e0b95cc45e706a02d1f6433";
  }

  static const char* value(const ::campusrover_msgs::BubbleMPCRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf48d61475e0b95ccULL;
  static const uint64_t static_value2 = 0x45e706a02d1f6433ULL;
};

template<class ContainerAllocator>
struct DataType< ::campusrover_msgs::BubbleMPCRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "campusrover_msgs/BubbleMPCRequest";
  }

  static const char* value(const ::campusrover_msgs::BubbleMPCRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::campusrover_msgs::BubbleMPCRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool enable\n"
"float32 robot_radius\n"
"float32 away_dis\n"
;
  }

  static const char* value(const ::campusrover_msgs::BubbleMPCRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::campusrover_msgs::BubbleMPCRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.enable);
      stream.next(m.robot_radius);
      stream.next(m.away_dis);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BubbleMPCRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::campusrover_msgs::BubbleMPCRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::campusrover_msgs::BubbleMPCRequest_<ContainerAllocator>& v)
  {
    s << indent << "enable: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.enable);
    s << indent << "robot_radius: ";
    Printer<float>::stream(s, indent + "  ", v.robot_radius);
    s << indent << "away_dis: ";
    Printer<float>::stream(s, indent + "  ", v.away_dis);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMPUSROVER_MSGS_MESSAGE_BUBBLEMPCREQUEST_H
