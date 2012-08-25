/* Auto-generated by genmsg_cpp for file /home/frs2012-5/fuerte_workspace/SerialDriver/srv/serial.srv */
#ifndef SERIALDRIVER_SERVICE_SERIAL_H
#define SERIALDRIVER_SERVICE_SERIAL_H
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

#include "ros/service_traits.h"




namespace SerialDriver
{
template <class ContainerAllocator>
struct serialRequest_ {
  typedef serialRequest_<ContainerAllocator> Type;

  serialRequest_()
  : outMessage()
  , size(0)
  {
  }

  serialRequest_(const ContainerAllocator& _alloc)
  : outMessage(_alloc)
  , size(0)
  {
  }

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _outMessage_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  outMessage;

  typedef int16_t _size_type;
  int16_t size;


  typedef boost::shared_ptr< ::SerialDriver::serialRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::SerialDriver::serialRequest_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct serialRequest
typedef  ::SerialDriver::serialRequest_<std::allocator<void> > serialRequest;

typedef boost::shared_ptr< ::SerialDriver::serialRequest> serialRequestPtr;
typedef boost::shared_ptr< ::SerialDriver::serialRequest const> serialRequestConstPtr;


template <class ContainerAllocator>
struct serialResponse_ {
  typedef serialResponse_<ContainerAllocator> Type;

  serialResponse_()
  : inMessage()
  {
  }

  serialResponse_(const ContainerAllocator& _alloc)
  : inMessage(_alloc)
  {
  }

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _inMessage_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  inMessage;


  typedef boost::shared_ptr< ::SerialDriver::serialResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::SerialDriver::serialResponse_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct serialResponse
typedef  ::SerialDriver::serialResponse_<std::allocator<void> > serialResponse;

typedef boost::shared_ptr< ::SerialDriver::serialResponse> serialResponsePtr;
typedef boost::shared_ptr< ::SerialDriver::serialResponse const> serialResponseConstPtr;

struct serial
{

typedef serialRequest Request;
typedef serialResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct serial
} // namespace SerialDriver

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::SerialDriver::serialRequest_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::SerialDriver::serialRequest_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::SerialDriver::serialRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "3586e604538a44581a572b9afcce448b";
  }

  static const char* value(const  ::SerialDriver::serialRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x3586e604538a4458ULL;
  static const uint64_t static_value2 = 0x1a572b9afcce448bULL;
};

template<class ContainerAllocator>
struct DataType< ::SerialDriver::serialRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "SerialDriver/serialRequest";
  }

  static const char* value(const  ::SerialDriver::serialRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::SerialDriver::serialRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "string outMessage\n\
int16 size\n\
\n\
";
  }

  static const char* value(const  ::SerialDriver::serialRequest_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::SerialDriver::serialResponse_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::SerialDriver::serialResponse_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::SerialDriver::serialResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "c6503008bc545ee2284379b58b15ba7b";
  }

  static const char* value(const  ::SerialDriver::serialResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xc6503008bc545ee2ULL;
  static const uint64_t static_value2 = 0x284379b58b15ba7bULL;
};

template<class ContainerAllocator>
struct DataType< ::SerialDriver::serialResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "SerialDriver/serialResponse";
  }

  static const char* value(const  ::SerialDriver::serialResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::SerialDriver::serialResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "string inMessage\n\
\n\
\n\
";
  }

  static const char* value(const  ::SerialDriver::serialResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::SerialDriver::serialRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.outMessage);
    stream.next(m.size);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct serialRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::SerialDriver::serialResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.inMessage);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct serialResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<SerialDriver::serial> {
  static const char* value() 
  {
    return "4f66292071c6a4a7e5a33049641c335b";
  }

  static const char* value(const SerialDriver::serial&) { return value(); } 
};

template<>
struct DataType<SerialDriver::serial> {
  static const char* value() 
  {
    return "SerialDriver/serial";
  }

  static const char* value(const SerialDriver::serial&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<SerialDriver::serialRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "4f66292071c6a4a7e5a33049641c335b";
  }

  static const char* value(const SerialDriver::serialRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<SerialDriver::serialRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "SerialDriver/serial";
  }

  static const char* value(const SerialDriver::serialRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<SerialDriver::serialResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "4f66292071c6a4a7e5a33049641c335b";
  }

  static const char* value(const SerialDriver::serialResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<SerialDriver::serialResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "SerialDriver/serial";
  }

  static const char* value(const SerialDriver::serialResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // SERIALDRIVER_SERVICE_SERIAL_H
