// Generated by gencpp from file campusrover_msgs/HmiStatus.msg
// DO NOT EDIT!


#ifndef CAMPUSROVER_MSGS_MESSAGE_HMISTATUS_H
#define CAMPUSROVER_MSGS_MESSAGE_HMISTATUS_H


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
struct HmiStatus_
{
  typedef HmiStatus_<ContainerAllocator> Type;

  HmiStatus_()
    : staus(0)  {
    }
  HmiStatus_(const ContainerAllocator& _alloc)
    : staus(0)  {
  (void)_alloc;
    }



   typedef uint16_t _staus_type;
  _staus_type staus;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(STAUS_BOOT)
  #undef STAUS_BOOT
#endif
#if defined(_WIN32) && defined(STAUS_STANDBY)
  #undef STAUS_STANDBY
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_HELLO_HELLO)
  #undef STAUS_SPEAK_HELLO_HELLO
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_SCAN_QRCODE1)
  #undef STAUS_SPEAK_SCAN_QRCODE1
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_WRONG_NUMBER1)
  #undef STAUS_SPEAK_WRONG_NUMBER1
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_PUT_IN_MEALS)
  #undef STAUS_SPEAK_PUT_IN_MEALS
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_PRESS_BUTTON_AFTER_PUT_IN)
  #undef STAUS_SPEAK_PRESS_BUTTON_AFTER_PUT_IN
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_MEAL_ARRIVED)
  #undef STAUS_SPEAK_MEAL_ARRIVED
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_DELIVERING_MEAL)
  #undef STAUS_SPEAK_DELIVERING_MEAL
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_SCAN_QRCODE2)
  #undef STAUS_SPEAK_SCAN_QRCODE2
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_WRONG_NUMBER2)
  #undef STAUS_SPEAK_WRONG_NUMBER2
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_TAKE_OUT_MEALS_1)
  #undef STAUS_SPEAK_TAKE_OUT_MEALS_1
#endif
#if defined(_WIN32) && defined(STAUS_WHITE_LIGHT_1)
  #undef STAUS_WHITE_LIGHT_1
#endif
#if defined(_WIN32) && defined(STAUS_GREEN_LIGHT_1)
  #undef STAUS_GREEN_LIGHT_1
#endif
#if defined(_WIN32) && defined(STAUS_BLUE_LIGHT_1)
  #undef STAUS_BLUE_LIGHT_1
#endif
#if defined(_WIN32) && defined(STAUS_RED_LIGHT_1)
  #undef STAUS_RED_LIGHT_1
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_TAKE_OUT_MEALS_2)
  #undef STAUS_SPEAK_TAKE_OUT_MEALS_2
#endif
#if defined(_WIN32) && defined(STAUS_WHITE_LIGHT_2)
  #undef STAUS_WHITE_LIGHT_2
#endif
#if defined(_WIN32) && defined(STAUS_GREEN_LIGHT_2)
  #undef STAUS_GREEN_LIGHT_2
#endif
#if defined(_WIN32) && defined(STAUS_BLUE_LIGHT_2)
  #undef STAUS_BLUE_LIGHT_2
#endif
#if defined(_WIN32) && defined(STAUS_RED_LIGHT_2)
  #undef STAUS_RED_LIGHT_2
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_TAKE_OUT_MEALS_3)
  #undef STAUS_SPEAK_TAKE_OUT_MEALS_3
#endif
#if defined(_WIN32) && defined(STAUS_WHITE_LIGHT_3)
  #undef STAUS_WHITE_LIGHT_3
#endif
#if defined(_WIN32) && defined(STAUS_GREEN_LIGHT_3)
  #undef STAUS_GREEN_LIGHT_3
#endif
#if defined(_WIN32) && defined(STAUS_BLUE_LIGHT_3)
  #undef STAUS_BLUE_LIGHT_3
#endif
#if defined(_WIN32) && defined(STAUS_RED_LIGHT_3)
  #undef STAUS_RED_LIGHT_3
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_TAKE_OUT_MEALS_4)
  #undef STAUS_SPEAK_TAKE_OUT_MEALS_4
#endif
#if defined(_WIN32) && defined(STAUS_WHITE_LIGHT_4)
  #undef STAUS_WHITE_LIGHT_4
#endif
#if defined(_WIN32) && defined(STAUS_GREEN_LIGHT_4)
  #undef STAUS_GREEN_LIGHT_4
#endif
#if defined(_WIN32) && defined(STAUS_BLUE_LIGHT_4)
  #undef STAUS_BLUE_LIGHT_4
#endif
#if defined(_WIN32) && defined(STAUS_RED_LIGHT_4)
  #undef STAUS_RED_LIGHT_4
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_PRESS_BUTTON_AFTER_TAKE_OUT)
  #undef STAUS_SPEAK_PRESS_BUTTON_AFTER_TAKE_OUT
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_ENJOY_MEAL)
  #undef STAUS_SPEAK_ENJOY_MEAL
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_HELLO)
  #undef STAUS_SPEAK_HELLO
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_THANKS)
  #undef STAUS_SPEAK_THANKS
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_GOODBYE)
  #undef STAUS_SPEAK_GOODBYE
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_EXCUSE_ME)
  #undef STAUS_SPEAK_EXCUSE_ME
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_COMMING_THROUGH)
  #undef STAUS_SPEAK_COMMING_THROUGH
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_BE_CAREFUL)
  #undef STAUS_SPEAK_BE_CAREFUL
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_WATCH_OUT)
  #undef STAUS_SPEAK_WATCH_OUT
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_HELP_ME)
  #undef STAUS_SPEAK_HELP_ME
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_OPEN_DOOR)
  #undef STAUS_SPEAK_OPEN_DOOR
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_HAVE_GOODDAY)
  #undef STAUS_SPEAK_HAVE_GOODDAY
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_WRONG_OPERATION)
  #undef STAUS_SPEAK_WRONG_OPERATION
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_DO_IT_AGAIN)
  #undef STAUS_SPEAK_DO_IT_AGAIN
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_CORRECT_OR_NOT)
  #undef STAUS_SPEAK_CORRECT_OR_NOT
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_LOW_BATTERY)
  #undef STAUS_SPEAK_LOW_BATTERY
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_SYSTEM_ERROR)
  #undef STAUS_SPEAK_SYSTEM_ERROR
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_CALL_STAFF)
  #undef STAUS_SPEAK_CALL_STAFF
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_LOADING)
  #undef STAUS_SPEAK_LOADING
#endif
#if defined(_WIN32) && defined(STAUS_SPEAK_WAIT)
  #undef STAUS_SPEAK_WAIT
#endif
#if defined(_WIN32) && defined(STAUS_ENTER_ELEVATOR)
  #undef STAUS_ENTER_ELEVATOR
#endif
#if defined(_WIN32) && defined(STAUS_LEAVING_ELEVATOR)
  #undef STAUS_LEAVING_ELEVATOR
#endif
#if defined(_WIN32) && defined(STAUS_TURN_RIGHT)
  #undef STAUS_TURN_RIGHT
#endif
#if defined(_WIN32) && defined(STAUS_TURN_LEFT)
  #undef STAUS_TURN_LEFT
#endif
#if defined(_WIN32) && defined(STAUS_BLOCKED)
  #undef STAUS_BLOCKED
#endif
#if defined(_WIN32) && defined(STAUS_REVERSE)
  #undef STAUS_REVERSE
#endif
#if defined(_WIN32) && defined(STAUS_BREATH)
  #undef STAUS_BREATH
#endif
#if defined(_WIN32) && defined(STAUS_FORWARD)
  #undef STAUS_FORWARD
#endif
#if defined(_WIN32) && defined(STAUS_MOVING)
  #undef STAUS_MOVING
#endif
#if defined(_WIN32) && defined(STAUS_1F)
  #undef STAUS_1F
#endif
#if defined(_WIN32) && defined(STAUS_2F)
  #undef STAUS_2F
#endif
#if defined(_WIN32) && defined(STAUS_3F)
  #undef STAUS_3F
#endif
#if defined(_WIN32) && defined(STAUS_4F)
  #undef STAUS_4F
#endif
#if defined(_WIN32) && defined(STAUS_5F)
  #undef STAUS_5F
#endif
#if defined(_WIN32) && defined(STAUS_6F)
  #undef STAUS_6F
#endif
#if defined(_WIN32) && defined(STAUS_7F)
  #undef STAUS_7F
#endif
#if defined(_WIN32) && defined(STAUS_8F)
  #undef STAUS_8F
#endif
#if defined(_WIN32) && defined(STAUS_9F)
  #undef STAUS_9F
#endif
#if defined(_WIN32) && defined(STAUS_10F)
  #undef STAUS_10F
#endif
#if defined(_WIN32) && defined(STAUS_11F)
  #undef STAUS_11F
#endif
#if defined(_WIN32) && defined(STAUS_12F)
  #undef STAUS_12F
#endif
#if defined(_WIN32) && defined(STAUS_PRESS_BUTTON)
  #undef STAUS_PRESS_BUTTON
#endif
#if defined(_WIN32) && defined(STAUS_ALL_LIGHT_OFF)
  #undef STAUS_ALL_LIGHT_OFF
#endif
#if defined(_WIN32) && defined(STAUS_ALL_LIGHT_ON)
  #undef STAUS_ALL_LIGHT_ON
#endif
#if defined(_WIN32) && defined(STAUS_TWO_SIDE_BLUE)
  #undef STAUS_TWO_SIDE_BLUE
#endif
#if defined(_WIN32) && defined(STAUS_LEFT_SIDE_BLUE_BLINK)
  #undef STAUS_LEFT_SIDE_BLUE_BLINK
#endif
#if defined(_WIN32) && defined(STAUS_RIGHT_SIDE_BLUE_BLINK)
  #undef STAUS_RIGHT_SIDE_BLUE_BLINK
#endif
#if defined(_WIN32) && defined(STAUS_TWO_SIDE_BREATH)
  #undef STAUS_TWO_SIDE_BREATH
#endif
#if defined(_WIN32) && defined(STAUS_TWO_SIDE_WATER_1)
  #undef STAUS_TWO_SIDE_WATER_1
#endif
#if defined(_WIN32) && defined(STAUS_TWO_SIDE_WATER_2)
  #undef STAUS_TWO_SIDE_WATER_2
#endif
#if defined(_WIN32) && defined(STAUS_TWO_SIDE_WATER_3)
  #undef STAUS_TWO_SIDE_WATER_3
#endif
#if defined(_WIN32) && defined(STAUS_TWO_SIDE_WATER_4)
  #undef STAUS_TWO_SIDE_WATER_4
#endif
#if defined(_WIN32) && defined(STAUS_TWO_SIDE_TALKING)
  #undef STAUS_TWO_SIDE_TALKING
#endif

  enum {
    STAUS_BOOT = 1u,
    STAUS_STANDBY = 2u,
    STAUS_SPEAK_HELLO_HELLO = 54u,
    STAUS_SPEAK_SCAN_QRCODE1 = 55u,
    STAUS_SPEAK_WRONG_NUMBER1 = 56u,
    STAUS_SPEAK_PUT_IN_MEALS = 57u,
    STAUS_SPEAK_PRESS_BUTTON_AFTER_PUT_IN = 58u,
    STAUS_SPEAK_MEAL_ARRIVED = 59u,
    STAUS_SPEAK_DELIVERING_MEAL = 60u,
    STAUS_SPEAK_SCAN_QRCODE2 = 61u,
    STAUS_SPEAK_WRONG_NUMBER2 = 62u,
    STAUS_SPEAK_TAKE_OUT_MEALS_1 = 3u,
    STAUS_WHITE_LIGHT_1 = 91u,
    STAUS_GREEN_LIGHT_1 = 7u,
    STAUS_BLUE_LIGHT_1 = 11u,
    STAUS_RED_LIGHT_1 = 15u,
    STAUS_SPEAK_TAKE_OUT_MEALS_2 = 4u,
    STAUS_WHITE_LIGHT_2 = 92u,
    STAUS_GREEN_LIGHT_2 = 8u,
    STAUS_BLUE_LIGHT_2 = 12u,
    STAUS_RED_LIGHT_2 = 16u,
    STAUS_SPEAK_TAKE_OUT_MEALS_3 = 5u,
    STAUS_WHITE_LIGHT_3 = 93u,
    STAUS_GREEN_LIGHT_3 = 9u,
    STAUS_BLUE_LIGHT_3 = 13u,
    STAUS_RED_LIGHT_3 = 17u,
    STAUS_SPEAK_TAKE_OUT_MEALS_4 = 6u,
    STAUS_WHITE_LIGHT_4 = 94u,
    STAUS_GREEN_LIGHT_4 = 10u,
    STAUS_BLUE_LIGHT_4 = 14u,
    STAUS_RED_LIGHT_4 = 18u,
    STAUS_SPEAK_PRESS_BUTTON_AFTER_TAKE_OUT = 63u,
    STAUS_SPEAK_ENJOY_MEAL = 64u,
    STAUS_SPEAK_HELLO = 65u,
    STAUS_SPEAK_THANKS = 66u,
    STAUS_SPEAK_GOODBYE = 67u,
    STAUS_SPEAK_EXCUSE_ME = 68u,
    STAUS_SPEAK_COMMING_THROUGH = 69u,
    STAUS_SPEAK_BE_CAREFUL = 70u,
    STAUS_SPEAK_WATCH_OUT = 19u,
    STAUS_SPEAK_HELP_ME = 20u,
    STAUS_SPEAK_OPEN_DOOR = 21u,
    STAUS_SPEAK_HAVE_GOODDAY = 22u,
    STAUS_SPEAK_WRONG_OPERATION = 23u,
    STAUS_SPEAK_DO_IT_AGAIN = 24u,
    STAUS_SPEAK_CORRECT_OR_NOT = 25u,
    STAUS_SPEAK_LOW_BATTERY = 26u,
    STAUS_SPEAK_SYSTEM_ERROR = 27u,
    STAUS_SPEAK_CALL_STAFF = 28u,
    STAUS_SPEAK_LOADING = 29u,
    STAUS_SPEAK_WAIT = 30u,
    STAUS_ENTER_ELEVATOR = 31u,
    STAUS_LEAVING_ELEVATOR = 32u,
    STAUS_TURN_RIGHT = 34u,
    STAUS_TURN_LEFT = 35u,
    STAUS_BLOCKED = 36u,
    STAUS_REVERSE = 37u,
    STAUS_BREATH = 38u,
    STAUS_FORWARD = 39u,
    STAUS_MOVING = 40u,
    STAUS_1F = 41u,
    STAUS_2F = 42u,
    STAUS_3F = 43u,
    STAUS_4F = 44u,
    STAUS_5F = 45u,
    STAUS_6F = 46u,
    STAUS_7F = 47u,
    STAUS_8F = 48u,
    STAUS_9F = 49u,
    STAUS_10F = 50u,
    STAUS_11F = 51u,
    STAUS_12F = 52u,
    STAUS_PRESS_BUTTON = 53u,
    STAUS_ALL_LIGHT_OFF = 100u,
    STAUS_ALL_LIGHT_ON = 101u,
    STAUS_TWO_SIDE_BLUE = 80u,
    STAUS_LEFT_SIDE_BLUE_BLINK = 81u,
    STAUS_RIGHT_SIDE_BLUE_BLINK = 82u,
    STAUS_TWO_SIDE_BREATH = 83u,
    STAUS_TWO_SIDE_WATER_1 = 84u,
    STAUS_TWO_SIDE_WATER_2 = 85u,
    STAUS_TWO_SIDE_WATER_3 = 86u,
    STAUS_TWO_SIDE_WATER_4 = 87u,
    STAUS_TWO_SIDE_TALKING = 88u,
  };


  typedef boost::shared_ptr< ::campusrover_msgs::HmiStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::campusrover_msgs::HmiStatus_<ContainerAllocator> const> ConstPtr;

}; // struct HmiStatus_

typedef ::campusrover_msgs::HmiStatus_<std::allocator<void> > HmiStatus;

typedef boost::shared_ptr< ::campusrover_msgs::HmiStatus > HmiStatusPtr;
typedef boost::shared_ptr< ::campusrover_msgs::HmiStatus const> HmiStatusConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::campusrover_msgs::HmiStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::campusrover_msgs::HmiStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::campusrover_msgs::HmiStatus_<ContainerAllocator1> & lhs, const ::campusrover_msgs::HmiStatus_<ContainerAllocator2> & rhs)
{
  return lhs.staus == rhs.staus;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::campusrover_msgs::HmiStatus_<ContainerAllocator1> & lhs, const ::campusrover_msgs::HmiStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace campusrover_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::HmiStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::campusrover_msgs::HmiStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::HmiStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::campusrover_msgs::HmiStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::HmiStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::campusrover_msgs::HmiStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::campusrover_msgs::HmiStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3a5095bbf21b70be2bcdbef0adedeff8";
  }

  static const char* value(const ::campusrover_msgs::HmiStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3a5095bbf21b70beULL;
  static const uint64_t static_value2 = 0x2bcdbef0adedeff8ULL;
};

template<class ContainerAllocator>
struct DataType< ::campusrover_msgs::HmiStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "campusrover_msgs/HmiStatus";
  }

  static const char* value(const ::campusrover_msgs::HmiStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::campusrover_msgs::HmiStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint16 staus\n"
"uint16 STAUS_BOOT = 1\n"
"uint16 STAUS_STANDBY = 2\n"
"uint16 STAUS_SPEAK_HELLO_HELLO = 54\n"
"uint16 STAUS_SPEAK_SCAN_QRCODE1 = 55\n"
"uint16 STAUS_SPEAK_WRONG_NUMBER1 = 56\n"
"uint16 STAUS_SPEAK_PUT_IN_MEALS = 57\n"
"uint16 STAUS_SPEAK_PRESS_BUTTON_AFTER_PUT_IN = 58\n"
"uint16 STAUS_SPEAK_MEAL_ARRIVED = 59\n"
"uint16 STAUS_SPEAK_DELIVERING_MEAL = 60\n"
"uint16 STAUS_SPEAK_SCAN_QRCODE2 = 61\n"
"uint16 STAUS_SPEAK_WRONG_NUMBER2 = 62\n"
"uint16 STAUS_SPEAK_TAKE_OUT_MEALS_1 = 3\n"
"uint16 STAUS_WHITE_LIGHT_1 = 91 #container1 white\n"
"uint16 STAUS_GREEN_LIGHT_1 = 7 #blink\n"
"uint16 STAUS_BLUE_LIGHT_1 = 11 #open\n"
"uint16 STAUS_RED_LIGHT_1 = 15 #closd\n"
"uint16 STAUS_SPEAK_TAKE_OUT_MEALS_2 = 4\n"
"uint16 STAUS_WHITE_LIGHT_2 = 92\n"
"uint16 STAUS_GREEN_LIGHT_2 = 8\n"
"uint16 STAUS_BLUE_LIGHT_2 = 12\n"
"uint16 STAUS_RED_LIGHT_2 = 16\n"
"uint16 STAUS_SPEAK_TAKE_OUT_MEALS_3 = 5\n"
"uint16 STAUS_WHITE_LIGHT_3 = 93\n"
"uint16 STAUS_GREEN_LIGHT_3 = 9\n"
"uint16 STAUS_BLUE_LIGHT_3 = 13\n"
"uint16 STAUS_RED_LIGHT_3 = 17\n"
"uint16 STAUS_SPEAK_TAKE_OUT_MEALS_4 = 6\n"
"uint16 STAUS_WHITE_LIGHT_4 = 94\n"
"uint16 STAUS_GREEN_LIGHT_4 = 10\n"
"uint16 STAUS_BLUE_LIGHT_4 = 14\n"
"uint16 STAUS_RED_LIGHT_4 = 18\n"
"uint16 STAUS_SPEAK_PRESS_BUTTON_AFTER_TAKE_OUT = 63\n"
"uint16 STAUS_SPEAK_ENJOY_MEAL = 64\n"
"uint16 STAUS_SPEAK_HELLO = 65\n"
"uint16 STAUS_SPEAK_THANKS = 66\n"
"uint16 STAUS_SPEAK_GOODBYE = 67\n"
"uint16 STAUS_SPEAK_EXCUSE_ME = 68\n"
"uint16 STAUS_SPEAK_COMMING_THROUGH = 69\n"
"uint16 STAUS_SPEAK_BE_CAREFUL = 70\n"
"uint16 STAUS_SPEAK_WATCH_OUT = 19\n"
"uint16 STAUS_SPEAK_HELP_ME = 20\n"
"uint16 STAUS_SPEAK_OPEN_DOOR = 21\n"
"uint16 STAUS_SPEAK_HAVE_GOODDAY = 22\n"
"uint16 STAUS_SPEAK_WRONG_OPERATION = 23\n"
"uint16 STAUS_SPEAK_DO_IT_AGAIN = 24\n"
"uint16 STAUS_SPEAK_CORRECT_OR_NOT = 25\n"
"uint16 STAUS_SPEAK_LOW_BATTERY = 26\n"
"uint16 STAUS_SPEAK_SYSTEM_ERROR = 27\n"
"uint16 STAUS_SPEAK_CALL_STAFF = 28\n"
"uint16 STAUS_SPEAK_LOADING = 29\n"
"uint16 STAUS_SPEAK_WAIT = 30\n"
"uint16 STAUS_ENTER_ELEVATOR = 31\n"
"uint16 STAUS_LEAVING_ELEVATOR = 32\n"
"uint16 STAUS_TURN_RIGHT = 34\n"
"uint16 STAUS_TURN_LEFT = 35\n"
"uint16 STAUS_BLOCKED = 36\n"
"uint16 STAUS_REVERSE = 37\n"
"uint16 STAUS_BREATH = 38\n"
"uint16 STAUS_FORWARD = 39\n"
"uint16 STAUS_MOVING = 40\n"
"uint16 STAUS_1F = 41\n"
"uint16 STAUS_2F = 42\n"
"uint16 STAUS_3F = 43\n"
"uint16 STAUS_4F = 44\n"
"uint16 STAUS_5F = 45\n"
"uint16 STAUS_6F = 46\n"
"uint16 STAUS_7F = 47\n"
"uint16 STAUS_8F = 48\n"
"uint16 STAUS_9F = 49\n"
"uint16 STAUS_10F = 50\n"
"uint16 STAUS_11F = 51\n"
"uint16 STAUS_12F = 52\n"
"uint16 STAUS_PRESS_BUTTON = 53\n"
"uint16 STAUS_ALL_LIGHT_OFF = 100\n"
"uint16 STAUS_ALL_LIGHT_ON = 101\n"
"uint16 STAUS_TWO_SIDE_BLUE = 80\n"
"uint16 STAUS_LEFT_SIDE_BLUE_BLINK = 81\n"
"uint16 STAUS_RIGHT_SIDE_BLUE_BLINK = 82\n"
"uint16 STAUS_TWO_SIDE_BREATH = 83\n"
"uint16 STAUS_TWO_SIDE_WATER_1 = 84\n"
"uint16 STAUS_TWO_SIDE_WATER_2 = 85\n"
"uint16 STAUS_TWO_SIDE_WATER_3 = 86\n"
"uint16 STAUS_TWO_SIDE_WATER_4 = 87\n"
"uint16 STAUS_TWO_SIDE_TALKING = 88\n"
;
  }

  static const char* value(const ::campusrover_msgs::HmiStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::campusrover_msgs::HmiStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.staus);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HmiStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::campusrover_msgs::HmiStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::campusrover_msgs::HmiStatus_<ContainerAllocator>& v)
  {
    s << indent << "staus: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.staus);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMPUSROVER_MSGS_MESSAGE_HMISTATUS_H
