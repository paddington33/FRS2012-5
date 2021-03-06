/* Auto-generated by genmsg_cpp for file /home/frs2012-5/fuerte_workspace/SerialDriver/msg/serial_mode.msg */
#ifndef SERIALDRIVER_MESSAGE_SERIAL_MODE_H
#define SERIALDRIVER_MESSAGE_SERIAL_MODE_H
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

namespace SerialDriver
{
template <class ContainerAllocator>
struct serial_mode_ {
  typedef serial_mode_<ContainerAllocator> Type;

  serial_mode_()
  : header()
  , serialMode(0)
  {
  }

  serial_mode_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , serialMode(0)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef int8_t _serialMode_type;
  int8_t serialMode;

  enum { Service = 0 };
  enum { Observer = 1 };

  typedef boost::shared_ptr< ::SerialDriver::serial_mode_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::SerialDriver::serial_mode_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct serial_mode
typedef  ::SerialDriver::serial_mode_<std::allocator<void> > serial_mode;

typedef boost::shared_ptr< ::SerialDriver::serial_mode> serial_modePtr;
typedef boost::shared_ptr< ::SerialDriver::serial_mode const> serial_modeConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::SerialDriver::serial_mode_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::SerialDriver::serial_mode_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace SerialDriver

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::SerialDriver::serial_mode_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::SerialDriver::serial_mode_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::SerialDriver::serial_mode_<ContainerAllocator> > {
  static const char* value() 
  {
    return "a0820d4fc90fa2037e65f31c87a331ce";
  }

  static const char* value(const  ::SerialDriver::serial_mode_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xa0820d4fc90fa203ULL;
  static const uint64_t static_value2 = 0x7e65f31c87a331ceULL;
};

template<class ContainerAllocator>
struct DataType< ::SerialDriver::serial_mode_<ContainerAllocator> > {
  static const char* value() 
  {
    return "SerialDriver/serial_mode";
  }

  static const char* value(const  ::SerialDriver::serial_mode_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::SerialDriver::serial_mode_<ContainerAllocator> > {
  static const char* value() 
  {
    return "Header header\n\
int8 Service=0\n\
int8 Observer=1\n\
int8 serialMode\n\
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

  static const char* value(const  ::SerialDriver::serial_mode_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::SerialDriver::serial_mode_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::SerialDriver::serial_mode_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::SerialDriver::serial_mode_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.serialMode);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct serial_mode_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::SerialDriver::serial_mode_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::SerialDriver::serial_mode_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "serialMode: ";
    Printer<int8_t>::stream(s, indent + "  ", v.serialMode);
  }
};


} // namespace message_operations
} // namespace ros

#endif // SERIALDRIVER_MESSAGE_SERIAL_MODE_H

