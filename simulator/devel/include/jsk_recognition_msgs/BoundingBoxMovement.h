// Generated by gencpp from file jsk_recognition_msgs/BoundingBoxMovement.msg
// DO NOT EDIT!


#ifndef JSK_RECOGNITION_MSGS_MESSAGE_BOUNDINGBOXMOVEMENT_H
#define JSK_RECOGNITION_MSGS_MESSAGE_BOUNDINGBOXMOVEMENT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <jsk_recognition_msgs/BoundingBox.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/PoseStamped.h>

namespace jsk_recognition_msgs
{
template <class ContainerAllocator>
struct BoundingBoxMovement_
{
  typedef BoundingBoxMovement_<ContainerAllocator> Type;

  BoundingBoxMovement_()
    : header()
    , box()
    , handle_pose()
    , destination()  {
    }
  BoundingBoxMovement_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , box(_alloc)
    , handle_pose(_alloc)
    , destination(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::jsk_recognition_msgs::BoundingBox_<ContainerAllocator>  _box_type;
  _box_type box;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _handle_pose_type;
  _handle_pose_type handle_pose;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _destination_type;
  _destination_type destination;





  typedef boost::shared_ptr< ::jsk_recognition_msgs::BoundingBoxMovement_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::jsk_recognition_msgs::BoundingBoxMovement_<ContainerAllocator> const> ConstPtr;

}; // struct BoundingBoxMovement_

typedef ::jsk_recognition_msgs::BoundingBoxMovement_<std::allocator<void> > BoundingBoxMovement;

typedef boost::shared_ptr< ::jsk_recognition_msgs::BoundingBoxMovement > BoundingBoxMovementPtr;
typedef boost::shared_ptr< ::jsk_recognition_msgs::BoundingBoxMovement const> BoundingBoxMovementConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::jsk_recognition_msgs::BoundingBoxMovement_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::jsk_recognition_msgs::BoundingBoxMovement_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::jsk_recognition_msgs::BoundingBoxMovement_<ContainerAllocator1> & lhs, const ::jsk_recognition_msgs::BoundingBoxMovement_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.box == rhs.box &&
    lhs.handle_pose == rhs.handle_pose &&
    lhs.destination == rhs.destination;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::jsk_recognition_msgs::BoundingBoxMovement_<ContainerAllocator1> & lhs, const ::jsk_recognition_msgs::BoundingBoxMovement_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace jsk_recognition_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::jsk_recognition_msgs::BoundingBoxMovement_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jsk_recognition_msgs::BoundingBoxMovement_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jsk_recognition_msgs::BoundingBoxMovement_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jsk_recognition_msgs::BoundingBoxMovement_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jsk_recognition_msgs::BoundingBoxMovement_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jsk_recognition_msgs::BoundingBoxMovement_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::jsk_recognition_msgs::BoundingBoxMovement_<ContainerAllocator> >
{
  static const char* value()
  {
    return "60aeb288c030d1b8a67ddeedc91812f0";
  }

  static const char* value(const ::jsk_recognition_msgs::BoundingBoxMovement_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x60aeb288c030d1b8ULL;
  static const uint64_t static_value2 = 0xa67ddeedc91812f0ULL;
};

template<class ContainerAllocator>
struct DataType< ::jsk_recognition_msgs::BoundingBoxMovement_<ContainerAllocator> >
{
  static const char* value()
  {
    return "jsk_recognition_msgs/BoundingBoxMovement";
  }

  static const char* value(const ::jsk_recognition_msgs::BoundingBoxMovement_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::jsk_recognition_msgs::BoundingBoxMovement_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"BoundingBox box\n"
"geometry_msgs/Pose handle_pose\n"
"geometry_msgs/PoseStamped destination\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: jsk_recognition_msgs/BoundingBox\n"
"# BoundingBox represents a oriented bounding box.\n"
"Header header\n"
"geometry_msgs/Pose pose\n"
"geometry_msgs/Vector3 dimensions  # size of bounding box (x, y, z)\n"
"# You can use this field to hold value such as likelihood\n"
"float32 value\n"
"uint32 label\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
;
  }

  static const char* value(const ::jsk_recognition_msgs::BoundingBoxMovement_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::jsk_recognition_msgs::BoundingBoxMovement_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.box);
      stream.next(m.handle_pose);
      stream.next(m.destination);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BoundingBoxMovement_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::jsk_recognition_msgs::BoundingBoxMovement_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::jsk_recognition_msgs::BoundingBoxMovement_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "box: ";
    s << std::endl;
    Printer< ::jsk_recognition_msgs::BoundingBox_<ContainerAllocator> >::stream(s, indent + "  ", v.box);
    s << indent << "handle_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.handle_pose);
    s << indent << "destination: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.destination);
  }
};

} // namespace message_operations
} // namespace ros

#endif // JSK_RECOGNITION_MSGS_MESSAGE_BOUNDINGBOXMOVEMENT_H
