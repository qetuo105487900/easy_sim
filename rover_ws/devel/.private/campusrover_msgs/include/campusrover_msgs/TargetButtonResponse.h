// Generated by gencpp from file campusrover_msgs/TargetButtonResponse.msg
// DO NOT EDIT!


#ifndef CAMPUSROVER_MSGS_MESSAGE_TARGETBUTTONRESPONSE_H
#define CAMPUSROVER_MSGS_MESSAGE_TARGETBUTTONRESPONSE_H


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
struct TargetButtonResponse_
{
  typedef TargetButtonResponse_<ContainerAllocator> Type;

  TargetButtonResponse_()
    : activate(false)  {
    }
  TargetButtonResponse_(const ContainerAllocator& _alloc)
    : activate(false)  {
  (void)_alloc;
    }



   typedef uint8_t _activate_type;
  _activate_type activate;





  typedef boost::shared_ptr< ::campusrover_msgs::TargetButtonResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::campusrover_msgs::TargetButtonResponse_<ContainerAllocator> const> ConstPtr;

}; // struct TargetButtonResponse_

typedef ::campusrover_msgs::TargetButtonResponse_<std::allocator<void> > TargetButtonResponse;

typedef boost::shared_ptr< ::campusrover_msgs::TargetButtonResponse > TargetButtonResponsePtr;
typedef boost::shared_ptr< ::campusrover_msgs::TargetButtonResponse const> TargetButtonResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::campusrover_msgs::TargetButtonResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::campusrover_msgs::TargetButtonResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::campusrover_msgs::TargetButtonResponse_<ContainerAllocator1> & lhs, const ::campusrover_msgs::TargetButtonResponse_<ContainerAllocator2> & rhs)
{
  return lhs.activate == rhs.activate;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::campusrover_msgs::TargetButtonResponse_<ContainerAllocator1> & lhs, const ::campusrover_msgs::TargetButtonResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace campusrover_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::TargetButtonResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::TargetButtonResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::TargetButtonResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::TargetButtonResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::TargetButtonResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::TargetButtonResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::campusrover_msgs::TargetButtonResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b15627a984ebdd591b2ee87ce75c4d06";
  }

  static const char* value(const ::campusrover_msgs::TargetButtonResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb15627a984ebdd59ULL;
  static const uint64_t static_value2 = 0x1b2ee87ce75c4d06ULL;
};

template<class ContainerAllocator>
struct DataType< ::campusrover_msgs::TargetButtonResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "campusrover_msgs/TargetButtonResponse";
  }

  static const char* value(const ::campusrover_msgs::TargetButtonResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::campusrover_msgs::TargetButtonResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool activate\n"
;
  }

  static const char* value(const ::campusrover_msgs::TargetButtonResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::campusrover_msgs::TargetButtonResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.activate);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TargetButtonResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::campusrover_msgs::TargetButtonResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::campusrover_msgs::TargetButtonResponse_<ContainerAllocator>& v)
  {
    s << indent << "activate: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.activate);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMPUSROVER_MSGS_MESSAGE_TARGETBUTTONRESPONSE_H
