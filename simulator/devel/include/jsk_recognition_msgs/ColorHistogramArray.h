// Generated by gencpp from file jsk_recognition_msgs/ColorHistogramArray.msg
// DO NOT EDIT!


#ifndef JSK_RECOGNITION_MSGS_MESSAGE_COLORHISTOGRAMARRAY_H
#define JSK_RECOGNITION_MSGS_MESSAGE_COLORHISTOGRAMARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <jsk_recognition_msgs/ColorHistogram.h>

namespace jsk_recognition_msgs
{
template <class ContainerAllocator>
struct ColorHistogramArray_
{
  typedef ColorHistogramArray_<ContainerAllocator> Type;

  ColorHistogramArray_()
    : header()
    , histograms()  {
    }
  ColorHistogramArray_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , histograms(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::jsk_recognition_msgs::ColorHistogram_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::jsk_recognition_msgs::ColorHistogram_<ContainerAllocator> >::other >  _histograms_type;
  _histograms_type histograms;





  typedef boost::shared_ptr< ::jsk_recognition_msgs::ColorHistogramArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::jsk_recognition_msgs::ColorHistogramArray_<ContainerAllocator> const> ConstPtr;

}; // struct ColorHistogramArray_

typedef ::jsk_recognition_msgs::ColorHistogramArray_<std::allocator<void> > ColorHistogramArray;

typedef boost::shared_ptr< ::jsk_recognition_msgs::ColorHistogramArray > ColorHistogramArrayPtr;
typedef boost::shared_ptr< ::jsk_recognition_msgs::ColorHistogramArray const> ColorHistogramArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::jsk_recognition_msgs::ColorHistogramArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::jsk_recognition_msgs::ColorHistogramArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::jsk_recognition_msgs::ColorHistogramArray_<ContainerAllocator1> & lhs, const ::jsk_recognition_msgs::ColorHistogramArray_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.histograms == rhs.histograms;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::jsk_recognition_msgs::ColorHistogramArray_<ContainerAllocator1> & lhs, const ::jsk_recognition_msgs::ColorHistogramArray_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace jsk_recognition_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::jsk_recognition_msgs::ColorHistogramArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jsk_recognition_msgs::ColorHistogramArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jsk_recognition_msgs::ColorHistogramArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jsk_recognition_msgs::ColorHistogramArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jsk_recognition_msgs::ColorHistogramArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jsk_recognition_msgs::ColorHistogramArray_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::jsk_recognition_msgs::ColorHistogramArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3bcc7f05c5520f311047096d5530e715";
  }

  static const char* value(const ::jsk_recognition_msgs::ColorHistogramArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3bcc7f05c5520f31ULL;
  static const uint64_t static_value2 = 0x1047096d5530e715ULL;
};

template<class ContainerAllocator>
struct DataType< ::jsk_recognition_msgs::ColorHistogramArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "jsk_recognition_msgs/ColorHistogramArray";
  }

  static const char* value(const ::jsk_recognition_msgs::ColorHistogramArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::jsk_recognition_msgs::ColorHistogramArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"ColorHistogram[] histograms\n"
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
"MSG: jsk_recognition_msgs/ColorHistogram\n"
"Header header\n"
"float32[] histogram\n"
;
  }

  static const char* value(const ::jsk_recognition_msgs::ColorHistogramArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::jsk_recognition_msgs::ColorHistogramArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.histograms);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ColorHistogramArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::jsk_recognition_msgs::ColorHistogramArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::jsk_recognition_msgs::ColorHistogramArray_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "histograms[]" << std::endl;
    for (size_t i = 0; i < v.histograms.size(); ++i)
    {
      s << indent << "  histograms[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::jsk_recognition_msgs::ColorHistogram_<ContainerAllocator> >::stream(s, indent + "    ", v.histograms[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // JSK_RECOGNITION_MSGS_MESSAGE_COLORHISTOGRAMARRAY_H
