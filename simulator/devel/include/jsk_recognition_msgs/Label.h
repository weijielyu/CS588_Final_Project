// Generated by gencpp from file jsk_recognition_msgs/Label.msg
// DO NOT EDIT!


#ifndef JSK_RECOGNITION_MSGS_MESSAGE_LABEL_H
#define JSK_RECOGNITION_MSGS_MESSAGE_LABEL_H


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
struct Label_
{
  typedef Label_<ContainerAllocator> Type;

  Label_()
    : id(0)
    , name()  {
    }
  Label_(const ContainerAllocator& _alloc)
    : id(0)
    , name(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _id_type;
  _id_type id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;





  typedef boost::shared_ptr< ::jsk_recognition_msgs::Label_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::jsk_recognition_msgs::Label_<ContainerAllocator> const> ConstPtr;

}; // struct Label_

typedef ::jsk_recognition_msgs::Label_<std::allocator<void> > Label;

typedef boost::shared_ptr< ::jsk_recognition_msgs::Label > LabelPtr;
typedef boost::shared_ptr< ::jsk_recognition_msgs::Label const> LabelConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::jsk_recognition_msgs::Label_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::jsk_recognition_msgs::Label_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::jsk_recognition_msgs::Label_<ContainerAllocator1> & lhs, const ::jsk_recognition_msgs::Label_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.name == rhs.name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::jsk_recognition_msgs::Label_<ContainerAllocator1> & lhs, const ::jsk_recognition_msgs::Label_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace jsk_recognition_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::jsk_recognition_msgs::Label_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jsk_recognition_msgs::Label_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jsk_recognition_msgs::Label_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jsk_recognition_msgs::Label_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jsk_recognition_msgs::Label_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jsk_recognition_msgs::Label_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::jsk_recognition_msgs::Label_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8fe5a440459dcada9c353c016dfb49d2";
  }

  static const char* value(const ::jsk_recognition_msgs::Label_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8fe5a440459dcadaULL;
  static const uint64_t static_value2 = 0x9c353c016dfb49d2ULL;
};

template<class ContainerAllocator>
struct DataType< ::jsk_recognition_msgs::Label_<ContainerAllocator> >
{
  static const char* value()
  {
    return "jsk_recognition_msgs/Label";
  }

  static const char* value(const ::jsk_recognition_msgs::Label_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::jsk_recognition_msgs::Label_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 id\n"
"string name\n"
;
  }

  static const char* value(const ::jsk_recognition_msgs::Label_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::jsk_recognition_msgs::Label_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Label_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::jsk_recognition_msgs::Label_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::jsk_recognition_msgs::Label_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // JSK_RECOGNITION_MSGS_MESSAGE_LABEL_H
