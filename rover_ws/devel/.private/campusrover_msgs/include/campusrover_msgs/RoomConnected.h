// Generated by gencpp from file campusrover_msgs/RoomConnected.msg
// DO NOT EDIT!


#ifndef CAMPUSROVER_MSGS_MESSAGE_ROOMCONNECTED_H
#define CAMPUSROVER_MSGS_MESSAGE_ROOMCONNECTED_H


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
struct RoomConnected_
{
  typedef RoomConnected_<ContainerAllocator> Type;

  RoomConnected_()
    : connection()  {
    }
  RoomConnected_(const ContainerAllocator& _alloc)
    : connection(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _connection_type;
  _connection_type connection;





  typedef boost::shared_ptr< ::campusrover_msgs::RoomConnected_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::campusrover_msgs::RoomConnected_<ContainerAllocator> const> ConstPtr;

}; // struct RoomConnected_

typedef ::campusrover_msgs::RoomConnected_<std::allocator<void> > RoomConnected;

typedef boost::shared_ptr< ::campusrover_msgs::RoomConnected > RoomConnectedPtr;
typedef boost::shared_ptr< ::campusrover_msgs::RoomConnected const> RoomConnectedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::campusrover_msgs::RoomConnected_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::campusrover_msgs::RoomConnected_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::campusrover_msgs::RoomConnected_<ContainerAllocator1> & lhs, const ::campusrover_msgs::RoomConnected_<ContainerAllocator2> & rhs)
{
  return lhs.connection == rhs.connection;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::campusrover_msgs::RoomConnected_<ContainerAllocator1> & lhs, const ::campusrover_msgs::RoomConnected_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace campusrover_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::RoomConnected_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::RoomConnected_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::RoomConnected_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::RoomConnected_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::RoomConnected_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::RoomConnected_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::campusrover_msgs::RoomConnected_<ContainerAllocator> >
{
  static const char* value()
  {
    return "43f469704f4cb14b510f898718cdf6a3";
  }

  static const char* value(const ::campusrover_msgs::RoomConnected_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x43f469704f4cb14bULL;
  static const uint64_t static_value2 = 0x510f898718cdf6a3ULL;
};

template<class ContainerAllocator>
struct DataType< ::campusrover_msgs::RoomConnected_<ContainerAllocator> >
{
  static const char* value()
  {
    return "campusrover_msgs/RoomConnected";
  }

  static const char* value(const ::campusrover_msgs::RoomConnected_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::campusrover_msgs::RoomConnected_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string[] connection\n"
;
  }

  static const char* value(const ::campusrover_msgs::RoomConnected_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::campusrover_msgs::RoomConnected_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.connection);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RoomConnected_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::campusrover_msgs::RoomConnected_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::campusrover_msgs::RoomConnected_<ContainerAllocator>& v)
  {
    s << indent << "connection[]" << std::endl;
    for (size_t i = 0; i < v.connection.size(); ++i)
    {
      s << indent << "  connection[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.connection[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMPUSROVER_MSGS_MESSAGE_ROOMCONNECTED_H
