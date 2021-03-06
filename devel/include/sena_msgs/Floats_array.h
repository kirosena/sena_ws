// Generated by gencpp from file sena_msgs/Floats_array.msg
// DO NOT EDIT!


#ifndef SENA_MSGS_MESSAGE_FLOATS_ARRAY_H
#define SENA_MSGS_MESSAGE_FLOATS_ARRAY_H

#include <ros/service_traits.h>


#include <sena_msgs/Floats_arrayRequest.h>
#include <sena_msgs/Floats_arrayResponse.h>


namespace sena_msgs
{

struct Floats_array
{

typedef Floats_arrayRequest Request;
typedef Floats_arrayResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Floats_array
} // namespace sena_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::sena_msgs::Floats_array > {
  static const char* value()
  {
    return "086e0a6631d243c06d9ccfa024bfe376";
  }

  static const char* value(const ::sena_msgs::Floats_array&) { return value(); }
};

template<>
struct DataType< ::sena_msgs::Floats_array > {
  static const char* value()
  {
    return "sena_msgs/Floats_array";
  }

  static const char* value(const ::sena_msgs::Floats_array&) { return value(); }
};


// service_traits::MD5Sum< ::sena_msgs::Floats_arrayRequest> should match
// service_traits::MD5Sum< ::sena_msgs::Floats_array >
template<>
struct MD5Sum< ::sena_msgs::Floats_arrayRequest>
{
  static const char* value()
  {
    return MD5Sum< ::sena_msgs::Floats_array >::value();
  }
  static const char* value(const ::sena_msgs::Floats_arrayRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::sena_msgs::Floats_arrayRequest> should match
// service_traits::DataType< ::sena_msgs::Floats_array >
template<>
struct DataType< ::sena_msgs::Floats_arrayRequest>
{
  static const char* value()
  {
    return DataType< ::sena_msgs::Floats_array >::value();
  }
  static const char* value(const ::sena_msgs::Floats_arrayRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::sena_msgs::Floats_arrayResponse> should match
// service_traits::MD5Sum< ::sena_msgs::Floats_array >
template<>
struct MD5Sum< ::sena_msgs::Floats_arrayResponse>
{
  static const char* value()
  {
    return MD5Sum< ::sena_msgs::Floats_array >::value();
  }
  static const char* value(const ::sena_msgs::Floats_arrayResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::sena_msgs::Floats_arrayResponse> should match
// service_traits::DataType< ::sena_msgs::Floats_array >
template<>
struct DataType< ::sena_msgs::Floats_arrayResponse>
{
  static const char* value()
  {
    return DataType< ::sena_msgs::Floats_array >::value();
  }
  static const char* value(const ::sena_msgs::Floats_arrayResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SENA_MSGS_MESSAGE_FLOATS_ARRAY_H
