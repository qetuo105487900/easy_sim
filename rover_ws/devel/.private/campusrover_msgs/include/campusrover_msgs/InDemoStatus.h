// Generated by gencpp from file campusrover_msgs/InDemoStatus.msg
// DO NOT EDIT!


#ifndef CAMPUSROVER_MSGS_MESSAGE_INDEMOSTATUS_H
#define CAMPUSROVER_MSGS_MESSAGE_INDEMOSTATUS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/String.h>
#include <std_msgs/String.h>
#include <campusrover_msgs/PoseWithId.h>
#include <campusrover_msgs/PoseWithId.h>
#include <campusrover_msgs/PoseWithId.h>

namespace campusrover_msgs
{
template <class ContainerAllocator>
struct InDemoStatus_
{
  typedef InDemoStatus_<ContainerAllocator> Type;

  InDemoStatus_()
    : status()
    , controller()
    , target_pose_data()
    , current_pose_data()
    , mid_target_pose_data()  {
    }
  InDemoStatus_(const ContainerAllocator& _alloc)
    : status(_alloc)
    , controller(_alloc)
    , target_pose_data(_alloc)
    , current_pose_data(_alloc)
    , mid_target_pose_data(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::String_<ContainerAllocator>  _status_type;
  _status_type status;

   typedef  ::std_msgs::String_<ContainerAllocator>  _controller_type;
  _controller_type controller;

   typedef  ::campusrover_msgs::PoseWithId_<ContainerAllocator>  _target_pose_data_type;
  _target_pose_data_type target_pose_data;

   typedef  ::campusrover_msgs::PoseWithId_<ContainerAllocator>  _current_pose_data_type;
  _current_pose_data_type current_pose_data;

   typedef  ::campusrover_msgs::PoseWithId_<ContainerAllocator>  _mid_target_pose_data_type;
  _mid_target_pose_data_type mid_target_pose_data;





  typedef boost::shared_ptr< ::campusrover_msgs::InDemoStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::campusrover_msgs::InDemoStatus_<ContainerAllocator> const> ConstPtr;

}; // struct InDemoStatus_

typedef ::campusrover_msgs::InDemoStatus_<std::allocator<void> > InDemoStatus;

typedef boost::shared_ptr< ::campusrover_msgs::InDemoStatus > InDemoStatusPtr;
typedef boost::shared_ptr< ::campusrover_msgs::InDemoStatus const> InDemoStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::campusrover_msgs::InDemoStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::campusrover_msgs::InDemoStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::campusrover_msgs::InDemoStatus_<ContainerAllocator1> & lhs, const ::campusrover_msgs::InDemoStatus_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status &&
    lhs.controller == rhs.controller &&
    lhs.target_pose_data == rhs.target_pose_data &&
    lhs.current_pose_data == rhs.current_pose_data &&
    lhs.mid_target_pose_data == rhs.mid_target_pose_data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::campusrover_msgs::InDemoStatus_<ContainerAllocator1> & lhs, const ::campusrover_msgs::InDemoStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace campusrover_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::InDemoStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::InDemoStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::InDemoStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::InDemoStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::InDemoStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::InDemoStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::campusrover_msgs::InDemoStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "34ab88de0bd0120458bb8839561e2f23";
  }

  static const char* value(const ::campusrover_msgs::InDemoStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x34ab88de0bd01204ULL;
  static const uint64_t static_value2 = 0x58bb8839561e2f23ULL;
};

template<class ContainerAllocator>
struct DataType< ::campusrover_msgs::InDemoStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "campusrover_msgs/InDemoStatus";
  }

  static const char* value(const ::campusrover_msgs::InDemoStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::campusrover_msgs::InDemoStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/String status\n"
"std_msgs/String controller\n"
"campusrover_msgs/PoseWithId target_pose_data\n"
"campusrover_msgs/PoseWithId current_pose_data\n"
"campusrover_msgs/PoseWithId mid_target_pose_data\n"
"================================================================================\n"
"MSG: std_msgs/String\n"
"string data\n"
"\n"
"================================================================================\n"
"MSG: campusrover_msgs/PoseWithId\n"
"std_msgs/String id\n"
"std_msgs/String type\n"
"std_msgs/Int16 floor\n"
"geometry_msgs/PoseStamped pose\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Int16\n"
"int16 data\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
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

  static const char* value(const ::campusrover_msgs::InDemoStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::campusrover_msgs::InDemoStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
      stream.next(m.controller);
      stream.next(m.target_pose_data);
      stream.next(m.current_pose_data);
      stream.next(m.mid_target_pose_data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct InDemoStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::campusrover_msgs::InDemoStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::campusrover_msgs::InDemoStatus_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.status);
    s << indent << "controller: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.controller);
    s << indent << "target_pose_data: ";
    s << std::endl;
    Printer< ::campusrover_msgs::PoseWithId_<ContainerAllocator> >::stream(s, indent + "  ", v.target_pose_data);
    s << indent << "current_pose_data: ";
    s << std::endl;
    Printer< ::campusrover_msgs::PoseWithId_<ContainerAllocator> >::stream(s, indent + "  ", v.current_pose_data);
    s << indent << "mid_target_pose_data: ";
    s << std::endl;
    Printer< ::campusrover_msgs::PoseWithId_<ContainerAllocator> >::stream(s, indent + "  ", v.mid_target_pose_data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMPUSROVER_MSGS_MESSAGE_INDEMOSTATUS_H
