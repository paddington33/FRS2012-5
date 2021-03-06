/* Auto-generated by genmsg_cpp for file /home/frs2012-5/fuerte_workspace/SerialDriver/srv/serial_service.srv */
#ifndef SERIALDRIVER_SERVICE_SERIAL_SERVICE_H
#define SERIALDRIVER_SERVICE_SERIAL_SERVICE_H
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
struct serial_serviceRequest_ {
  typedef serial_serviceRequest_<ContainerAllocator> Type;

  serial_serviceRequest_()
  : outMessage()
  , size(0)
  {
  }

  serial_serviceRequest_(const ContainerAllocator& _alloc)
  : outMessage(_alloc)
  , size(0)
  {
  }

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _outMessage_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  outMessage;

  typedef int16_t _size_type;
  int16_t size;


  typedef boost::shared_ptr< ::SerialDriver::serial_serviceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::SerialDriver::serial_serviceRequest_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct serial_serviceRequest
typedef  ::SerialDriver::serial_serviceRequest_<std::allocator<void> > serial_serviceRequest;

typedef boost::shared_ptr< ::SerialDriver::serial_serviceRequest> serial_serviceRequestPtr;
typedef boost::shared_ptr< ::SerialDriver::serial_serviceRequest const> serial_serviceRequestConstPtr;


template <class ContainerAllocator>
struct serial_serviceResponse_ {
  typedef serial_serviceResponse_<ContainerAllocator> Type;

  serial_serviceResponse_()
  : inMessage()
  {
  }

  serial_serviceResponse_(const ContainerAllocator& _alloc)
  : inMessage(_alloc)
  {
  }

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _inMessage_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  inMessage;


  typedef boost::shared_ptr< ::SerialDriver::serial_serviceResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::SerialDriver::serial_serviceResponse_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct serial_serviceResponse
typedef  ::SerialDriver::serial_serviceResponse_<std::allocator<void> > serial_serviceResponse;

typedef boost::shared_ptr< ::SerialDriver::serial_serviceResponse> serial_serviceResponsePtr;
typedef boost::shared_ptr< ::SerialDriver::serial_serviceResponse const> serial_serviceResponseConstPtr;

struct serial_service
{

typedef serial_serviceRequest Request;
typedef serial_serviceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct serial_service
} // namespace SerialDriver

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::SerialDriver::serial_serviceRequest_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::SerialDriver::serial_serviceRequest_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::SerialDriver::serial_serviceRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "3586e604538a44581a572b9afcce448b";
  }

  static const char* value(const  ::SerialDriver::serial_serviceRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x3586e604538a4458ULL;
  static const uint64_t static_value2 = 0x1a572b9afcce448bULL;
};

template<class ContainerAllocator>
struct DataType< ::SerialDriver::serial_serviceRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "SerialDriver/serial_serviceRequest";
  }

  static const char* value(const  ::SerialDriver::serial_serviceRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::SerialDriver::serial_serviceRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "string outMessage\n\
int16 size\n\
\n\
";
  }

  static const char* value(const  ::SerialDriver::serial_serviceRequest_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::SerialDriver::serial_serviceResponse_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::SerialDriver::serial_serviceResponse_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::SerialDriver::serial_serviceResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "c6503008bc545ee2284379b58b15ba7b";
  }

  static const char* value(const  ::SerialDriver::serial_serviceResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xc6503008bc545ee2ULL;
  static const uint64_t static_value2 = 0x284379b58b15ba7bULL;
};

template<class ContainerAllocator>
struct DataType< ::SerialDriver::serial_serviceResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "SerialDriver/serial_serviceResponse";
  }

  static const char* value(const  ::SerialDriver::serial_serviceResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::SerialDriver::serial_serviceResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "string inMessage\n\
\n\
\n\
";
  }

  static const char* value(const  ::SerialDriver::serial_serviceResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::SerialDriver::serial_serviceRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.outMessage);
    stream.next(m.size);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct serial_serviceRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::SerialDriver::serial_serviceResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.inMessage);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct serial_serviceResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<SerialDriver::serial_service> {
  static const char* value() 
  {
    return "4f66292071c6a4a7e5a33049641c335b";
  }

  static const char* value(const SerialDriver::serial_service&) { return value(); } 
};

template<>
struct DataType<SerialDriver::serial_service> {
  static const char* value() 
  {
    return "SerialDriver/serial_service";
  }

  static const char* value(const SerialDriver::serial_service&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<SerialDriver::serial_serviceRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "4f66292071c6a4a7e5a33049641c335b";
  }

  static const char* value(const SerialDriver::serial_serviceRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<SerialDriver::serial_serviceRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "SerialDriver/serial_service";
  }

  static const char* value(const SerialDriver::serial_serviceRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<SerialDriver::serial_serviceResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "4f66292071c6a4a7e5a33049641c335b";
  }

  static const char* value(const SerialDriver::serial_serviceResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<SerialDriver::serial_serviceResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "SerialDriver/serial_service";
  }

  static const char* value(const SerialDriver::serial_serviceResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // SERIALDRIVER_SERVICE_SERIAL_SERVICE_H

