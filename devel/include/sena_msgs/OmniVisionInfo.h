// Generated by gencpp from file sena_msgs/OmniVisionInfo.msg
// DO NOT EDIT!


#ifndef SENA_MSGS_MESSAGE_OMNIVISIONINFO_H
#define SENA_MSGS_MESSAGE_OMNIVISIONINFO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <sena_msgs/BallInfo.h>

namespace sena_msgs
{
template <class ContainerAllocator>
struct OmniVisionInfo_
{
  typedef OmniVisionInfo_<ContainerAllocator> Type;

  OmniVisionInfo_()
    : header()
    , ballinfo()  {
    }
  OmniVisionInfo_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , ballinfo(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::sena_msgs::BallInfo_<ContainerAllocator>  _ballinfo_type;
  _ballinfo_type ballinfo;





  typedef boost::shared_ptr< ::sena_msgs::OmniVisionInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sena_msgs::OmniVisionInfo_<ContainerAllocator> const> ConstPtr;

}; // struct OmniVisionInfo_

typedef ::sena_msgs::OmniVisionInfo_<std::allocator<void> > OmniVisionInfo;

typedef boost::shared_ptr< ::sena_msgs::OmniVisionInfo > OmniVisionInfoPtr;
typedef boost::shared_ptr< ::sena_msgs::OmniVisionInfo const> OmniVisionInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sena_msgs::OmniVisionInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sena_msgs::OmniVisionInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::sena_msgs::OmniVisionInfo_<ContainerAllocator1> & lhs, const ::sena_msgs::OmniVisionInfo_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.ballinfo == rhs.ballinfo;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::sena_msgs::OmniVisionInfo_<ContainerAllocator1> & lhs, const ::sena_msgs::OmniVisionInfo_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace sena_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::sena_msgs::OmniVisionInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sena_msgs::OmniVisionInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sena_msgs::OmniVisionInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sena_msgs::OmniVisionInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sena_msgs::OmniVisionInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sena_msgs::OmniVisionInfo_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sena_msgs::OmniVisionInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ff3507e7095313c782bce34c1149ea44";
  }

  static const char* value(const ::sena_msgs::OmniVisionInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xff3507e7095313c7ULL;
  static const uint64_t static_value2 = 0x82bce34c1149ea44ULL;
};

template<class ContainerAllocator>
struct DataType< ::sena_msgs::OmniVisionInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sena_msgs/OmniVisionInfo";
  }

  static const char* value(const ::sena_msgs::OmniVisionInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sena_msgs::OmniVisionInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"BallInfo ballinfo\n"
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
"MSG: sena_msgs/BallInfo\n"
"Header header\n"
"int32  ballinfostate\n"
"bool   pos_known\n"
"bool   velocity_known\n"
"PPoint real_pos\n"
"\n"
"================================================================================\n"
"MSG: sena_msgs/PPoint\n"
"float32 angle\n"
"float32 radius\n"
;
  }

  static const char* value(const ::sena_msgs::OmniVisionInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sena_msgs::OmniVisionInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.ballinfo);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OmniVisionInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sena_msgs::OmniVisionInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sena_msgs::OmniVisionInfo_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "ballinfo: ";
    s << std::endl;
    Printer< ::sena_msgs::BallInfo_<ContainerAllocator> >::stream(s, indent + "  ", v.ballinfo);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SENA_MSGS_MESSAGE_OMNIVISIONINFO_H
