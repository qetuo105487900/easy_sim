// Generated by gencpp from file campusrover_msgs/TrackedObstacle.msg
// DO NOT EDIT!


#ifndef CAMPUSROVER_MSGS_MESSAGE_TRACKEDOBSTACLE_H
#define CAMPUSROVER_MSGS_MESSAGE_TRACKEDOBSTACLE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Twist.h>

namespace campusrover_msgs
{
template <class ContainerAllocator>
struct TrackedObstacle_
{
  typedef TrackedObstacle_<ContainerAllocator> Type;

  TrackedObstacle_()
    : header()
    , id(0)
    , label(0)
    , pose()
    , dimensions()
    , velocity()  {
    }
  TrackedObstacle_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , id(0)
    , label(0)
    , pose(_alloc)
    , dimensions(_alloc)
    , velocity(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint32_t _id_type;
  _id_type id;

   typedef uint16_t _label_type;
  _label_type label;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _dimensions_type;
  _dimensions_type dimensions;

   typedef  ::geometry_msgs::Twist_<ContainerAllocator>  _velocity_type;
  _velocity_type velocity;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(LABEL_PERSON)
  #undef LABEL_PERSON
#endif
#if defined(_WIN32) && defined(LABEL_BICYCLE)
  #undef LABEL_BICYCLE
#endif
#if defined(_WIN32) && defined(LABEL_CAR)
  #undef LABEL_CAR
#endif
#if defined(_WIN32) && defined(LABEL_MOTORCYCLE)
  #undef LABEL_MOTORCYCLE
#endif

  enum {
    LABEL_PERSON = 1u,
    LABEL_BICYCLE = 2u,
    LABEL_CAR = 3u,
    LABEL_MOTORCYCLE = 4u,
  };


  typedef boost::shared_ptr< ::campusrover_msgs::TrackedObstacle_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::campusrover_msgs::TrackedObstacle_<ContainerAllocator> const> ConstPtr;

}; // struct TrackedObstacle_

typedef ::campusrover_msgs::TrackedObstacle_<std::allocator<void> > TrackedObstacle;

typedef boost::shared_ptr< ::campusrover_msgs::TrackedObstacle > TrackedObstaclePtr;
typedef boost::shared_ptr< ::campusrover_msgs::TrackedObstacle const> TrackedObstacleConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::campusrover_msgs::TrackedObstacle_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::campusrover_msgs::TrackedObstacle_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::campusrover_msgs::TrackedObstacle_<ContainerAllocator1> & lhs, const ::campusrover_msgs::TrackedObstacle_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.id == rhs.id &&
    lhs.label == rhs.label &&
    lhs.pose == rhs.pose &&
    lhs.dimensions == rhs.dimensions &&
    lhs.velocity == rhs.velocity;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::campusrover_msgs::TrackedObstacle_<ContainerAllocator1> & lhs, const ::campusrover_msgs::TrackedObstacle_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace campusrover_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::TrackedObstacle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::TrackedObstacle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::TrackedObstacle_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::TrackedObstacle_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::TrackedObstacle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::TrackedObstacle_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::campusrover_msgs::TrackedObstacle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f7759ef59b0acb710f3a8cee7676c8df";
  }

  static const char* value(const ::campusrover_msgs::TrackedObstacle_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf7759ef59b0acb71ULL;
  static const uint64_t static_value2 = 0x0f3a8cee7676c8dfULL;
};

template<class ContainerAllocator>
struct DataType< ::campusrover_msgs::TrackedObstacle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "campusrover_msgs/TrackedObstacle";
  }

  static const char* value(const ::campusrover_msgs::TrackedObstacle_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::campusrover_msgs::TrackedObstacle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
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

  static const char* value(const ::campusrover_msgs::TrackedObstacle_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::campusrover_msgs::TrackedObstacle_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.id);
      stream.next(m.label);
      stream.next(m.pose);
      stream.next(m.dimensions);
      stream.next(m.velocity);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrackedObstacle_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::campusrover_msgs::TrackedObstacle_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::campusrover_msgs::TrackedObstacle_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.id);
    s << indent << "label: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.label);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "dimensions: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.dimensions);
    s << indent << "velocity: ";
    s << std::endl;
    Printer< ::geometry_msgs::Twist_<ContainerAllocator> >::stream(s, indent + "  ", v.velocity);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMPUSROVER_MSGS_MESSAGE_TRACKEDOBSTACLE_H
