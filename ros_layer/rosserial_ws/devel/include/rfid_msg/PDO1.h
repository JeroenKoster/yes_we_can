// Generated by gencpp from file rfid_msg/PDO1.msg
// DO NOT EDIT!


#ifndef RFID_MSG_MESSAGE_PDO1_H
#define RFID_MSG_MESSAGE_PDO1_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rfid_msg
{
template <class ContainerAllocator>
struct PDO1_
{
  typedef PDO1_<ContainerAllocator> Type;

  PDO1_()
    : tagInField(false)
    , codeOk(false)
    , xyDeviationDetermined(false)
    , centerPuls(false)
    , positionError(false)
    , positionEstimate(false)
    , fatalError(false)
    , antennaStarted(false)
    , rfidCode(0.0)
    , xDeviation(0.0)
    , yDeviation(0.0)  {
    }
  PDO1_(const ContainerAllocator& _alloc)
    : tagInField(false)
    , codeOk(false)
    , xyDeviationDetermined(false)
    , centerPuls(false)
    , positionError(false)
    , positionEstimate(false)
    , fatalError(false)
    , antennaStarted(false)
    , rfidCode(0.0)
    , xDeviation(0.0)
    , yDeviation(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _tagInField_type;
  _tagInField_type tagInField;

   typedef uint8_t _codeOk_type;
  _codeOk_type codeOk;

   typedef uint8_t _xyDeviationDetermined_type;
  _xyDeviationDetermined_type xyDeviationDetermined;

   typedef uint8_t _centerPuls_type;
  _centerPuls_type centerPuls;

   typedef uint8_t _positionError_type;
  _positionError_type positionError;

   typedef uint8_t _positionEstimate_type;
  _positionEstimate_type positionEstimate;

   typedef uint8_t _fatalError_type;
  _fatalError_type fatalError;

   typedef uint8_t _antennaStarted_type;
  _antennaStarted_type antennaStarted;

   typedef float _rfidCode_type;
  _rfidCode_type rfidCode;

   typedef float _xDeviation_type;
  _xDeviation_type xDeviation;

   typedef float _yDeviation_type;
  _yDeviation_type yDeviation;





  typedef boost::shared_ptr< ::rfid_msg::PDO1_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rfid_msg::PDO1_<ContainerAllocator> const> ConstPtr;

}; // struct PDO1_

typedef ::rfid_msg::PDO1_<std::allocator<void> > PDO1;

typedef boost::shared_ptr< ::rfid_msg::PDO1 > PDO1Ptr;
typedef boost::shared_ptr< ::rfid_msg::PDO1 const> PDO1ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rfid_msg::PDO1_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rfid_msg::PDO1_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rfid_msg

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'rfid_msg': ['/home/marco/yes_we_can/ros_layer/rosserial_ws/src/rfid_msg/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rfid_msg::PDO1_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rfid_msg::PDO1_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rfid_msg::PDO1_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rfid_msg::PDO1_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rfid_msg::PDO1_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rfid_msg::PDO1_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rfid_msg::PDO1_<ContainerAllocator> >
{
  static const char* value()
  {
    return "530464652e88ccd5dd9df1e0e69d16b1";
  }

  static const char* value(const ::rfid_msg::PDO1_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x530464652e88ccd5ULL;
  static const uint64_t static_value2 = 0xdd9df1e0e69d16b1ULL;
};

template<class ContainerAllocator>
struct DataType< ::rfid_msg::PDO1_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rfid_msg/PDO1";
  }

  static const char* value(const ::rfid_msg::PDO1_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rfid_msg::PDO1_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool tagInField\n\
bool codeOk\n\
bool xyDeviationDetermined\n\
bool centerPuls\n\
bool positionError\n\
bool positionEstimate\n\
bool fatalError\n\
bool antennaStarted\n\
float32 rfidCode\n\
float32 xDeviation\n\
float32 yDeviation\n\
";
  }

  static const char* value(const ::rfid_msg::PDO1_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rfid_msg::PDO1_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.tagInField);
      stream.next(m.codeOk);
      stream.next(m.xyDeviationDetermined);
      stream.next(m.centerPuls);
      stream.next(m.positionError);
      stream.next(m.positionEstimate);
      stream.next(m.fatalError);
      stream.next(m.antennaStarted);
      stream.next(m.rfidCode);
      stream.next(m.xDeviation);
      stream.next(m.yDeviation);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PDO1_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rfid_msg::PDO1_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rfid_msg::PDO1_<ContainerAllocator>& v)
  {
    s << indent << "tagInField: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.tagInField);
    s << indent << "codeOk: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.codeOk);
    s << indent << "xyDeviationDetermined: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.xyDeviationDetermined);
    s << indent << "centerPuls: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.centerPuls);
    s << indent << "positionError: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.positionError);
    s << indent << "positionEstimate: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.positionEstimate);
    s << indent << "fatalError: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.fatalError);
    s << indent << "antennaStarted: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.antennaStarted);
    s << indent << "rfidCode: ";
    Printer<float>::stream(s, indent + "  ", v.rfidCode);
    s << indent << "xDeviation: ";
    Printer<float>::stream(s, indent + "  ", v.xDeviation);
    s << indent << "yDeviation: ";
    Printer<float>::stream(s, indent + "  ", v.yDeviation);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RFID_MSG_MESSAGE_PDO1_H