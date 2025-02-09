// Generated by gencpp from file button_recognition/recog_result.msg
// DO NOT EDIT!


#ifndef BUTTON_RECOGNITION_MESSAGE_RECOG_RESULT_H
#define BUTTON_RECOGNITION_MESSAGE_RECOG_RESULT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <button_recognition/recognition.h>

namespace button_recognition
{
template <class ContainerAllocator>
struct recog_result_
{
  typedef recog_result_<ContainerAllocator> Type;

  recog_result_()
    : data()  {
    }
  recog_result_(const ContainerAllocator& _alloc)
    : data(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::button_recognition::recognition_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::button_recognition::recognition_<ContainerAllocator> >> _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::button_recognition::recog_result_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::button_recognition::recog_result_<ContainerAllocator> const> ConstPtr;

}; // struct recog_result_

typedef ::button_recognition::recog_result_<std::allocator<void> > recog_result;

typedef boost::shared_ptr< ::button_recognition::recog_result > recog_resultPtr;
typedef boost::shared_ptr< ::button_recognition::recog_result const> recog_resultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::button_recognition::recog_result_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::button_recognition::recog_result_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::button_recognition::recog_result_<ContainerAllocator1> & lhs, const ::button_recognition::recog_result_<ContainerAllocator2> & rhs)
{
  return lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::button_recognition::recog_result_<ContainerAllocator1> & lhs, const ::button_recognition::recog_result_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace button_recognition

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::button_recognition::recog_result_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::button_recognition::recog_result_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::button_recognition::recog_result_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::button_recognition::recog_result_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::button_recognition::recog_result_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::button_recognition::recog_result_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::button_recognition::recog_result_<ContainerAllocator> >
{
  static const char* value()
  {
    return "05e683a920c1d216871d06b64fece987";
  }

  static const char* value(const ::button_recognition::recog_result_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x05e683a920c1d216ULL;
  static const uint64_t static_value2 = 0x871d06b64fece987ULL;
};

template<class ContainerAllocator>
struct DataType< ::button_recognition::recog_result_<ContainerAllocator> >
{
  static const char* value()
  {
    return "button_recognition/recog_result";
  }

  static const char* value(const ::button_recognition::recog_result_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::button_recognition::recog_result_<ContainerAllocator> >
{
  static const char* value()
  {
    return "recognition[] data\n"
"\n"
"================================================================================\n"
"MSG: button_recognition/recognition\n"
"int32 y_min\n"
"int32 x_min\n"
"int32 y_max\n"
"int32 x_max\n"
"int32 categ\n"
"float32 score\n"
"float32 activate_score\n"
"float32 belief\n"
"string text\n"
;
  }

  static const char* value(const ::button_recognition::recog_result_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::button_recognition::recog_result_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct recog_result_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::button_recognition::recog_result_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::button_recognition::recog_result_<ContainerAllocator>& v)
  {
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::button_recognition::recognition_<ContainerAllocator> >::stream(s, indent + "    ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // BUTTON_RECOGNITION_MESSAGE_RECOG_RESULT_H
