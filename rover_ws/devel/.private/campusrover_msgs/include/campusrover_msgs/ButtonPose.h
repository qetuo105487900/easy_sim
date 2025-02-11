// Generated by gencpp from file campusrover_msgs/ButtonPose.msg
// DO NOT EDIT!


#ifndef CAMPUSROVER_MSGS_MESSAGE_BUTTONPOSE_H
#define CAMPUSROVER_MSGS_MESSAGE_BUTTONPOSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace campusrover_msgs
{
template <class ContainerAllocator>
struct ButtonPose_
{
  typedef ButtonPose_<ContainerAllocator> Type;

  ButtonPose_()
    : label()
    , pose()
    , activation(0.0)  {
    }
  ButtonPose_(const ContainerAllocator& _alloc)
    : label(_alloc)
    , pose(_alloc)
    , activation(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _label_type;
  _label_type label;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef float _activation_type;
  _activation_type activation;





  typedef boost::shared_ptr< ::campusrover_msgs::ButtonPose_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::campusrover_msgs::ButtonPose_<ContainerAllocator> const> ConstPtr;

}; // struct ButtonPose_

typedef ::campusrover_msgs::ButtonPose_<std::allocator<void> > ButtonPose;

typedef boost::shared_ptr< ::campusrover_msgs::ButtonPose > ButtonPosePtr;
typedef boost::shared_ptr< ::campusrover_msgs::ButtonPose const> ButtonPoseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::campusrover_msgs::ButtonPose_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::campusrover_msgs::ButtonPose_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::campusrover_msgs::ButtonPose_<ContainerAllocator1> & lhs, const ::campusrover_msgs::ButtonPose_<ContainerAllocator2> & rhs)
{
  return lhs.label == rhs.label &&
    lhs.pose == rhs.pose &&
    lhs.activation == rhs.activation;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::campusrover_msgs::ButtonPose_<ContainerAllocator1> & lhs, const ::campusrover_msgs::ButtonPose_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace campusrover_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::ButtonPose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::ButtonPose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::ButtonPose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::ButtonPose_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::ButtonPose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::ButtonPose_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::campusrover_msgs::ButtonPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "daca3be73334a64027cdf1e3ddf112de";
  }

  static const char* value(const ::campusrover_msgs::ButtonPose_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdaca3be73334a640ULL;
  static const uint64_t static_value2 = 0x27cdf1e3ddf112deULL;
};

template<class ContainerAllocator>
struct DataType< ::campusrover_msgs::ButtonPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "campusrover_msgs/ButtonPose";
  }

  static const char* value(const ::campusrover_msgs::ButtonPose_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::campusrover_msgs::ButtonPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string label\n"
"geometry_msgs/Pose pose\n"
"float32 activation\n"
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

  static const char* value(const ::campusrover_msgs::ButtonPose_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::campusrover_msgs::ButtonPose_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.label);
      stream.next(m.pose);
      stream.next(m.activation);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ButtonPose_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::campusrover_msgs::ButtonPose_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::campusrover_msgs::ButtonPose_<ContainerAllocator>& v)
  {
    s << indent << "label: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.label);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "activation: ";
    Printer<float>::stream(s, indent + "  ", v.activation);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMPUSROVER_MSGS_MESSAGE_BUTTONPOSE_H
