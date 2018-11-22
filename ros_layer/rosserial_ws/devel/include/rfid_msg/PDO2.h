// Generated by gencpp from file rfid_msg/PDO2.msg
// DO NOT EDIT!


#ifndef RFID_MSG_MESSAGE_PDO2_H
#define RFID_MSG_MESSAGE_PDO2_H


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
struct PDO2_
{
  typedef PDO2_<ContainerAllocator> Type;

  PDO2_()
    : inductionPosition1(0.0)
    , inductionSignal1(0.0)
    , inductionPosition2(0.0)
    , inductionSignal2(0.0)  {
    }
  PDO2_(const ContainerAllocator& _alloc)
    : inductionPosition1(0.0)
    , inductionSignal1(0.0)
    , inductionPosition2(0.0)
    , inductionSignal2(0.0)  {
  (void)_alloc;
    }



   typedef float _inductionPosition1_type;
  _inductionPosition1_type inductionPosition1;

   typedef float _inductionSignal1_type;
  _inductionSignal1_type inductionSignal1;

   typedef float _inductionPosition2_type;
  _inductionPosition2_type inductionPosition2;

   typedef float _inductionSignal2_type;
  _inductionSignal2_type inductionSignal2;





  typedef boost::shared_ptr< ::rfid_msg::PDO2_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rfid_msg::PDO2_<ContainerAllocator> const> ConstPtr;

}; // struct PDO2_

typedef ::rfid_msg::PDO2_<std::allocator<void> > PDO2;

typedef boost::shared_ptr< ::rfid_msg::PDO2 > PDO2Ptr;
typedef boost::shared_ptr< ::rfid_msg::PDO2 const> PDO2ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rfid_msg::PDO2_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rfid_msg::PDO2_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::rfid_msg::PDO2_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rfid_msg::PDO2_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rfid_msg::PDO2_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rfid_msg::PDO2_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rfid_msg::PDO2_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rfid_msg::PDO2_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rfid_msg::PDO2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e090932213462699dc59df25654c653e";
  }

  static const char* value(const ::rfid_msg::PDO2_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe090932213462699ULL;
  static const uint64_t static_value2 = 0xdc59df25654c653eULL;
};

template<class ContainerAllocator>
struct DataType< ::rfid_msg::PDO2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rfid_msg/PDO2";
  }

  static const char* value(const ::rfid_msg::PDO2_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rfid_msg::PDO2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 inductionPosition1\n\
float32 inductionSignal1\n\
float32 inductionPosition2\n\
float32 inductionSignal2\n\
";
  }

  static const char* value(const ::rfid_msg::PDO2_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rfid_msg::PDO2_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.inductionPosition1);
      stream.next(m.inductionSignal1);
      stream.next(m.inductionPosition2);
      stream.next(m.inductionSignal2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PDO2_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rfid_msg::PDO2_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rfid_msg::PDO2_<ContainerAllocator>& v)
  {
    s << indent << "inductionPosition1: ";
    Printer<float>::stream(s, indent + "  ", v.inductionPosition1);
    s << indent << "inductionSignal1: ";
    Printer<float>::stream(s, indent + "  ", v.inductionSignal1);
    s << indent << "inductionPosition2: ";
    Printer<float>::stream(s, indent + "  ", v.inductionPosition2);
    s << indent << "inductionSignal2: ";
    Printer<float>::stream(s, indent + "  ", v.inductionSignal2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RFID_MSG_MESSAGE_PDO2_H
