// Generated by gencpp from file campusrover_move/PullOverPathGeneratorResponse.msg
// DO NOT EDIT!


#ifndef CAMPUSROVER_MOVE_MESSAGE_PULLOVERPATHGENERATORRESPONSE_H
#define CAMPUSROVER_MOVE_MESSAGE_PULLOVERPATHGENERATORRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <nav_msgs/Path.h>

namespace campusrover_move
{
template <class ContainerAllocator>
struct PullOverPathGeneratorResponse_
{
  typedef PullOverPathGeneratorResponse_<ContainerAllocator> Type;

  PullOverPathGeneratorResponse_()
    : pullover_path()  {
    }
  PullOverPathGeneratorResponse_(const ContainerAllocator& _alloc)
    : pullover_path(_alloc)  {
  (void)_alloc;
    }



   typedef  ::nav_msgs::Path_<ContainerAllocator>  _pullover_path_type;
  _pullover_path_type pullover_path;





  typedef boost::shared_ptr< ::campusrover_move::PullOverPathGeneratorResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::campusrover_move::PullOverPathGeneratorResponse_<ContainerAllocator> const> ConstPtr;

}; // struct PullOverPathGeneratorResponse_

typedef ::campusrover_move::PullOverPathGeneratorResponse_<std::allocator<void> > PullOverPathGeneratorResponse;

typedef boost::shared_ptr< ::campusrover_move::PullOverPathGeneratorResponse > PullOverPathGeneratorResponsePtr;
typedef boost::shared_ptr< ::campusrover_move::PullOverPathGeneratorResponse const> PullOverPathGeneratorResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::campusrover_move::PullOverPathGeneratorResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::campusrover_move::PullOverPathGeneratorResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::campusrover_move::PullOverPathGeneratorResponse_<ContainerAllocator1> & lhs, const ::campusrover_move::PullOverPathGeneratorResponse_<ContainerAllocator2> & rhs)
{
  return lhs.pullover_path == rhs.pullover_path;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::campusrover_move::PullOverPathGeneratorResponse_<ContainerAllocator1> & lhs, const ::campusrover_move::PullOverPathGeneratorResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace campusrover_move

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::campusrover_move::PullOverPathGeneratorResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::campusrover_move::PullOverPathGeneratorResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_move::PullOverPathGeneratorResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_move::PullOverPathGeneratorResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_move::PullOverPathGeneratorResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_move::PullOverPathGeneratorResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::campusrover_move::PullOverPathGeneratorResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dbd9a7ebc239827c111193e77fdabbdc";
  }

  static const char* value(const ::campusrover_move::PullOverPathGeneratorResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdbd9a7ebc239827cULL;
  static const uint64_t static_value2 = 0x111193e77fdabbdcULL;
};

template<class ContainerAllocator>
struct DataType< ::campusrover_move::PullOverPathGeneratorResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "campusrover_move/PullOverPathGeneratorResponse";
  }

  static const char* value(const ::campusrover_move::PullOverPathGeneratorResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::campusrover_move::PullOverPathGeneratorResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nav_msgs/Path pullover_path\n"
"\n"
"================================================================================\n"
"MSG: nav_msgs/Path\n"
"#An array of poses that represents a Path for a robot to follow\n"
"Header header\n"
"geometry_msgs/PoseStamped[] poses\n"
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
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
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

  static const char* value(const ::campusrover_move::PullOverPathGeneratorResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::campusrover_move::PullOverPathGeneratorResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pullover_path);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PullOverPathGeneratorResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::campusrover_move::PullOverPathGeneratorResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::campusrover_move::PullOverPathGeneratorResponse_<ContainerAllocator>& v)
  {
    s << indent << "pullover_path: ";
    s << std::endl;
    Printer< ::nav_msgs::Path_<ContainerAllocator> >::stream(s, indent + "  ", v.pullover_path);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMPUSROVER_MOVE_MESSAGE_PULLOVERPATHGENERATORRESPONSE_H
