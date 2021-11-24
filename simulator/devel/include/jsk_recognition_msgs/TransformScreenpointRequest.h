// Generated by gencpp from file jsk_recognition_msgs/TransformScreenpointRequest.msg
// DO NOT EDIT!


#ifndef JSK_RECOGNITION_MSGS_MESSAGE_TRANSFORMSCREENPOINTREQUEST_H
#define JSK_RECOGNITION_MSGS_MESSAGE_TRANSFORMSCREENPOINTREQUEST_H


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
struct TransformScreenpointRequest_
{
  typedef TransformScreenpointRequest_<ContainerAllocator> Type;

  TransformScreenpointRequest_()
    : x(0.0)
    , y(0.0)
    , no_update(false)  {
    }
  TransformScreenpointRequest_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , no_update(false)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef uint8_t _no_update_type;
  _no_update_type no_update;





  typedef boost::shared_ptr< ::jsk_recognition_msgs::TransformScreenpointRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::jsk_recognition_msgs::TransformScreenpointRequest_<ContainerAllocator> const> ConstPtr;

}; // struct TransformScreenpointRequest_

typedef ::jsk_recognition_msgs::TransformScreenpointRequest_<std::allocator<void> > TransformScreenpointRequest;

typedef boost::shared_ptr< ::jsk_recognition_msgs::TransformScreenpointRequest > TransformScreenpointRequestPtr;
typedef boost::shared_ptr< ::jsk_recognition_msgs::TransformScreenpointRequest const> TransformScreenpointRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::jsk_recognition_msgs::TransformScreenpointRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::jsk_recognition_msgs::TransformScreenpointRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::jsk_recognition_msgs::TransformScreenpointRequest_<ContainerAllocator1> & lhs, const ::jsk_recognition_msgs::TransformScreenpointRequest_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.no_update == rhs.no_update;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::jsk_recognition_msgs::TransformScreenpointRequest_<ContainerAllocator1> & lhs, const ::jsk_recognition_msgs::TransformScreenpointRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace jsk_recognition_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::jsk_recognition_msgs::TransformScreenpointRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jsk_recognition_msgs::TransformScreenpointRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jsk_recognition_msgs::TransformScreenpointRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jsk_recognition_msgs::TransformScreenpointRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jsk_recognition_msgs::TransformScreenpointRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jsk_recognition_msgs::TransformScreenpointRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::jsk_recognition_msgs::TransformScreenpointRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3796b576f471dba594bd202be056132c";
  }

  static const char* value(const ::jsk_recognition_msgs::TransformScreenpointRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3796b576f471dba5ULL;
  static const uint64_t static_value2 = 0x94bd202be056132cULL;
};

template<class ContainerAllocator>
struct DataType< ::jsk_recognition_msgs::TransformScreenpointRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "jsk_recognition_msgs/TransformScreenpointRequest";
  }

  static const char* value(const ::jsk_recognition_msgs::TransformScreenpointRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::jsk_recognition_msgs::TransformScreenpointRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# screen point\n"
"float32 x\n"
"float32 y\n"
"bool no_update\n"
;
  }

  static const char* value(const ::jsk_recognition_msgs::TransformScreenpointRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::jsk_recognition_msgs::TransformScreenpointRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.no_update);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TransformScreenpointRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::jsk_recognition_msgs::TransformScreenpointRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::jsk_recognition_msgs::TransformScreenpointRequest_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "no_update: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.no_update);
  }
};

} // namespace message_operations
} // namespace ros

#endif // JSK_RECOGNITION_MSGS_MESSAGE_TRANSFORMSCREENPOINTREQUEST_H
