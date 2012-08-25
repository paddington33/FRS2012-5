/* Auto-generated by genmsg_cpp for file /home/frs2012-5/fuerte_workspace/fmMsgs/msg/accelerometer.msg */
#ifndef FMMSGS_MESSAGE_ACCELEROMETER_H
#define FMMSGS_MESSAGE_ACCELEROMETER_H
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
struct accelerometer_ {
  typedef accelerometer_<ContainerAllocator> Type;

  accelerometer_()
  : header()
  , x(0.0)
  , y(0.0)
  , z(0.0)
  {
  }

  accelerometer_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , x(0.0)
  , y(0.0)
  , z(0.0)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef double _x_type;
  double x;

  typedef double _y_type;
  double y;

  typedef double _z_type;
  double z;


  typedef boost::shared_ptr< ::fmMsgs::accelerometer_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fmMsgs::accelerometer_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct accelerometer
typedef  ::fmMsgs::accelerometer_<std::allocator<void> > accelerometer;

typedef boost::shared_ptr< ::fmMsgs::accelerometer> accelerometerPtr;
typedef boost::shared_ptr< ::fmMsgs::accelerometer const> accelerometerConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::fmMsgs::accelerometer_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::fmMsgs::accelerometer_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace fmMsgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::fmMsgs::accelerometer_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::fmMsgs::accelerometer_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::fmMsgs::accelerometer_<ContainerAllocator> > {
  static const char* value() 
  {
    return "5defbd163657b4f6f639ba6d5676cc01";
  }

  static const char* value(const  ::fmMsgs::accelerometer_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x5defbd163657b4f6ULL;
  static const uint64_t static_value2 = 0xf639ba6d5676cc01ULL;
};

template<class ContainerAllocator>
struct DataType< ::fmMsgs::accelerometer_<ContainerAllocator> > {
  static const char* value() 
  {
    return "fmMsgs/accelerometer";
  }

  static const char* value(const  ::fmMsgs::accelerometer_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::fmMsgs::accelerometer_<ContainerAllocator> > {
  static const char* value() 
  {
    return "Header header\n\
float64 x\n\
float64 y\n\
float64 z\n\
																		\n\
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

  static const char* value(const  ::fmMsgs::accelerometer_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::fmMsgs::accelerometer_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::fmMsgs::accelerometer_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::fmMsgs::accelerometer_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.x);
    stream.next(m.y);
    stream.next(m.z);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct accelerometer_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fmMsgs::accelerometer_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::fmMsgs::accelerometer_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
  }
};


} // namespace message_operations
} // namespace ros

#endif // FMMSGS_MESSAGE_ACCELEROMETER_H

