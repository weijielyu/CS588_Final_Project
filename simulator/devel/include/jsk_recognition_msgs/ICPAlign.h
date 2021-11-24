// Generated by gencpp from file jsk_recognition_msgs/ICPAlign.msg
// DO NOT EDIT!


#ifndef JSK_RECOGNITION_MSGS_MESSAGE_ICPALIGN_H
#define JSK_RECOGNITION_MSGS_MESSAGE_ICPALIGN_H

#include <ros/service_traits.h>


#include <jsk_recognition_msgs/ICPAlignRequest.h>
#include <jsk_recognition_msgs/ICPAlignResponse.h>


namespace jsk_recognition_msgs
{

struct ICPAlign
{

typedef ICPAlignRequest Request;
typedef ICPAlignResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ICPAlign
} // namespace jsk_recognition_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::jsk_recognition_msgs::ICPAlign > {
  static const char* value()
  {
    return "356a3a6001b7560173247ee06893ddba";
  }

  static const char* value(const ::jsk_recognition_msgs::ICPAlign&) { return value(); }
};

template<>
struct DataType< ::jsk_recognition_msgs::ICPAlign > {
  static const char* value()
  {
    return "jsk_recognition_msgs/ICPAlign";
  }

  static const char* value(const ::jsk_recognition_msgs::ICPAlign&) { return value(); }
};


// service_traits::MD5Sum< ::jsk_recognition_msgs::ICPAlignRequest> should match
// service_traits::MD5Sum< ::jsk_recognition_msgs::ICPAlign >
template<>
struct MD5Sum< ::jsk_recognition_msgs::ICPAlignRequest>
{
  static const char* value()
  {
    return MD5Sum< ::jsk_recognition_msgs::ICPAlign >::value();
  }
  static const char* value(const ::jsk_recognition_msgs::ICPAlignRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::jsk_recognition_msgs::ICPAlignRequest> should match
// service_traits::DataType< ::jsk_recognition_msgs::ICPAlign >
template<>
struct DataType< ::jsk_recognition_msgs::ICPAlignRequest>
{
  static const char* value()
  {
    return DataType< ::jsk_recognition_msgs::ICPAlign >::value();
  }
  static const char* value(const ::jsk_recognition_msgs::ICPAlignRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::jsk_recognition_msgs::ICPAlignResponse> should match
// service_traits::MD5Sum< ::jsk_recognition_msgs::ICPAlign >
template<>
struct MD5Sum< ::jsk_recognition_msgs::ICPAlignResponse>
{
  static const char* value()
  {
    return MD5Sum< ::jsk_recognition_msgs::ICPAlign >::value();
  }
  static const char* value(const ::jsk_recognition_msgs::ICPAlignResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::jsk_recognition_msgs::ICPAlignResponse> should match
// service_traits::DataType< ::jsk_recognition_msgs::ICPAlign >
template<>
struct DataType< ::jsk_recognition_msgs::ICPAlignResponse>
{
  static const char* value()
  {
    return DataType< ::jsk_recognition_msgs::ICPAlign >::value();
  }
  static const char* value(const ::jsk_recognition_msgs::ICPAlignResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // JSK_RECOGNITION_MSGS_MESSAGE_ICPALIGN_H
