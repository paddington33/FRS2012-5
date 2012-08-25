/* Auto-generated by genmsg_cpp for file /home/frs2012-5/fuerte_workspace/fmMsgs/msg/motor_status.msg */
#ifndef FMMSGS_MESSAGE_MOTOR_STATUS_H
#define FMMSGS_MESSAGE_MOTOR_STATUS_H
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

namespace fmMsgs
{
template <class ContainerAllocator>
struct motor_status_ {
  typedef motor_status_<ContainerAllocator> Type;

  motor_status_()
  : header()
  , motor_amps_in(0.0)
  , motor_amps_out(0.0)
  , motor_voltage_in(0.0)
  , motor_voltage_out(0.0)
  , motor_status()
  {
  }

  motor_status_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , motor_amps_in(0.0)
  , motor_amps_out(0.0)
  , motor_voltage_in(0.0)
  , motor_voltage_out(0.0)
  , motor_status(_alloc)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef double _motor_amps_in_type;
  double motor_amps_in;

  typedef double _motor_amps_out_type;
  double motor_amps_out;

  typedef double _motor_voltage_in_type;
  double motor_voltage_in;

  typedef double _motor_voltage_out_type;
  double motor_voltage_out;

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _motor_status_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  motor_status;


  typedef boost::shared_ptr< ::fmMsgs::motor_status_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fmMsgs::motor_status_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct motor_status
typedef  ::fmMsgs::motor_status_<std::allocator<void> > motor_status;

typedef boost::shared_ptr< ::fmMsgs::motor_status> motor_statusPtr;
typedef boost::shared_ptr< ::fmMsgs::motor_status const> motor_statusConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::fmMsgs::motor_status_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::fmMsgs::motor_status_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace fmMsgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::fmMsgs::motor_status_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::fmMsgs::motor_status_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::fmMsgs::motor_status_<ContainerAllocator> > {
  static const char* value() 
  {
    return "988b2388f0f2f13f183ec92e940b1781";
  }

  static const char* value(const  ::fmMsgs::motor_status_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x988b2388f0f2f13fULL;
  static const uint64_t static_value2 = 0x183ec92e940b1781ULL;
};

template<class ContainerAllocator>
struct DataType< ::fmMsgs::motor_status_<ContainerAllocator> > {
  static const char* value() 
  {
    return "fmMsgs/motor_status";
  }

  static const char* value(const  ::fmMsgs::motor_status_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::fmMsgs::motor_status_<ContainerAllocator> > {
  static const char* value() 
  {
    return "Header header\n\
# Amps measured at the input of the motor controller\n\
float64 motor_amps_in\n\
# Amps measured at the output of the motor controller\n\
float64 motor_amps_out\n\
# Voltage measured at the (power) input of the motor controller\n\
float64 motor_voltage_in\n\
# Voltage measured at the output of the motor controller\n\
float64 motor_voltage_out\n\
# A string dispalying the status of the motor controller\n\
string motor_status\n\
\n\
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

  static const char* value(const  ::fmMsgs::motor_status_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::fmMsgs::motor_status_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::fmMsgs::motor_status_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::fmMsgs::motor_status_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.motor_amps_in);
    stream.next(m.motor_amps_out);
    stream.next(m.motor_voltage_in);
    stream.next(m.motor_voltage_out);
    stream.next(m.motor_status);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct motor_status_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fmMsgs::motor_status_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::fmMsgs::motor_status_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "motor_amps_in: ";
    Printer<double>::stream(s, indent + "  ", v.motor_amps_in);
    s << indent << "motor_amps_out: ";
    Printer<double>::stream(s, indent + "  ", v.motor_amps_out);
    s << indent << "motor_voltage_in: ";
    Printer<double>::stream(s, indent + "  ", v.motor_voltage_in);
    s << indent << "motor_voltage_out: ";
    Printer<double>::stream(s, indent + "  ", v.motor_voltage_out);
    s << indent << "motor_status: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.motor_status);
  }
};


} // namespace message_operations
} // namespace ros

#endif // FMMSGS_MESSAGE_MOTOR_STATUS_H
