// Generated by gencpp from file jsk_recognition_msgs/CallSnapIt.msg
// DO NOT EDIT!


#ifndef JSK_RECOGNITION_MSGS_MESSAGE_CALLSNAPIT_H
#define JSK_RECOGNITION_MSGS_MESSAGE_CALLSNAPIT_H

#include <ros/service_traits.h>


#include <jsk_recognition_msgs/CallSnapItRequest.h>
#include <jsk_recognition_msgs/CallSnapItResponse.h>


namespace jsk_recognition_msgs
{

struct CallSnapIt
{

typedef CallSnapItRequest Request;
typedef CallSnapItResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct CallSnapIt
} // namespace jsk_recognition_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::jsk_recognition_msgs::CallSnapIt > {
  static const char* value()
  {
    return "00529f1ccb0137f3a14b6d5b281f9a3c";
  }

  static const char* value(const ::jsk_recognition_msgs::CallSnapIt&) { return value(); }
};

template<>
struct DataType< ::jsk_recognition_msgs::CallSnapIt > {
  static const char* value()
  {
    return "jsk_recognition_msgs/CallSnapIt";
  }

  static const char* value(const ::jsk_recognition_msgs::CallSnapIt&) { return value(); }
};


// service_traits::MD5Sum< ::jsk_recognition_msgs::CallSnapItRequest> should match
// service_traits::MD5Sum< ::jsk_recognition_msgs::CallSnapIt >
template<>
struct MD5Sum< ::jsk_recognition_msgs::CallSnapItRequest>
{
  static const char* value()
  {
    return MD5Sum< ::jsk_recognition_msgs::CallSnapIt >::value();
  }
  static const char* value(const ::jsk_recognition_msgs::CallSnapItRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::jsk_recognition_msgs::CallSnapItRequest> should match
// service_traits::DataType< ::jsk_recognition_msgs::CallSnapIt >
template<>
struct DataType< ::jsk_recognition_msgs::CallSnapItRequest>
{
  static const char* value()
  {
    return DataType< ::jsk_recognition_msgs::CallSnapIt >::value();
  }
  static const char* value(const ::jsk_recognition_msgs::CallSnapItRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::jsk_recognition_msgs::CallSnapItResponse> should match
// service_traits::MD5Sum< ::jsk_recognition_msgs::CallSnapIt >
template<>
struct MD5Sum< ::jsk_recognition_msgs::CallSnapItResponse>
{
  static const char* value()
  {
    return MD5Sum< ::jsk_recognition_msgs::CallSnapIt >::value();
  }
  static const char* value(const ::jsk_recognition_msgs::CallSnapItResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::jsk_recognition_msgs::CallSnapItResponse> should match
// service_traits::DataType< ::jsk_recognition_msgs::CallSnapIt >
template<>
struct DataType< ::jsk_recognition_msgs::CallSnapItResponse>
{
  static const char* value()
  {
    return DataType< ::jsk_recognition_msgs::CallSnapIt >::value();
  }
  static const char* value(const ::jsk_recognition_msgs::CallSnapItResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // JSK_RECOGNITION_MSGS_MESSAGE_CALLSNAPIT_H
