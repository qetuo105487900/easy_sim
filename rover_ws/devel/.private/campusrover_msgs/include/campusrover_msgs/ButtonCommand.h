// Generated by gencpp from file campusrover_msgs/ButtonCommand.msg
// DO NOT EDIT!


#ifndef CAMPUSROVER_MSGS_MESSAGE_BUTTONCOMMAND_H
#define CAMPUSROVER_MSGS_MESSAGE_BUTTONCOMMAND_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/String.h>
#include <std_msgs/String.h>

namespace campusrover_msgs
{
template <class ContainerAllocator>
struct ButtonCommand_
{
  typedef ButtonCommand_<ContainerAllocator> Type;

  ButtonCommand_()
    : button_name()
    , command_type()  {
    }
  ButtonCommand_(const ContainerAllocator& _alloc)
    : button_name(_alloc)
    , command_type(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::String_<ContainerAllocator>  _button_name_type;
  _button_name_type button_name;

   typedef  ::std_msgs::String_<ContainerAllocator>  _command_type_type;
  _command_type_type command_type;





  typedef boost::shared_ptr< ::campusrover_msgs::ButtonCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::campusrover_msgs::ButtonCommand_<ContainerAllocator> const> ConstPtr;

}; // struct ButtonCommand_

typedef ::campusrover_msgs::ButtonCommand_<std::allocator<void> > ButtonCommand;

typedef boost::shared_ptr< ::campusrover_msgs::ButtonCommand > ButtonCommandPtr;
typedef boost::shared_ptr< ::campusrover_msgs::ButtonCommand const> ButtonCommandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::campusrover_msgs::ButtonCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::campusrover_msgs::ButtonCommand_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::campusrover_msgs::ButtonCommand_<ContainerAllocator1> & lhs, const ::campusrover_msgs::ButtonCommand_<ContainerAllocator2> & rhs)
{
  return lhs.button_name == rhs.button_name &&
    lhs.command_type == rhs.command_type;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::campusrover_msgs::ButtonCommand_<ContainerAllocator1> & lhs, const ::campusrover_msgs::ButtonCommand_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace campusrover_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::ButtonCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::ButtonCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::ButtonCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::ButtonCommand_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::ButtonCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::ButtonCommand_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::campusrover_msgs::ButtonCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cf26bb118be6044a4021152a65bf823f";
  }

  static const char* value(const ::campusrover_msgs::ButtonCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcf26bb118be6044aULL;
  static const uint64_t static_value2 = 0x4021152a65bf823fULL;
};

template<class ContainerAllocator>
struct DataType< ::campusrover_msgs::ButtonCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "campusrover_msgs/ButtonCommand";
  }

  static const char* value(const ::campusrover_msgs::ButtonCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::campusrover_msgs::ButtonCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/String button_name\n"
"std_msgs/String command_type\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/String\n"
"string data\n"
;
  }

  static const char* value(const ::campusrover_msgs::ButtonCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::campusrover_msgs::ButtonCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.button_name);
      stream.next(m.command_type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ButtonCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::campusrover_msgs::ButtonCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::campusrover_msgs::ButtonCommand_<ContainerAllocator>& v)
  {
    s << indent << "button_name: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.button_name);
    s << indent << "command_type: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.command_type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMPUSROVER_MSGS_MESSAGE_BUTTONCOMMAND_H
