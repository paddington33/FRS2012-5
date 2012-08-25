/* Auto-generated by genmsg_cpp for file /home/frs2012-5/fuerte_workspace/TOSNETDriver/srv/TOSNET_write.srv */
#ifndef TOSNETDRIVER_SERVICE_TOSNET_WRITE_H
#define TOSNETDRIVER_SERVICE_TOSNET_WRITE_H
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




namespace TOSNETDriver
{
template <class ContainerAllocator>
struct TOSNET_writeRequest_ {
  typedef TOSNET_writeRequest_<ContainerAllocator> Type;

  TOSNET_writeRequest_()
  : reg(0)
  , word(0)
  , data()
  {
  }

  TOSNET_writeRequest_(const ContainerAllocator& _alloc)
  : reg(0)
  , word(0)
  , data(_alloc)
  {
  }

  typedef int8_t _reg_type;
  int8_t reg;

  typedef int8_t _word_type;
  int8_t word;

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _data_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  data;


  typedef boost::shared_ptr< ::TOSNETDriver::TOSNET_writeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::TOSNETDriver::TOSNET_writeRequest_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct TOSNET_writeRequest
typedef  ::TOSNETDriver::TOSNET_writeRequest_<std::allocator<void> > TOSNET_writeRequest;

typedef boost::shared_ptr< ::TOSNETDriver::TOSNET_writeRequest> TOSNET_writeRequestPtr;
typedef boost::shared_ptr< ::TOSNETDriver::TOSNET_writeRequest const> TOSNET_writeRequestConstPtr;


template <class ContainerAllocator>
struct TOSNET_writeResponse_ {
  typedef TOSNET_writeResponse_<ContainerAllocator> Type;

  TOSNET_writeResponse_()
  : errorCode(0)
  {
  }

  TOSNET_writeResponse_(const ContainerAllocator& _alloc)
  : errorCode(0)
  {
  }

  typedef int8_t _errorCode_type;
  int8_t errorCode;


  typedef boost::shared_ptr< ::TOSNETDriver::TOSNET_writeResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::TOSNETDriver::TOSNET_writeResponse_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct TOSNET_writeResponse
typedef  ::TOSNETDriver::TOSNET_writeResponse_<std::allocator<void> > TOSNET_writeResponse;

typedef boost::shared_ptr< ::TOSNETDriver::TOSNET_writeResponse> TOSNET_writeResponsePtr;
typedef boost::shared_ptr< ::TOSNETDriver::TOSNET_writeResponse const> TOSNET_writeResponseConstPtr;

struct TOSNET_write
{

typedef TOSNET_writeRequest Request;
typedef TOSNET_writeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct TOSNET_write
} // namespace TOSNETDriver

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::TOSNETDriver::TOSNET_writeRequest_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::TOSNETDriver::TOSNET_writeRequest_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::TOSNETDriver::TOSNET_writeRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "9e993e6879246ba5e3f818610b805b78";
  }

  static const char* value(const  ::TOSNETDriver::TOSNET_writeRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x9e993e6879246ba5ULL;
  static const uint64_t static_value2 = 0xe3f818610b805b78ULL;
};

template<class ContainerAllocator>
struct DataType< ::TOSNETDriver::TOSNET_writeRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "TOSNETDriver/TOSNET_writeRequest";
  }

  static const char* value(const  ::TOSNETDriver::TOSNET_writeRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::TOSNETDriver::TOSNET_writeRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "int8 reg\n\
int8 word\n\
string data\n\
\n\
";
  }

  static const char* value(const  ::TOSNETDriver::TOSNET_writeRequest_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::TOSNETDriver::TOSNET_writeResponse_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::TOSNETDriver::TOSNET_writeResponse_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::TOSNETDriver::TOSNET_writeResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "b9f50b4c26ce9db2ab6dff343915632d";
  }

  static const char* value(const  ::TOSNETDriver::TOSNET_writeResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xb9f50b4c26ce9db2ULL;
  static const uint64_t static_value2 = 0xab6dff343915632dULL;
};

template<class ContainerAllocator>
struct DataType< ::TOSNETDriver::TOSNET_writeResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "TOSNETDriver/TOSNET_writeResponse";
  }

  static const char* value(const  ::TOSNETDriver::TOSNET_writeResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::TOSNETDriver::TOSNET_writeResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "int8 errorCode\n\
\n\
";
  }

  static const char* value(const  ::TOSNETDriver::TOSNET_writeResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::TOSNETDriver::TOSNET_writeResponse_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::TOSNETDriver::TOSNET_writeRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.reg);
    stream.next(m.word);
    stream.next(m.data);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct TOSNET_writeRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::TOSNETDriver::TOSNET_writeResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.errorCode);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct TOSNET_writeResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<TOSNETDriver::TOSNET_write> {
  static const char* value() 
  {
    return "5801e791d40e1c3270e20e12cf5a168d";
  }

  static const char* value(const TOSNETDriver::TOSNET_write&) { return value(); } 
};

template<>
struct DataType<TOSNETDriver::TOSNET_write> {
  static const char* value() 
  {
    return "TOSNETDriver/TOSNET_write";
  }

  static const char* value(const TOSNETDriver::TOSNET_write&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<TOSNETDriver::TOSNET_writeRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "5801e791d40e1c3270e20e12cf5a168d";
  }

  static const char* value(const TOSNETDriver::TOSNET_writeRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<TOSNETDriver::TOSNET_writeRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "TOSNETDriver/TOSNET_write";
  }

  static const char* value(const TOSNETDriver::TOSNET_writeRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<TOSNETDriver::TOSNET_writeResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "5801e791d40e1c3270e20e12cf5a168d";
  }

  static const char* value(const TOSNETDriver::TOSNET_writeResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<TOSNETDriver::TOSNET_writeResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "TOSNETDriver/TOSNET_write";
  }

  static const char* value(const TOSNETDriver::TOSNET_writeResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // TOSNETDRIVER_SERVICE_TOSNET_WRITE_H
