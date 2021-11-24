// Generated by gencpp from file jsk_gui_msgs/AndroidSensor.msg
// DO NOT EDIT!


#ifndef JSK_GUI_MSGS_MESSAGE_ANDROIDSENSOR_H
#define JSK_GUI_MSGS_MESSAGE_ANDROIDSENSOR_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace jsk_gui_msgs
{
template <class ContainerAllocator>
struct AndroidSensor_
{
  typedef AndroidSensor_<ContainerAllocator> Type;

  AndroidSensor_()
    : accel_x(0.0)
    , accel_y(0.0)
    , accel_z(0.0)
    , orientation_x(0.0)
    , orientation_y(0.0)
    , orientation_z(0.0)  {
    }
  AndroidSensor_(const ContainerAllocator& _alloc)
    : accel_x(0.0)
    , accel_y(0.0)
    , accel_z(0.0)
    , orientation_x(0.0)
    , orientation_y(0.0)
    , orientation_z(0.0)  {
  (void)_alloc;
    }



   typedef double _accel_x_type;
  _accel_x_type accel_x;

   typedef double _accel_y_type;
  _accel_y_type accel_y;

   typedef double _accel_z_type;
  _accel_z_type accel_z;

   typedef double _orientation_x_type;
  _orientation_x_type orientation_x;

   typedef double _orientation_y_type;
  _orientation_y_type orientation_y;

   typedef double _orientation_z_type;
  _orientation_z_type orientation_z;





  typedef boost::shared_ptr< ::jsk_gui_msgs::AndroidSensor_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::jsk_gui_msgs::AndroidSensor_<ContainerAllocator> const> ConstPtr;

}; // struct AndroidSensor_

typedef ::jsk_gui_msgs::AndroidSensor_<std::allocator<void> > AndroidSensor;

typedef boost::shared_ptr< ::jsk_gui_msgs::AndroidSensor > AndroidSensorPtr;
typedef boost::shared_ptr< ::jsk_gui_msgs::AndroidSensor const> AndroidSensorConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::jsk_gui_msgs::AndroidSensor_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::jsk_gui_msgs::AndroidSensor_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::jsk_gui_msgs::AndroidSensor_<ContainerAllocator1> & lhs, const ::jsk_gui_msgs::AndroidSensor_<ContainerAllocator2> & rhs)
{
  return lhs.accel_x == rhs.accel_x &&
    lhs.accel_y == rhs.accel_y &&
    lhs.accel_z == rhs.accel_z &&
    lhs.orientation_x == rhs.orientation_x &&
    lhs.orientation_y == rhs.orientation_y &&
    lhs.orientation_z == rhs.orientation_z;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::jsk_gui_msgs::AndroidSensor_<ContainerAllocator1> & lhs, const ::jsk_gui_msgs::AndroidSensor_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace jsk_gui_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::jsk_gui_msgs::AndroidSensor_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jsk_gui_msgs::AndroidSensor_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jsk_gui_msgs::AndroidSensor_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jsk_gui_msgs::AndroidSensor_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jsk_gui_msgs::AndroidSensor_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jsk_gui_msgs::AndroidSensor_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::jsk_gui_msgs::AndroidSensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d832dbe3be7e7f061d963f2188f1a407";
  }

  static const char* value(const ::jsk_gui_msgs::AndroidSensor_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd832dbe3be7e7f06ULL;
  static const uint64_t static_value2 = 0x1d963f2188f1a407ULL;
};

template<class ContainerAllocator>
struct DataType< ::jsk_gui_msgs::AndroidSensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "jsk_gui_msgs/AndroidSensor";
  }

  static const char* value(const ::jsk_gui_msgs::AndroidSensor_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::jsk_gui_msgs::AndroidSensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# sonsor for Tablet\n"
"float64 accel_x\n"
"float64 accel_y\n"
"float64 accel_z\n"
"float64 orientation_x\n"
"float64 orientation_y\n"
"float64 orientation_z\n"
"\n"
"\n"
;
  }

  static const char* value(const ::jsk_gui_msgs::AndroidSensor_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::jsk_gui_msgs::AndroidSensor_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.accel_x);
      stream.next(m.accel_y);
      stream.next(m.accel_z);
      stream.next(m.orientation_x);
      stream.next(m.orientation_y);
      stream.next(m.orientation_z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AndroidSensor_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::jsk_gui_msgs::AndroidSensor_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::jsk_gui_msgs::AndroidSensor_<ContainerAllocator>& v)
  {
    s << indent << "accel_x: ";
    Printer<double>::stream(s, indent + "  ", v.accel_x);
    s << indent << "accel_y: ";
    Printer<double>::stream(s, indent + "  ", v.accel_y);
    s << indent << "accel_z: ";
    Printer<double>::stream(s, indent + "  ", v.accel_z);
    s << indent << "orientation_x: ";
    Printer<double>::stream(s, indent + "  ", v.orientation_x);
    s << indent << "orientation_y: ";
    Printer<double>::stream(s, indent + "  ", v.orientation_y);
    s << indent << "orientation_z: ";
    Printer<double>::stream(s, indent + "  ", v.orientation_z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // JSK_GUI_MSGS_MESSAGE_ANDROIDSENSOR_H
