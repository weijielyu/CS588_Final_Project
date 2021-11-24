// Generated by gencpp from file jsk_recognition_msgs/SparseOccupancyGridArray.msg
// DO NOT EDIT!


#ifndef JSK_RECOGNITION_MSGS_MESSAGE_SPARSEOCCUPANCYGRIDARRAY_H
#define JSK_RECOGNITION_MSGS_MESSAGE_SPARSEOCCUPANCYGRIDARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <jsk_recognition_msgs/SparseOccupancyGrid.h>

namespace jsk_recognition_msgs
{
template <class ContainerAllocator>
struct SparseOccupancyGridArray_
{
  typedef SparseOccupancyGridArray_<ContainerAllocator> Type;

  SparseOccupancyGridArray_()
    : header()
    , grids()  {
    }
  SparseOccupancyGridArray_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , grids(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::jsk_recognition_msgs::SparseOccupancyGrid_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::jsk_recognition_msgs::SparseOccupancyGrid_<ContainerAllocator> >::other >  _grids_type;
  _grids_type grids;





  typedef boost::shared_ptr< ::jsk_recognition_msgs::SparseOccupancyGridArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::jsk_recognition_msgs::SparseOccupancyGridArray_<ContainerAllocator> const> ConstPtr;

}; // struct SparseOccupancyGridArray_

typedef ::jsk_recognition_msgs::SparseOccupancyGridArray_<std::allocator<void> > SparseOccupancyGridArray;

typedef boost::shared_ptr< ::jsk_recognition_msgs::SparseOccupancyGridArray > SparseOccupancyGridArrayPtr;
typedef boost::shared_ptr< ::jsk_recognition_msgs::SparseOccupancyGridArray const> SparseOccupancyGridArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::jsk_recognition_msgs::SparseOccupancyGridArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::jsk_recognition_msgs::SparseOccupancyGridArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::jsk_recognition_msgs::SparseOccupancyGridArray_<ContainerAllocator1> & lhs, const ::jsk_recognition_msgs::SparseOccupancyGridArray_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.grids == rhs.grids;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::jsk_recognition_msgs::SparseOccupancyGridArray_<ContainerAllocator1> & lhs, const ::jsk_recognition_msgs::SparseOccupancyGridArray_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace jsk_recognition_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::jsk_recognition_msgs::SparseOccupancyGridArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jsk_recognition_msgs::SparseOccupancyGridArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jsk_recognition_msgs::SparseOccupancyGridArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jsk_recognition_msgs::SparseOccupancyGridArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jsk_recognition_msgs::SparseOccupancyGridArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jsk_recognition_msgs::SparseOccupancyGridArray_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::jsk_recognition_msgs::SparseOccupancyGridArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fa9a1f59b783128c759e159dd0c46731";
  }

  static const char* value(const ::jsk_recognition_msgs::SparseOccupancyGridArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfa9a1f59b783128cULL;
  static const uint64_t static_value2 = 0x759e159dd0c46731ULL;
};

template<class ContainerAllocator>
struct DataType< ::jsk_recognition_msgs::SparseOccupancyGridArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "jsk_recognition_msgs/SparseOccupancyGridArray";
  }

  static const char* value(const ::jsk_recognition_msgs::SparseOccupancyGridArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::jsk_recognition_msgs::SparseOccupancyGridArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"SparseOccupancyGrid[] grids\n"
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
"MSG: jsk_recognition_msgs/SparseOccupancyGrid\n"
"Header header\n"
"geometry_msgs/Pose origin_pose\n"
"float32 resolution\n"
"\n"
"SparseOccupancyGridColumn[] columns\n"
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
"MSG: jsk_recognition_msgs/SparseOccupancyGridColumn\n"
"int32 column_index\n"
"SparseOccupancyGridCell[] cells\n"
"\n"
"================================================================================\n"
"MSG: jsk_recognition_msgs/SparseOccupancyGridCell\n"
"int32 row_index\n"
"float32 value\n"
;
  }

  static const char* value(const ::jsk_recognition_msgs::SparseOccupancyGridArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::jsk_recognition_msgs::SparseOccupancyGridArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.grids);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SparseOccupancyGridArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::jsk_recognition_msgs::SparseOccupancyGridArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::jsk_recognition_msgs::SparseOccupancyGridArray_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "grids[]" << std::endl;
    for (size_t i = 0; i < v.grids.size(); ++i)
    {
      s << indent << "  grids[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::jsk_recognition_msgs::SparseOccupancyGrid_<ContainerAllocator> >::stream(s, indent + "    ", v.grids[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // JSK_RECOGNITION_MSGS_MESSAGE_SPARSEOCCUPANCYGRIDARRAY_H
