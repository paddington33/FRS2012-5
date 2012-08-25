/* Auto-generated by genmsg_cpp for file /home/frs2012-5/fuerte_workspace/SerialDriver/srv/serial_write_service.srv */
#ifndef SERIALDRIVER_SERVICE_SERIAL_WRITE_SERVICE_H
#define SERIALDRIVER_SERVICE_SERIAL_WRITE_SERVICE_H
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
struct serial_write_serviceRequest_ {
  typedef serial_write_serviceRequest_<ContainerAllocator> Type;

  serial_write_serviceRequest_()
  : outMessage()
  {
  }

  serial_write_serviceRequest_(const ContainerAllocator& _alloc)
  : outMessage(_alloc)
  {
  }

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _outMessage_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  outMessage;


  typedef boost::shared_ptr< ::SerialDriver::serial_write_serviceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::SerialDriver::serial_write_serviceRequest_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct serial_write_serviceRequest
typedef  ::SerialDriver::serial_write_serviceRequest_<std::allocator<void> > serial_write_serviceRequest;

typedef boost::shared_ptr< ::SerialDriver::serial_write_serviceRequest> serial_write_serviceRequestPtr;
typedef boost::shared_ptr< ::SerialDriver::serial_write_serviceRequest const> serial_write_serviceRequestConstPtr;


template <class ContainerAllocator>
struct serial_write_serviceResponse_ {
  typedef serial_write_serviceResponse_<ContainerAllocator> Type;

  serial_write_serviceResponse_()
  {
  }

  serial_write_serviceResponse_(const ContainerAllocator& _alloc)
  {
  }


  typedef boost::shared_ptr< ::SerialDriver::serial_write_serviceResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::SerialDriver::serial_write_serviceResponse_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct serial_write_serviceResponse
typedef  ::SerialDriver::serial_write_serviceResponse_<std::allocator<void> > serial_write_serviceResponse;

typedef boost::shared_ptr< ::SerialDriver::serial_write_serviceResponse> serial_write_serviceResponsePtr;
typedef boost::shared_ptr< ::SerialDriver::serial_write_serviceResponse const> serial_write_serviceResponseConstPtr;

struct serial_write_service
{

typedef serial_write_serviceRequest Request;
typedef serial_write_serviceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct serial_write_service
} // namespace SerialDriver

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::SerialDriver::serial_write_serviceRequest_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::SerialDriver::serial_write_serviceRequest_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::SerialDriver::serial_write_serviceRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cf923418e1a73ac4a1bdc6a6d3ef397e";
  }

  static const char* value(const  ::SerialDriver::serial_write_serviceRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xcf923418e1a73ac4ULL;
  static const uint64_t static_value2 = 0xa1bdc6a6d3ef397eULL;
};

template<class ContainerAllocator>
struct DataType< ::SerialDriver::serial_write_serviceRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "SerialDriver/serial_write_serviceRequest";
  }

  static const char* value(const  ::SerialDriver::serial_write_serviceRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::SerialDriver::serial_write_serviceRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "string outMessage\n\
\n\
\n\
";
  }

  static const char* value(const  ::SerialDriver::serial_write_serviceRequest_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::SerialDriver::serial_write_serviceResponse_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::SerialDriver::serial_write_serviceResponse_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::SerialDriver::serial_write_serviceResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const  ::SerialDriver::serial_write_serviceResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::SerialDriver::serial_write_serviceResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "SerialDriver/serial_write_serviceResponse";
  }

  static const char* value(const  ::SerialDriver::serial_write_serviceResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::SerialDriver::serial_write_serviceResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "\n\
";
  }

  static const char* value(const  ::SerialDriver::serial_write_serviceResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::SerialDriver::serial_write_serviceResponse_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::SerialDriver::serial_write_serviceRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.outMessage);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct serial_write_serviceRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::SerialDriver::serial_write_serviceResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct serial_write_serviceResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<SerialDriver::serial_write_service> {
  static const char* value() 
  {
    return "cf923418e1a73ac4a1bdc6a6d3ef397e";
  }

  static const char* value(const SerialDriver::serial_write_service&) { return value(); } 
};

template<>
struct DataType<SerialDriver::serial_write_service> {
  static const char* value() 
  {
    return "SerialDriver/serial_write_service";
  }

  static const char* value(const SerialDriver::serial_write_service&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<SerialDriver::serial_write_serviceRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cf923418e1a73ac4a1bdc6a6d3ef397e";
  }

  static const char* value(const SerialDriver::serial_write_serviceRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<SerialDriver::serial_write_serviceRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "SerialDriver/serial_write_service";
  }

  static const char* value(const SerialDriver::serial_write_serviceRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<SerialDriver::serial_write_serviceResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cf923418e1a73ac4a1bdc6a6d3ef397e";
  }

  static const char* value(const SerialDriver::serial_write_serviceResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<SerialDriver::serial_write_serviceResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "SerialDriver/serial_write_service";
  }

  static const char* value(const SerialDriver::serial_write_serviceResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // SERIALDRIVER_SERVICE_SERIAL_WRITE_SERVICE_H
