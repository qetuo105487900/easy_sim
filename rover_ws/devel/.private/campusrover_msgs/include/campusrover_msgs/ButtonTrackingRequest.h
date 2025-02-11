// Generated by gencpp from file campusrover_msgs/ButtonTrackingRequest.msg
// DO NOT EDIT!


#ifndef CAMPUSROVER_MSGS_MESSAGE_BUTTONTRACKINGREQUEST_H
#define CAMPUSROVER_MSGS_MESSAGE_BUTTONTRACKINGREQUEST_H


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
struct ButtonTrackingRequest_
{
  typedef ButtonTrackingRequest_<ContainerAllocator> Type;

  ButtonTrackingRequest_()
    : enable(false)
    , button_name()  {
    }
  ButtonTrackingRequest_(const ContainerAllocator& _alloc)
    : enable(false)
    , button_name(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _enable_type;
  _enable_type enable;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _button_name_type;
  _button_name_type button_name;





  typedef boost::shared_ptr< ::campusrover_msgs::ButtonTrackingRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::campusrover_msgs::ButtonTrackingRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ButtonTrackingRequest_

typedef ::campusrover_msgs::ButtonTrackingRequest_<std::allocator<void> > ButtonTrackingRequest;

typedef boost::shared_ptr< ::campusrover_msgs::ButtonTrackingRequest > ButtonTrackingRequestPtr;
typedef boost::shared_ptr< ::campusrover_msgs::ButtonTrackingRequest const> ButtonTrackingRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::campusrover_msgs::ButtonTrackingRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::campusrover_msgs::ButtonTrackingRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::campusrover_msgs::ButtonTrackingRequest_<ContainerAllocator1> & lhs, const ::campusrover_msgs::ButtonTrackingRequest_<ContainerAllocator2> & rhs)
{
  return lhs.enable == rhs.enable &&
    lhs.button_name == rhs.button_name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::campusrover_msgs::ButtonTrackingRequest_<ContainerAllocator1> & lhs, const ::campusrover_msgs::ButtonTrackingRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace campusrover_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::ButtonTrackingRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::ButtonTrackingRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::ButtonTrackingRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::ButtonTrackingRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::ButtonTrackingRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::ButtonTrackingRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::campusrover_msgs::ButtonTrackingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bd8a111cb143e37099156d7c341fa448";
  }

  static const char* value(const ::campusrover_msgs::ButtonTrackingRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbd8a111cb143e370ULL;
  static const uint64_t static_value2 = 0x99156d7c341fa448ULL;
};

template<class ContainerAllocator>
struct DataType< ::campusrover_msgs::ButtonTrackingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "campusrover_msgs/ButtonTrackingRequest";
  }

  static const char* value(const ::campusrover_msgs::ButtonTrackingRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::campusrover_msgs::ButtonTrackingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool enable\n"
"string button_name\n"
;
  }

  static const char* value(const ::campusrover_msgs::ButtonTrackingRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::campusrover_msgs::ButtonTrackingRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.enable);
      stream.next(m.button_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ButtonTrackingRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::campusrover_msgs::ButtonTrackingRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::campusrover_msgs::ButtonTrackingRequest_<ContainerAllocator>& v)
  {
    s << indent << "enable: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.enable);
    s << indent << "button_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.button_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMPUSROVER_MSGS_MESSAGE_BUTTONTRACKINGREQUEST_H
