/* Auto-generated by genmsg_cpp for file /home/frs2012-5/fuerte_workspace/fmMsgs/msg/row.msg */
#ifndef FMMSGS_MESSAGE_ROW_H
#define FMMSGS_MESSAGE_ROW_H
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
struct row_ {
  typedef row_<ContainerAllocator> Type;

  row_()
  : header()
  , rightvalid(0)
  , rightdistance(0.0)
  , rightangle(0.0)
  , leftvalid(0)
  , leftdistance(0.0)
  , leftangle(0.0)
  , headland(false)
  , error_angle(0.0)
  , error_distance(0.0)
  , var(0.0)
  {
  }

  row_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , rightvalid(0)
  , rightdistance(0.0)
  , rightangle(0.0)
  , leftvalid(0)
  , leftdistance(0.0)
  , leftangle(0.0)
  , headland(false)
  , error_angle(0.0)
  , error_distance(0.0)
  , var(0.0)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef int8_t _rightvalid_type;
  int8_t rightvalid;

  typedef double _rightdistance_type;
  double rightdistance;

  typedef double _rightangle_type;
  double rightangle;

  typedef int8_t _leftvalid_type;
  int8_t leftvalid;

  typedef double _leftdistance_type;
  double leftdistance;

  typedef double _leftangle_type;
  double leftangle;

  typedef uint8_t _headland_type;
  uint8_t headland;

  typedef double _error_angle_type;
  double error_angle;

  typedef double _error_distance_type;
  double error_distance;

  typedef double _var_type;
  double var;


  typedef boost::shared_ptr< ::fmMsgs::row_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fmMsgs::row_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct row
typedef  ::fmMsgs::row_<std::allocator<void> > row;

typedef boost::shared_ptr< ::fmMsgs::row> rowPtr;
typedef boost::shared_ptr< ::fmMsgs::row const> rowConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::fmMsgs::row_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::fmMsgs::row_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace fmMsgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::fmMsgs::row_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::fmMsgs::row_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::fmMsgs::row_<ContainerAllocator> > {
  static const char* value() 
  {
    return "fda3824cdb529998825cbe7663dfed1f";
  }

  static const char* value(const  ::fmMsgs::row_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xfda3824cdb529998ULL;
  static const uint64_t static_value2 = 0x825cbe7663dfed1fULL;
};

template<class ContainerAllocator>
struct DataType< ::fmMsgs::row_<ContainerAllocator> > {
  static const char* value() 
  {
    return "fmMsgs/row";
  }

  static const char* value(const  ::fmMsgs::row_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::fmMsgs::row_<ContainerAllocator> > {
  static const char* value() 
  {
    return "Header header\n\
int8 rightvalid\n\
float64 rightdistance\n\
float64 rightangle		\n\
int8 leftvalid\n\
float64 leftdistance\n\
float64 leftangle		\n\
bool headland\n\
float64 error_angle\n\
float64 error_distance\n\
float64 var\n\
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

  static const char* value(const  ::fmMsgs::row_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::fmMsgs::row_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::fmMsgs::row_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::fmMsgs::row_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.rightvalid);
    stream.next(m.rightdistance);
    stream.next(m.rightangle);
    stream.next(m.leftvalid);
    stream.next(m.leftdistance);
    stream.next(m.leftangle);
    stream.next(m.headland);
    stream.next(m.error_angle);
    stream.next(m.error_distance);
    stream.next(m.var);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct row_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fmMsgs::row_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::fmMsgs::row_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "rightvalid: ";
    Printer<int8_t>::stream(s, indent + "  ", v.rightvalid);
    s << indent << "rightdistance: ";
    Printer<double>::stream(s, indent + "  ", v.rightdistance);
    s << indent << "rightangle: ";
    Printer<double>::stream(s, indent + "  ", v.rightangle);
    s << indent << "leftvalid: ";
    Printer<int8_t>::stream(s, indent + "  ", v.leftvalid);
    s << indent << "leftdistance: ";
    Printer<double>::stream(s, indent + "  ", v.leftdistance);
    s << indent << "leftangle: ";
    Printer<double>::stream(s, indent + "  ", v.leftangle);
    s << indent << "headland: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.headland);
    s << indent << "error_angle: ";
    Printer<double>::stream(s, indent + "  ", v.error_angle);
    s << indent << "error_distance: ";
    Printer<double>::stream(s, indent + "  ", v.error_distance);
    s << indent << "var: ";
    Printer<double>::stream(s, indent + "  ", v.var);
  }
};


} // namespace message_operations
} // namespace ros

#endif // FMMSGS_MESSAGE_ROW_H

