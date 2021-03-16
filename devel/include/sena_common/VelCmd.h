// Generated by gencpp from file sena_common/VelCmd.msg
// DO NOT EDIT!


#ifndef SENA_COMMON_MESSAGE_VELCMD_H
#define SENA_COMMON_MESSAGE_VELCMD_H


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
struct VelCmd_
{
  typedef VelCmd_<ContainerAllocator> Type;

  VelCmd_()
    : Vx(0.0)
    , Vy(0.0)
    , w(0.0)  {
    }
  VelCmd_(const ContainerAllocator& _alloc)
    : Vx(0.0)
    , Vy(0.0)
    , w(0.0)  {
  (void)_alloc;
    }



   typedef float _Vx_type;
  _Vx_type Vx;

   typedef float _Vy_type;
  _Vy_type Vy;

   typedef float _w_type;
  _w_type w;





  typedef boost::shared_ptr< ::sena_common::VelCmd_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sena_common::VelCmd_<ContainerAllocator> const> ConstPtr;

}; // struct VelCmd_

typedef ::sena_common::VelCmd_<std::allocator<void> > VelCmd;

typedef boost::shared_ptr< ::sena_common::VelCmd > VelCmdPtr;
typedef boost::shared_ptr< ::sena_common::VelCmd const> VelCmdConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sena_common::VelCmd_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sena_common::VelCmd_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::sena_common::VelCmd_<ContainerAllocator1> & lhs, const ::sena_common::VelCmd_<ContainerAllocator2> & rhs)
{
  return lhs.Vx == rhs.Vx &&
    lhs.Vy == rhs.Vy &&
    lhs.w == rhs.w;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::sena_common::VelCmd_<ContainerAllocator1> & lhs, const ::sena_common::VelCmd_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace sena_common

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::sena_common::VelCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sena_common::VelCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sena_common::VelCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sena_common::VelCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sena_common::VelCmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sena_common::VelCmd_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sena_common::VelCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "914217797e9c6227112d1ec2a4b462eb";
  }

  static const char* value(const ::sena_common::VelCmd_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x914217797e9c6227ULL;
  static const uint64_t static_value2 = 0x112d1ec2a4b462ebULL;
};

template<class ContainerAllocator>
struct DataType< ::sena_common::VelCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sena_common/VelCmd";
  }

  static const char* value(const ::sena_common::VelCmd_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sena_common::VelCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 Vx\n"
"float32 Vy\n"
"float32 w\n"
"\n"
;
  }

  static const char* value(const ::sena_common::VelCmd_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sena_common::VelCmd_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Vx);
      stream.next(m.Vy);
      stream.next(m.w);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VelCmd_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sena_common::VelCmd_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sena_common::VelCmd_<ContainerAllocator>& v)
  {
    s << indent << "Vx: ";
    Printer<float>::stream(s, indent + "  ", v.Vx);
    s << indent << "Vy: ";
    Printer<float>::stream(s, indent + "  ", v.Vy);
    s << indent << "w: ";
    Printer<float>::stream(s, indent + "  ", v.w);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SENA_COMMON_MESSAGE_VELCMD_H