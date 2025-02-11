// Generated by gencpp from file campusrover_msgs/TrackedObstacleArray.msg
// DO NOT EDIT!


#ifndef CAMPUSROVER_MSGS_MESSAGE_TRACKEDOBSTACLEARRAY_H
#define CAMPUSROVER_MSGS_MESSAGE_TRACKEDOBSTACLEARRAY_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <campusrover_msgs/TrackedObstacle.h>

namespace campusrover_msgs
{
template <class ContainerAllocator>
struct TrackedObstacleArray_
{
  typedef TrackedObstacleArray_<ContainerAllocator> Type;

  TrackedObstacleArray_()
    : header()
    , obstacles()  {
    }
  TrackedObstacleArray_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , obstacles(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::campusrover_msgs::TrackedObstacle_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::campusrover_msgs::TrackedObstacle_<ContainerAllocator> >> _obstacles_type;
  _obstacles_type obstacles;





  typedef boost::shared_ptr< ::campusrover_msgs::TrackedObstacleArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::campusrover_msgs::TrackedObstacleArray_<ContainerAllocator> const> ConstPtr;

}; // struct TrackedObstacleArray_

typedef ::campusrover_msgs::TrackedObstacleArray_<std::allocator<void> > TrackedObstacleArray;

typedef boost::shared_ptr< ::campusrover_msgs::TrackedObstacleArray > TrackedObstacleArrayPtr;
typedef boost::shared_ptr< ::campusrover_msgs::TrackedObstacleArray const> TrackedObstacleArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::campusrover_msgs::TrackedObstacleArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::campusrover_msgs::TrackedObstacleArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::campusrover_msgs::TrackedObstacleArray_<ContainerAllocator1> & lhs, const ::campusrover_msgs::TrackedObstacleArray_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.obstacles == rhs.obstacles;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::campusrover_msgs::TrackedObstacleArray_<ContainerAllocator1> & lhs, const ::campusrover_msgs::TrackedObstacleArray_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace campusrover_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::TrackedObstacleArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::TrackedObstacleArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::TrackedObstacleArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::TrackedObstacleArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::TrackedObstacleArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::TrackedObstacleArray_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::campusrover_msgs::TrackedObstacleArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9b4a0e1c63af778bd3ddd8fe92cac32b";
  }

  static const char* value(const ::campusrover_msgs::TrackedObstacleArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9b4a0e1c63af778bULL;
  static const uint64_t static_value2 = 0xd3ddd8fe92cac32bULL;
};

template<class ContainerAllocator>
struct DataType< ::campusrover_msgs::TrackedObstacleArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "campusrover_msgs/TrackedObstacleArray";
  }

  static const char* value(const ::campusrover_msgs::TrackedObstacleArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::campusrover_msgs::TrackedObstacleArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"campusrover_msgs/TrackedObstacle[] obstacles\n"
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
"MSG: campusrover_msgs/TrackedObstacle\n"
"std_msgs/Header header\n"
"uint32 id\n"
"uint16 label\n"
"uint16 LABEL_PERSON = 1\n"
"uint16 LABEL_BICYCLE = 2\n"
"uint16 LABEL_CAR = 3\n"
"uint16 LABEL_MOTORCYCLE = 4\n"
"geometry_msgs/Pose pose\n"
"geometry_msgs/Vector3 dimensions\n"
"geometry_msgs/Twist velocity\n"
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
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
;
  }

  static const char* value(const ::campusrover_msgs::TrackedObstacleArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::campusrover_msgs::TrackedObstacleArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.obstacles);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrackedObstacleArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::campusrover_msgs::TrackedObstacleArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::campusrover_msgs::TrackedObstacleArray_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "obstacles[]" << std::endl;
    for (size_t i = 0; i < v.obstacles.size(); ++i)
    {
      s << indent << "  obstacles[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::campusrover_msgs::TrackedObstacle_<ContainerAllocator> >::stream(s, indent + "    ", v.obstacles[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMPUSROVER_MSGS_MESSAGE_TRACKEDOBSTACLEARRAY_H
