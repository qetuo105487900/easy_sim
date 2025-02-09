// Generated by gencpp from file campusrover_msgs/PoseWithId.msg
// DO NOT EDIT!


#ifndef CAMPUSROVER_MSGS_MESSAGE_POSEWITHID_H
#define CAMPUSROVER_MSGS_MESSAGE_POSEWITHID_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/String.h>
#include <std_msgs/String.h>
#include <std_msgs/Int16.h>
#include <geometry_msgs/PoseStamped.h>

namespace campusrover_msgs
{
template <class ContainerAllocator>
struct PoseWithId_
{
  typedef PoseWithId_<ContainerAllocator> Type;

  PoseWithId_()
    : id()
    , type()
    , floor()
    , pose()  {
    }
  PoseWithId_(const ContainerAllocator& _alloc)
    : id(_alloc)
    , type(_alloc)
    , floor(_alloc)
    , pose(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::String_<ContainerAllocator>  _id_type;
  _id_type id;

   typedef  ::std_msgs::String_<ContainerAllocator>  _type_type;
  _type_type type;

   typedef  ::std_msgs::Int16_<ContainerAllocator>  _floor_type;
  _floor_type floor;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _pose_type;
  _pose_type pose;





  typedef boost::shared_ptr< ::campusrover_msgs::PoseWithId_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::campusrover_msgs::PoseWithId_<ContainerAllocator> const> ConstPtr;

}; // struct PoseWithId_

typedef ::campusrover_msgs::PoseWithId_<std::allocator<void> > PoseWithId;

typedef boost::shared_ptr< ::campusrover_msgs::PoseWithId > PoseWithIdPtr;
typedef boost::shared_ptr< ::campusrover_msgs::PoseWithId const> PoseWithIdConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::campusrover_msgs::PoseWithId_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::campusrover_msgs::PoseWithId_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::campusrover_msgs::PoseWithId_<ContainerAllocator1> & lhs, const ::campusrover_msgs::PoseWithId_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.type == rhs.type &&
    lhs.floor == rhs.floor &&
    lhs.pose == rhs.pose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::campusrover_msgs::PoseWithId_<ContainerAllocator1> & lhs, const ::campusrover_msgs::PoseWithId_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace campusrover_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::PoseWithId_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::PoseWithId_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::PoseWithId_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::PoseWithId_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::PoseWithId_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::PoseWithId_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::campusrover_msgs::PoseWithId_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2ea613eca72c87e9e2e85790826a3bbc";
  }

  static const char* value(const ::campusrover_msgs::PoseWithId_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2ea613eca72c87e9ULL;
  static const uint64_t static_value2 = 0xe2e85790826a3bbcULL;
};

template<class ContainerAllocator>
struct DataType< ::campusrover_msgs::PoseWithId_<ContainerAllocator> >
{
  static const char* value()
  {
    return "campusrover_msgs/PoseWithId";
  }

  static const char* value(const ::campusrover_msgs::PoseWithId_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::campusrover_msgs::PoseWithId_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/String id\n"
"std_msgs/String type\n"
"std_msgs/Int16 floor\n"
"geometry_msgs/PoseStamped pose\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/String\n"
"string data\n"
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

  static const char* value(const ::campusrover_msgs::PoseWithId_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::campusrover_msgs::PoseWithId_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.type);
      stream.next(m.floor);
      stream.next(m.pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PoseWithId_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::campusrover_msgs::PoseWithId_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::campusrover_msgs::PoseWithId_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.id);
    s << indent << "type: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.type);
    s << indent << "floor: ";
    s << std::endl;
    Printer< ::std_msgs::Int16_<ContainerAllocator> >::stream(s, indent + "  ", v.floor);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMPUSROVER_MSGS_MESSAGE_POSEWITHID_H
