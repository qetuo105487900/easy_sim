// Generated by gencpp from file campusrover_msgs/ArmMovePoseRequest.msg
// DO NOT EDIT!


#ifndef CAMPUSROVER_MSGS_MESSAGE_ARMMOVEPOSEREQUEST_H
#define CAMPUSROVER_MSGS_MESSAGE_ARMMOVEPOSEREQUEST_H


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
struct ArmMovePoseRequest_
{
  typedef ArmMovePoseRequest_<ContainerAllocator> Type;

  ArmMovePoseRequest_()
    : pose_name()  {
    }
  ArmMovePoseRequest_(const ContainerAllocator& _alloc)
    : pose_name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _pose_name_type;
  _pose_name_type pose_name;





  typedef boost::shared_ptr< ::campusrover_msgs::ArmMovePoseRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::campusrover_msgs::ArmMovePoseRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ArmMovePoseRequest_

typedef ::campusrover_msgs::ArmMovePoseRequest_<std::allocator<void> > ArmMovePoseRequest;

typedef boost::shared_ptr< ::campusrover_msgs::ArmMovePoseRequest > ArmMovePoseRequestPtr;
typedef boost::shared_ptr< ::campusrover_msgs::ArmMovePoseRequest const> ArmMovePoseRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::campusrover_msgs::ArmMovePoseRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::campusrover_msgs::ArmMovePoseRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::campusrover_msgs::ArmMovePoseRequest_<ContainerAllocator1> & lhs, const ::campusrover_msgs::ArmMovePoseRequest_<ContainerAllocator2> & rhs)
{
  return lhs.pose_name == rhs.pose_name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::campusrover_msgs::ArmMovePoseRequest_<ContainerAllocator1> & lhs, const ::campusrover_msgs::ArmMovePoseRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace campusrover_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::ArmMovePoseRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::ArmMovePoseRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::ArmMovePoseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::ArmMovePoseRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::ArmMovePoseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::ArmMovePoseRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::campusrover_msgs::ArmMovePoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e6184073e8e665fb2bf0be194fc36541";
  }

  static const char* value(const ::campusrover_msgs::ArmMovePoseRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe6184073e8e665fbULL;
  static const uint64_t static_value2 = 0x2bf0be194fc36541ULL;
};

template<class ContainerAllocator>
struct DataType< ::campusrover_msgs::ArmMovePoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "campusrover_msgs/ArmMovePoseRequest";
  }

  static const char* value(const ::campusrover_msgs::ArmMovePoseRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::campusrover_msgs::ArmMovePoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string pose_name\n"
;
  }

  static const char* value(const ::campusrover_msgs::ArmMovePoseRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::campusrover_msgs::ArmMovePoseRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pose_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ArmMovePoseRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::campusrover_msgs::ArmMovePoseRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::campusrover_msgs::ArmMovePoseRequest_<ContainerAllocator>& v)
  {
    s << indent << "pose_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.pose_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMPUSROVER_MSGS_MESSAGE_ARMMOVEPOSEREQUEST_H
