// Generated by gencpp from file campusrover_msgs/ArmTablePoseStatus.msg
// DO NOT EDIT!


#ifndef CAMPUSROVER_MSGS_MESSAGE_ARMTABLEPOSESTATUS_H
#define CAMPUSROVER_MSGS_MESSAGE_ARMTABLEPOSESTATUS_H


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
struct ArmTablePoseStatus_
{
  typedef ArmTablePoseStatus_<ContainerAllocator> Type;

  ArmTablePoseStatus_()
    : position()
    , table_status(0)  {
    }
  ArmTablePoseStatus_(const ContainerAllocator& _alloc)
    : position(_alloc)
    , table_status(0)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _position_type;
  _position_type position;

   typedef uint16_t _table_status_type;
  _table_status_type table_status;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(uninitial)
  #undef uninitial
#endif
#if defined(_WIN32) && defined(moving)
  #undef moving
#endif
#if defined(_WIN32) && defined(standby)
  #undef standby
#endif

  enum {
    uninitial = 0u,
    moving = 1u,
    standby = 2u,
  };


  typedef boost::shared_ptr< ::campusrover_msgs::ArmTablePoseStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::campusrover_msgs::ArmTablePoseStatus_<ContainerAllocator> const> ConstPtr;

}; // struct ArmTablePoseStatus_

typedef ::campusrover_msgs::ArmTablePoseStatus_<std::allocator<void> > ArmTablePoseStatus;

typedef boost::shared_ptr< ::campusrover_msgs::ArmTablePoseStatus > ArmTablePoseStatusPtr;
typedef boost::shared_ptr< ::campusrover_msgs::ArmTablePoseStatus const> ArmTablePoseStatusConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::campusrover_msgs::ArmTablePoseStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::campusrover_msgs::ArmTablePoseStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::campusrover_msgs::ArmTablePoseStatus_<ContainerAllocator1> & lhs, const ::campusrover_msgs::ArmTablePoseStatus_<ContainerAllocator2> & rhs)
{
  return lhs.position == rhs.position &&
    lhs.table_status == rhs.table_status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::campusrover_msgs::ArmTablePoseStatus_<ContainerAllocator1> & lhs, const ::campusrover_msgs::ArmTablePoseStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace campusrover_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::ArmTablePoseStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::ArmTablePoseStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::ArmTablePoseStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::ArmTablePoseStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::ArmTablePoseStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::ArmTablePoseStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::campusrover_msgs::ArmTablePoseStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "56901712d7b154ea1f47a1060e0f25eb";
  }

  static const char* value(const ::campusrover_msgs::ArmTablePoseStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x56901712d7b154eaULL;
  static const uint64_t static_value2 = 0x1f47a1060e0f25ebULL;
};

template<class ContainerAllocator>
struct DataType< ::campusrover_msgs::ArmTablePoseStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "campusrover_msgs/ArmTablePoseStatus";
  }

  static const char* value(const ::campusrover_msgs::ArmTablePoseStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::campusrover_msgs::ArmTablePoseStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Point position\n"
"uint16 table_status\n"
"uint16 uninitial = 0\n"
"uint16 moving = 1\n"
"uint16 standby = 2\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::campusrover_msgs::ArmTablePoseStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::campusrover_msgs::ArmTablePoseStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.position);
      stream.next(m.table_status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ArmTablePoseStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::campusrover_msgs::ArmTablePoseStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::campusrover_msgs::ArmTablePoseStatus_<ContainerAllocator>& v)
  {
    s << indent << "position: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
    s << indent << "table_status: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.table_status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMPUSROVER_MSGS_MESSAGE_ARMTABLEPOSESTATUS_H
