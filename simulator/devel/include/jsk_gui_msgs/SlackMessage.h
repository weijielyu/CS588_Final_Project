// Generated by gencpp from file jsk_gui_msgs/SlackMessage.msg
// DO NOT EDIT!


#ifndef JSK_GUI_MSGS_MESSAGE_SLACKMESSAGE_H
#define JSK_GUI_MSGS_MESSAGE_SLACKMESSAGE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/Image.h>

namespace jsk_gui_msgs
{
template <class ContainerAllocator>
struct SlackMessage_
{
  typedef SlackMessage_<ContainerAllocator> Type;

  SlackMessage_()
    : channel()
    , text()
    , image()  {
    }
  SlackMessage_(const ContainerAllocator& _alloc)
    : channel(_alloc)
    , text(_alloc)
    , image(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _channel_type;
  _channel_type channel;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _text_type;
  _text_type text;

   typedef  ::sensor_msgs::Image_<ContainerAllocator>  _image_type;
  _image_type image;





  typedef boost::shared_ptr< ::jsk_gui_msgs::SlackMessage_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::jsk_gui_msgs::SlackMessage_<ContainerAllocator> const> ConstPtr;

}; // struct SlackMessage_

typedef ::jsk_gui_msgs::SlackMessage_<std::allocator<void> > SlackMessage;

typedef boost::shared_ptr< ::jsk_gui_msgs::SlackMessage > SlackMessagePtr;
typedef boost::shared_ptr< ::jsk_gui_msgs::SlackMessage const> SlackMessageConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::jsk_gui_msgs::SlackMessage_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::jsk_gui_msgs::SlackMessage_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::jsk_gui_msgs::SlackMessage_<ContainerAllocator1> & lhs, const ::jsk_gui_msgs::SlackMessage_<ContainerAllocator2> & rhs)
{
  return lhs.channel == rhs.channel &&
    lhs.text == rhs.text &&
    lhs.image == rhs.image;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::jsk_gui_msgs::SlackMessage_<ContainerAllocator1> & lhs, const ::jsk_gui_msgs::SlackMessage_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace jsk_gui_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::jsk_gui_msgs::SlackMessage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jsk_gui_msgs::SlackMessage_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jsk_gui_msgs::SlackMessage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jsk_gui_msgs::SlackMessage_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jsk_gui_msgs::SlackMessage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jsk_gui_msgs::SlackMessage_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::jsk_gui_msgs::SlackMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b68991d3b722980bd0f3eeeeee52635b";
  }

  static const char* value(const ::jsk_gui_msgs::SlackMessage_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb68991d3b722980bULL;
  static const uint64_t static_value2 = 0xd0f3eeeeee52635bULL;
};

template<class ContainerAllocator>
struct DataType< ::jsk_gui_msgs::SlackMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "jsk_gui_msgs/SlackMessage";
  }

  static const char* value(const ::jsk_gui_msgs::SlackMessage_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::jsk_gui_msgs::SlackMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string channel           # channel to post (ex. @user, #general)\n"
"string text              # text to post\n"
"sensor_msgs/Image image  # image to upload\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/Image\n"
"# This message contains an uncompressed image\n"
"# (0, 0) is at top-left corner of image\n"
"#\n"
"\n"
"Header header        # Header timestamp should be acquisition time of image\n"
"                     # Header frame_id should be optical frame of camera\n"
"                     # origin of frame should be optical center of camera\n"
"                     # +x should point to the right in the image\n"
"                     # +y should point down in the image\n"
"                     # +z should point into to plane of the image\n"
"                     # If the frame_id here and the frame_id of the CameraInfo\n"
"                     # message associated with the image conflict\n"
"                     # the behavior is undefined\n"
"\n"
"uint32 height         # image height, that is, number of rows\n"
"uint32 width          # image width, that is, number of columns\n"
"\n"
"# The legal values for encoding are in file src/image_encodings.cpp\n"
"# If you want to standardize a new string format, join\n"
"# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n"
"\n"
"string encoding       # Encoding of pixels -- channel meaning, ordering, size\n"
"                      # taken from the list of strings in include/sensor_msgs/image_encodings.h\n"
"\n"
"uint8 is_bigendian    # is this data bigendian?\n"
"uint32 step           # Full row length in bytes\n"
"uint8[] data          # actual matrix data, size is (step * rows)\n"
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
;
  }

  static const char* value(const ::jsk_gui_msgs::SlackMessage_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::jsk_gui_msgs::SlackMessage_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.channel);
      stream.next(m.text);
      stream.next(m.image);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SlackMessage_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::jsk_gui_msgs::SlackMessage_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::jsk_gui_msgs::SlackMessage_<ContainerAllocator>& v)
  {
    s << indent << "channel: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.channel);
    s << indent << "text: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.text);
    s << indent << "image: ";
    s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.image);
  }
};

} // namespace message_operations
} // namespace ros

#endif // JSK_GUI_MSGS_MESSAGE_SLACKMESSAGE_H
