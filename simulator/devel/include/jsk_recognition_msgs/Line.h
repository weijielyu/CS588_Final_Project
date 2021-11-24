// Generated by gencpp from file jsk_recognition_msgs/Line.msg
// DO NOT EDIT!


#ifndef JSK_RECOGNITION_MSGS_MESSAGE_LINE_H
#define JSK_RECOGNITION_MSGS_MESSAGE_LINE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace jsk_recognition_msgs
{
template <class ContainerAllocator>
struct Line_
{
  typedef Line_<ContainerAllocator> Type;

  Line_()
    : x1(0.0)
    , y1(0.0)
    , x2(0.0)
    , y2(0.0)  {
    }
  Line_(const ContainerAllocator& _alloc)
    : x1(0.0)
    , y1(0.0)
    , x2(0.0)
    , y2(0.0)  {
  (void)_alloc;
    }



   typedef double _x1_type;
  _x1_type x1;

   typedef double _y1_type;
  _y1_type y1;

   typedef double _x2_type;
  _x2_type x2;

   typedef double _y2_type;
  _y2_type y2;





  typedef boost::shared_ptr< ::jsk_recognition_msgs::Line_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::jsk_recognition_msgs::Line_<ContainerAllocator> const> ConstPtr;

}; // struct Line_

typedef ::jsk_recognition_msgs::Line_<std::allocator<void> > Line;

typedef boost::shared_ptr< ::jsk_recognition_msgs::Line > LinePtr;
typedef boost::shared_ptr< ::jsk_recognition_msgs::Line const> LineConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::jsk_recognition_msgs::Line_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::jsk_recognition_msgs::Line_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::jsk_recognition_msgs::Line_<ContainerAllocator1> & lhs, const ::jsk_recognition_msgs::Line_<ContainerAllocator2> & rhs)
{
  return lhs.x1 == rhs.x1 &&
    lhs.y1 == rhs.y1 &&
    lhs.x2 == rhs.x2 &&
    lhs.y2 == rhs.y2;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::jsk_recognition_msgs::Line_<ContainerAllocator1> & lhs, const ::jsk_recognition_msgs::Line_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace jsk_recognition_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::jsk_recognition_msgs::Line_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jsk_recognition_msgs::Line_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jsk_recognition_msgs::Line_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jsk_recognition_msgs::Line_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jsk_recognition_msgs::Line_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jsk_recognition_msgs::Line_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::jsk_recognition_msgs::Line_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3010fad09b09b8d3fdecdd94d144f7a1";
  }

  static const char* value(const ::jsk_recognition_msgs::Line_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3010fad09b09b8d3ULL;
  static const uint64_t static_value2 = 0xfdecdd94d144f7a1ULL;
};

template<class ContainerAllocator>
struct DataType< ::jsk_recognition_msgs::Line_<ContainerAllocator> >
{
  static const char* value()
  {
    return "jsk_recognition_msgs/Line";
  }

  static const char* value(const ::jsk_recognition_msgs::Line_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::jsk_recognition_msgs::Line_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x1\n"
"float64 y1\n"
"float64 x2\n"
"float64 y2\n"
"\n"
"\n"
;
  }

  static const char* value(const ::jsk_recognition_msgs::Line_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::jsk_recognition_msgs::Line_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x1);
      stream.next(m.y1);
      stream.next(m.x2);
      stream.next(m.y2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Line_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::jsk_recognition_msgs::Line_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::jsk_recognition_msgs::Line_<ContainerAllocator>& v)
  {
    s << indent << "x1: ";
    Printer<double>::stream(s, indent + "  ", v.x1);
    s << indent << "y1: ";
    Printer<double>::stream(s, indent + "  ", v.y1);
    s << indent << "x2: ";
    Printer<double>::stream(s, indent + "  ", v.x2);
    s << indent << "y2: ";
    Printer<double>::stream(s, indent + "  ", v.y2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // JSK_RECOGNITION_MSGS_MESSAGE_LINE_H
