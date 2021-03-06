/* Auto-generated by genmsg_cpp for file /home/frs2012-5/fuerte_workspace/botI/msg/control_msg.msg */
#ifndef BOTI_MESSAGE_CONTROL_MSG_H
#define BOTI_MESSAGE_CONTROL_MSG_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"

#include "std_msgs/Header.h"

namespace botI
{
template <class ContainerAllocator>
struct control_msg_ {
  typedef control_msg_<ContainerAllocator> Type;

  control_msg_()
  : header()
  , servo_angle1(0.0)
  , servo_angle2(0.0)
  , time1(0.0)
  , time2(0.0)
  , omega1(0.0)
  , omega2(0.0)
  , omega3(0.0)
  , omega4(0.0)
  {
  }

  control_msg_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , servo_angle1(0.0)
  , servo_angle2(0.0)
  , time1(0.0)
  , time2(0.0)
  , omega1(0.0)
  , omega2(0.0)
  , omega3(0.0)
  , omega4(0.0)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef float _servo_angle1_type;
  float servo_angle1;

  typedef float _servo_angle2_type;
  float servo_angle2;

  typedef float _time1_type;
  float time1;

  typedef float _time2_type;
  float time2;

  typedef float _omega1_type;
  float omega1;

  typedef float _omega2_type;
  float omega2;

  typedef float _omega3_type;
  float omega3;

  typedef float _omega4_type;
  float omega4;


  typedef boost::shared_ptr< ::botI::control_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::botI::control_msg_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct control_msg
typedef  ::botI::control_msg_<std::allocator<void> > control_msg;

typedef boost::shared_ptr< ::botI::control_msg> control_msgPtr;
typedef boost::shared_ptr< ::botI::control_msg const> control_msgConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::botI::control_msg_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::botI::control_msg_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace botI

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::botI::control_msg_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::botI::control_msg_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::botI::control_msg_<ContainerAllocator> > {
  static const char* value() 
  {
    return "350a205356bb53a7be0acfcec31d01c3";
  }

  static const char* value(const  ::botI::control_msg_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x350a205356bb53a7ULL;
  static const uint64_t static_value2 = 0xbe0acfcec31d01c3ULL;
};

template<class ContainerAllocator>
struct DataType< ::botI::control_msg_<ContainerAllocator> > {
  static const char* value() 
  {
    return "botI/control_msg";
  }

  static const char* value(const  ::botI::control_msg_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::botI::control_msg_<ContainerAllocator> > {
  static const char* value() 
  {
    return "Header header\n\
float32 servo_angle1\n\
float32 servo_angle2\n\
float32 time1\n\
float32 time2\n\
float32 omega1\n\
float32 omega2\n\
float32 omega3\n\
float32 omega4\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.secs: seconds (stamp_secs) since epoch\n\
# * stamp.nsecs: nanoseconds since stamp_secs\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
";
  }

  static const char* value(const  ::botI::control_msg_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::botI::control_msg_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::botI::control_msg_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::botI::control_msg_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.servo_angle1);
    stream.next(m.servo_angle2);
    stream.next(m.time1);
    stream.next(m.time2);
    stream.next(m.omega1);
    stream.next(m.omega2);
    stream.next(m.omega3);
    stream.next(m.omega4);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct control_msg_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::botI::control_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::botI::control_msg_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "servo_angle1: ";
    Printer<float>::stream(s, indent + "  ", v.servo_angle1);
    s << indent << "servo_angle2: ";
    Printer<float>::stream(s, indent + "  ", v.servo_angle2);
    s << indent << "time1: ";
    Printer<float>::stream(s, indent + "  ", v.time1);
    s << indent << "time2: ";
    Printer<float>::stream(s, indent + "  ", v.time2);
    s << indent << "omega1: ";
    Printer<float>::stream(s, indent + "  ", v.omega1);
    s << indent << "omega2: ";
    Printer<float>::stream(s, indent + "  ", v.omega2);
    s << indent << "omega3: ";
    Printer<float>::stream(s, indent + "  ", v.omega3);
    s << indent << "omega4: ";
    Printer<float>::stream(s, indent + "  ", v.omega4);
  }
};


} // namespace message_operations
} // namespace ros

#endif // BOTI_MESSAGE_CONTROL_MSG_H

