// Generated by gencpp from file campusrover_msgs/ElevatorInfo.msg
// DO NOT EDIT!


#ifndef CAMPUSROVER_MSGS_MESSAGE_ELEVATORINFO_H
#define CAMPUSROVER_MSGS_MESSAGE_ELEVATORINFO_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Pose.h>

namespace campusrover_msgs
{
template <class ContainerAllocator>
struct ElevatorInfo_
{
  typedef ElevatorInfo_<ContainerAllocator> Type;

  ElevatorInfo_()
    : building()
    , id(0)
    , elevator_size()
    , elevator_door_size()
    , outside_button_position()
    , inside_button_position()  {
    }
  ElevatorInfo_(const ContainerAllocator& _alloc)
    : building(_alloc)
    , id(0)
    , elevator_size(_alloc)
    , elevator_door_size(_alloc)
    , outside_button_position(_alloc)
    , inside_button_position(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _building_type;
  _building_type building;

   typedef int64_t _id_type;
  _id_type id;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _elevator_size_type;
  _elevator_size_type elevator_size;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _elevator_door_size_type;
  _elevator_door_size_type elevator_door_size;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _outside_button_position_type;
  _outside_button_position_type outside_button_position;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _inside_button_position_type;
  _inside_button_position_type inside_button_position;





  typedef boost::shared_ptr< ::campusrover_msgs::ElevatorInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::campusrover_msgs::ElevatorInfo_<ContainerAllocator> const> ConstPtr;

}; // struct ElevatorInfo_

typedef ::campusrover_msgs::ElevatorInfo_<std::allocator<void> > ElevatorInfo;

typedef boost::shared_ptr< ::campusrover_msgs::ElevatorInfo > ElevatorInfoPtr;
typedef boost::shared_ptr< ::campusrover_msgs::ElevatorInfo const> ElevatorInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::campusrover_msgs::ElevatorInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::campusrover_msgs::ElevatorInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::campusrover_msgs::ElevatorInfo_<ContainerAllocator1> & lhs, const ::campusrover_msgs::ElevatorInfo_<ContainerAllocator2> & rhs)
{
  return lhs.building == rhs.building &&
    lhs.id == rhs.id &&
    lhs.elevator_size == rhs.elevator_size &&
    lhs.elevator_door_size == rhs.elevator_door_size &&
    lhs.outside_button_position == rhs.outside_button_position &&
    lhs.inside_button_position == rhs.inside_button_position;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::campusrover_msgs::ElevatorInfo_<ContainerAllocator1> & lhs, const ::campusrover_msgs::ElevatorInfo_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace campusrover_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::ElevatorInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::ElevatorInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::ElevatorInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::ElevatorInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::ElevatorInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::ElevatorInfo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::campusrover_msgs::ElevatorInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c883c73d006814a134d52feb5eae455e";
  }

  static const char* value(const ::campusrover_msgs::ElevatorInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc883c73d006814a1ULL;
  static const uint64_t static_value2 = 0x34d52feb5eae455eULL;
};

template<class ContainerAllocator>
struct DataType< ::campusrover_msgs::ElevatorInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "campusrover_msgs/ElevatorInfo";
  }

  static const char* value(const ::campusrover_msgs::ElevatorInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::campusrover_msgs::ElevatorInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string building\n"
"int64 id\n"
"geometry_msgs/Point elevator_size \n"
"geometry_msgs/Point elevator_door_size \n"
"geometry_msgs/Pose outside_button_position \n"
"geometry_msgs/Pose inside_button_position \n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::campusrover_msgs::ElevatorInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::campusrover_msgs::ElevatorInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.building);
      stream.next(m.id);
      stream.next(m.elevator_size);
      stream.next(m.elevator_door_size);
      stream.next(m.outside_button_position);
      stream.next(m.inside_button_position);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ElevatorInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::campusrover_msgs::ElevatorInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::campusrover_msgs::ElevatorInfo_<ContainerAllocator>& v)
  {
    s << indent << "building: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.building);
    s << indent << "id: ";
    Printer<int64_t>::stream(s, indent + "  ", v.id);
    s << indent << "elevator_size: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.elevator_size);
    s << indent << "elevator_door_size: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.elevator_door_size);
    s << indent << "outside_button_position: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.outside_button_position);
    s << indent << "inside_button_position: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.inside_button_position);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMPUSROVER_MSGS_MESSAGE_ELEVATORINFO_H
