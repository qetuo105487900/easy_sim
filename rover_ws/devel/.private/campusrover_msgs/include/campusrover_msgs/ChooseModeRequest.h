// Generated by gencpp from file campusrover_msgs/ChooseModeRequest.msg
// DO NOT EDIT!


#ifndef CAMPUSROVER_MSGS_MESSAGE_CHOOSEMODEREQUEST_H
#define CAMPUSROVER_MSGS_MESSAGE_CHOOSEMODEREQUEST_H


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
struct ChooseModeRequest_
{
  typedef ChooseModeRequest_<ContainerAllocator> Type;

  ChooseModeRequest_()
    : mode(0)  {
    }
  ChooseModeRequest_(const ContainerAllocator& _alloc)
    : mode(0)  {
  (void)_alloc;
    }



   typedef int8_t _mode_type;
  _mode_type mode;





  typedef boost::shared_ptr< ::campusrover_msgs::ChooseModeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::campusrover_msgs::ChooseModeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ChooseModeRequest_

typedef ::campusrover_msgs::ChooseModeRequest_<std::allocator<void> > ChooseModeRequest;

typedef boost::shared_ptr< ::campusrover_msgs::ChooseModeRequest > ChooseModeRequestPtr;
typedef boost::shared_ptr< ::campusrover_msgs::ChooseModeRequest const> ChooseModeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::campusrover_msgs::ChooseModeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::campusrover_msgs::ChooseModeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::campusrover_msgs::ChooseModeRequest_<ContainerAllocator1> & lhs, const ::campusrover_msgs::ChooseModeRequest_<ContainerAllocator2> & rhs)
{
  return lhs.mode == rhs.mode;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::campusrover_msgs::ChooseModeRequest_<ContainerAllocator1> & lhs, const ::campusrover_msgs::ChooseModeRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace campusrover_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::ChooseModeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::ChooseModeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::ChooseModeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::ChooseModeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::ChooseModeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::ChooseModeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::campusrover_msgs::ChooseModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "418c02483a8ca57215fb7b31c5c87234";
  }

  static const char* value(const ::campusrover_msgs::ChooseModeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x418c02483a8ca572ULL;
  static const uint64_t static_value2 = 0x15fb7b31c5c87234ULL;
};

template<class ContainerAllocator>
struct DataType< ::campusrover_msgs::ChooseModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "campusrover_msgs/ChooseModeRequest";
  }

  static const char* value(const ::campusrover_msgs::ChooseModeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::campusrover_msgs::ChooseModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 mode\n"
;
  }

  static const char* value(const ::campusrover_msgs::ChooseModeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::campusrover_msgs::ChooseModeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.mode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ChooseModeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::campusrover_msgs::ChooseModeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::campusrover_msgs::ChooseModeRequest_<ContainerAllocator>& v)
  {
    s << indent << "mode: ";
    Printer<int8_t>::stream(s, indent + "  ", v.mode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMPUSROVER_MSGS_MESSAGE_CHOOSEMODEREQUEST_H
