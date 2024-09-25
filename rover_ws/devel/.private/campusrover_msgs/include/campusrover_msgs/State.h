// Generated by gencpp from file campusrover_msgs/State.msg
// DO NOT EDIT!


#ifndef CAMPUSROVER_MSGS_MESSAGE_STATE_H
#define CAMPUSROVER_MSGS_MESSAGE_STATE_H


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
struct State_
{
  typedef State_<ContainerAllocator> Type;

  State_()
    : state(0)
    , rooms()
    , current_floor(0)
    , destination_floor(0)  {
    }
  State_(const ContainerAllocator& _alloc)
    : state(0)
    , rooms(_alloc)
    , current_floor(0)
    , destination_floor(0)  {
  (void)_alloc;
    }



   typedef uint8_t _state_type;
  _state_type state;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _rooms_type;
  _rooms_type rooms;

   typedef int8_t _current_floor_type;
  _current_floor_type current_floor;

   typedef int8_t _destination_floor_type;
  _destination_floor_type destination_floor;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(STATE_MOVE_TO_ELEVATOR)
  #undef STATE_MOVE_TO_ELEVATOR
#endif
#if defined(_WIN32) && defined(STATE_TAKE_ELEVATOR)
  #undef STATE_TAKE_ELEVATOR
#endif
#if defined(_WIN32) && defined(STATE_DILIVER_THIS_FLOOR)
  #undef STATE_DILIVER_THIS_FLOOR
#endif
#if defined(_WIN32) && defined(STATE_MOVE_TO_ORIGIN)
  #undef STATE_MOVE_TO_ORIGIN
#endif

  enum {
    STATE_MOVE_TO_ELEVATOR = 0u,
    STATE_TAKE_ELEVATOR = 1u,
    STATE_DILIVER_THIS_FLOOR = 2u,
    STATE_MOVE_TO_ORIGIN = 3u,
  };


  typedef boost::shared_ptr< ::campusrover_msgs::State_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::campusrover_msgs::State_<ContainerAllocator> const> ConstPtr;

}; // struct State_

typedef ::campusrover_msgs::State_<std::allocator<void> > State;

typedef boost::shared_ptr< ::campusrover_msgs::State > StatePtr;
typedef boost::shared_ptr< ::campusrover_msgs::State const> StateConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::campusrover_msgs::State_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::campusrover_msgs::State_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::campusrover_msgs::State_<ContainerAllocator1> & lhs, const ::campusrover_msgs::State_<ContainerAllocator2> & rhs)
{
  return lhs.state == rhs.state &&
    lhs.rooms == rhs.rooms &&
    lhs.current_floor == rhs.current_floor &&
    lhs.destination_floor == rhs.destination_floor;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::campusrover_msgs::State_<ContainerAllocator1> & lhs, const ::campusrover_msgs::State_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace campusrover_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::State_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::State_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::State_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::State_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::State_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::State_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::campusrover_msgs::State_<ContainerAllocator> >
{
  static const char* value()
  {
    return "588c81bfe8a0db760845dae98b513221";
  }

  static const char* value(const ::campusrover_msgs::State_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x588c81bfe8a0db76ULL;
  static const uint64_t static_value2 = 0x0845dae98b513221ULL;
};

template<class ContainerAllocator>
struct DataType< ::campusrover_msgs::State_<ContainerAllocator> >
{
  static const char* value()
  {
    return "campusrover_msgs/State";
  }

  static const char* value(const ::campusrover_msgs::State_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::campusrover_msgs::State_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 STATE_MOVE_TO_ELEVATOR=0\n"
"uint8 STATE_TAKE_ELEVATOR=1\n"
"uint8 STATE_DILIVER_THIS_FLOOR=2\n"
"uint8 STATE_MOVE_TO_ORIGIN=3\n"
"uint8 state\n"
"string[] rooms	\n"
"int8 current_floor\n"
"int8 destination_floor\n"
;
  }

  static const char* value(const ::campusrover_msgs::State_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::campusrover_msgs::State_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
      stream.next(m.rooms);
      stream.next(m.current_floor);
      stream.next(m.destination_floor);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct State_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::campusrover_msgs::State_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::campusrover_msgs::State_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.state);
    s << indent << "rooms[]" << std::endl;
    for (size_t i = 0; i < v.rooms.size(); ++i)
    {
      s << indent << "  rooms[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.rooms[i]);
    }
    s << indent << "current_floor: ";
    Printer<int8_t>::stream(s, indent + "  ", v.current_floor);
    s << indent << "destination_floor: ";
    Printer<int8_t>::stream(s, indent + "  ", v.destination_floor);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMPUSROVER_MSGS_MESSAGE_STATE_H
