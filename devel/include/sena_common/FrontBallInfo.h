// Generated by gencpp from file sena_common/FrontBallInfo.msg
// DO NOT EDIT!


#ifndef SENA_COMMON_MESSAGE_FRONTBALLINFO_H
#define SENA_COMMON_MESSAGE_FRONTBALLINFO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace sena_common
{
template <class ContainerAllocator>
struct FrontBallInfo_
{
  typedef FrontBallInfo_<ContainerAllocator> Type;

  FrontBallInfo_()
    {
    }
  FrontBallInfo_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::sena_common::FrontBallInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sena_common::FrontBallInfo_<ContainerAllocator> const> ConstPtr;

}; // struct FrontBallInfo_

typedef ::sena_common::FrontBallInfo_<std::allocator<void> > FrontBallInfo;

typedef boost::shared_ptr< ::sena_common::FrontBallInfo > FrontBallInfoPtr;
typedef boost::shared_ptr< ::sena_common::FrontBallInfo const> FrontBallInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sena_common::FrontBallInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sena_common::FrontBallInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace sena_common

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::sena_common::FrontBallInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sena_common::FrontBallInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sena_common::FrontBallInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sena_common::FrontBallInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sena_common::FrontBallInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sena_common::FrontBallInfo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sena_common::FrontBallInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::sena_common::FrontBallInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::sena_common::FrontBallInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sena_common/FrontBallInfo";
  }

  static const char* value(const ::sena_common::FrontBallInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sena_common::FrontBallInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::sena_common::FrontBallInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sena_common::FrontBallInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FrontBallInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sena_common::FrontBallInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::sena_common::FrontBallInfo_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // SENA_COMMON_MESSAGE_FRONTBALLINFO_H
