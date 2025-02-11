// Generated by gencpp from file campusrover_msgs/ArmTablePositionRequest.msg
// DO NOT EDIT!


#ifndef CAMPUSROVER_MSGS_MESSAGE_ARMTABLEPOSITIONREQUEST_H
#define CAMPUSROVER_MSGS_MESSAGE_ARMTABLEPOSITIONREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>

namespace campusrover_msgs
{
template <class ContainerAllocator>
struct ArmTablePositionRequest_
{
  typedef ArmTablePositionRequest_<ContainerAllocator> Type;

  ArmTablePositionRequest_()
    : position()  {
    }
  ArmTablePositionRequest_(const ContainerAllocator& _alloc)
    : position(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _position_type;
  _position_type position;





  typedef boost::shared_ptr< ::campusrover_msgs::ArmTablePositionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::campusrover_msgs::ArmTablePositionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ArmTablePositionRequest_

typedef ::campusrover_msgs::ArmTablePositionRequest_<std::allocator<void> > ArmTablePositionRequest;

typedef boost::shared_ptr< ::campusrover_msgs::ArmTablePositionRequest > ArmTablePositionRequestPtr;
typedef boost::shared_ptr< ::campusrover_msgs::ArmTablePositionRequest const> ArmTablePositionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::campusrover_msgs::ArmTablePositionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::campusrover_msgs::ArmTablePositionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::campusrover_msgs::ArmTablePositionRequest_<ContainerAllocator1> & lhs, const ::campusrover_msgs::ArmTablePositionRequest_<ContainerAllocator2> & rhs)
{
  return lhs.position == rhs.position;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::campusrover_msgs::ArmTablePositionRequest_<ContainerAllocator1> & lhs, const ::campusrover_msgs::ArmTablePositionRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace campusrover_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::ArmTablePositionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::ArmTablePositionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::ArmTablePositionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::ArmTablePositionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::ArmTablePositionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::ArmTablePositionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::campusrover_msgs::ArmTablePositionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e7bb0ef028c744b081acdc57743b11d8";
  }

  static const char* value(const ::campusrover_msgs::ArmTablePositionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe7bb0ef028c744b0ULL;
  static const uint64_t static_value2 = 0x81acdc57743b11d8ULL;
};

template<class ContainerAllocator>
struct DataType< ::campusrover_msgs::ArmTablePositionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "campusrover_msgs/ArmTablePositionRequest";
  }

  static const char* value(const ::campusrover_msgs::ArmTablePositionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::campusrover_msgs::ArmTablePositionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Point position\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::campusrover_msgs::ArmTablePositionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::campusrover_msgs::ArmTablePositionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.position);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ArmTablePositionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::campusrover_msgs::ArmTablePositionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::campusrover_msgs::ArmTablePositionRequest_<ContainerAllocator>& v)
  {
    s << indent << "position: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMPUSROVER_MSGS_MESSAGE_ARMTABLEPOSITIONREQUEST_H
