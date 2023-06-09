// Generated by gencpp from file h_robix_control/SetGroupMotorData.msg
// DO NOT EDIT!


#ifndef H_ROBIX_CONTROL_MESSAGE_SETGROUPMOTORDATA_H
#define H_ROBIX_CONTROL_MESSAGE_SETGROUPMOTORDATA_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace h_robix_control
{
template <class ContainerAllocator>
struct SetGroupMotorData_
{
  typedef SetGroupMotorData_<ContainerAllocator> Type;

  SetGroupMotorData_()
    : motor1_id(0)
    , motor2_id(0)
    , motor3_id(0)
    , motor4_id(0)
    , motor5_id(0)
    , motor6_id(0)
    , data_required()
    , motor1_data(0)
    , motor2_data(0)
    , motor3_data(0)
    , motor4_data(0)
    , motor5_data(0)
    , motor6_data(0)  {
    }
  SetGroupMotorData_(const ContainerAllocator& _alloc)
    : motor1_id(0)
    , motor2_id(0)
    , motor3_id(0)
    , motor4_id(0)
    , motor5_id(0)
    , motor6_id(0)
    , data_required(_alloc)
    , motor1_data(0)
    , motor2_data(0)
    , motor3_data(0)
    , motor4_data(0)
    , motor5_data(0)
    , motor6_data(0)  {
  (void)_alloc;
    }



   typedef uint8_t _motor1_id_type;
  _motor1_id_type motor1_id;

   typedef uint8_t _motor2_id_type;
  _motor2_id_type motor2_id;

   typedef uint8_t _motor3_id_type;
  _motor3_id_type motor3_id;

   typedef uint8_t _motor4_id_type;
  _motor4_id_type motor4_id;

   typedef uint8_t _motor5_id_type;
  _motor5_id_type motor5_id;

   typedef uint8_t _motor6_id_type;
  _motor6_id_type motor6_id;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _data_required_type;
  _data_required_type data_required;

   typedef int32_t _motor1_data_type;
  _motor1_data_type motor1_data;

   typedef int32_t _motor2_data_type;
  _motor2_data_type motor2_data;

   typedef int32_t _motor3_data_type;
  _motor3_data_type motor3_data;

   typedef int32_t _motor4_data_type;
  _motor4_data_type motor4_data;

   typedef int32_t _motor5_data_type;
  _motor5_data_type motor5_data;

   typedef int32_t _motor6_data_type;
  _motor6_data_type motor6_data;





  typedef boost::shared_ptr< ::h_robix_control::SetGroupMotorData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::h_robix_control::SetGroupMotorData_<ContainerAllocator> const> ConstPtr;

}; // struct SetGroupMotorData_

typedef ::h_robix_control::SetGroupMotorData_<std::allocator<void> > SetGroupMotorData;

typedef boost::shared_ptr< ::h_robix_control::SetGroupMotorData > SetGroupMotorDataPtr;
typedef boost::shared_ptr< ::h_robix_control::SetGroupMotorData const> SetGroupMotorDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::h_robix_control::SetGroupMotorData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::h_robix_control::SetGroupMotorData_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::h_robix_control::SetGroupMotorData_<ContainerAllocator1> & lhs, const ::h_robix_control::SetGroupMotorData_<ContainerAllocator2> & rhs)
{
  return lhs.motor1_id == rhs.motor1_id &&
    lhs.motor2_id == rhs.motor2_id &&
    lhs.motor3_id == rhs.motor3_id &&
    lhs.motor4_id == rhs.motor4_id &&
    lhs.motor5_id == rhs.motor5_id &&
    lhs.motor6_id == rhs.motor6_id &&
    lhs.data_required == rhs.data_required &&
    lhs.motor1_data == rhs.motor1_data &&
    lhs.motor2_data == rhs.motor2_data &&
    lhs.motor3_data == rhs.motor3_data &&
    lhs.motor4_data == rhs.motor4_data &&
    lhs.motor5_data == rhs.motor5_data &&
    lhs.motor6_data == rhs.motor6_data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::h_robix_control::SetGroupMotorData_<ContainerAllocator1> & lhs, const ::h_robix_control::SetGroupMotorData_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace h_robix_control

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::h_robix_control::SetGroupMotorData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::h_robix_control::SetGroupMotorData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::h_robix_control::SetGroupMotorData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::h_robix_control::SetGroupMotorData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::h_robix_control::SetGroupMotorData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::h_robix_control::SetGroupMotorData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::h_robix_control::SetGroupMotorData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d24f6d6ff0914be0afb7864c32f01a60";
  }

  static const char* value(const ::h_robix_control::SetGroupMotorData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd24f6d6ff0914be0ULL;
  static const uint64_t static_value2 = 0xafb7864c32f01a60ULL;
};

template<class ContainerAllocator>
struct DataType< ::h_robix_control::SetGroupMotorData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "h_robix_control/SetGroupMotorData";
  }

  static const char* value(const ::h_robix_control::SetGroupMotorData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::h_robix_control::SetGroupMotorData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 motor1_id\n"
"uint8 motor2_id\n"
"uint8 motor3_id\n"
"uint8 motor4_id\n"
"uint8 motor5_id\n"
"uint8 motor6_id\n"
"string data_required\n"
"int32 motor1_data\n"
"int32 motor2_data\n"
"int32 motor3_data\n"
"int32 motor4_data\n"
"int32 motor5_data\n"
"int32 motor6_data\n"
;
  }

  static const char* value(const ::h_robix_control::SetGroupMotorData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::h_robix_control::SetGroupMotorData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.motor1_id);
      stream.next(m.motor2_id);
      stream.next(m.motor3_id);
      stream.next(m.motor4_id);
      stream.next(m.motor5_id);
      stream.next(m.motor6_id);
      stream.next(m.data_required);
      stream.next(m.motor1_data);
      stream.next(m.motor2_data);
      stream.next(m.motor3_data);
      stream.next(m.motor4_data);
      stream.next(m.motor5_data);
      stream.next(m.motor6_data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetGroupMotorData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::h_robix_control::SetGroupMotorData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::h_robix_control::SetGroupMotorData_<ContainerAllocator>& v)
  {
    s << indent << "motor1_id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.motor1_id);
    s << indent << "motor2_id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.motor2_id);
    s << indent << "motor3_id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.motor3_id);
    s << indent << "motor4_id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.motor4_id);
    s << indent << "motor5_id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.motor5_id);
    s << indent << "motor6_id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.motor6_id);
    s << indent << "data_required: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.data_required);
    s << indent << "motor1_data: ";
    Printer<int32_t>::stream(s, indent + "  ", v.motor1_data);
    s << indent << "motor2_data: ";
    Printer<int32_t>::stream(s, indent + "  ", v.motor2_data);
    s << indent << "motor3_data: ";
    Printer<int32_t>::stream(s, indent + "  ", v.motor3_data);
    s << indent << "motor4_data: ";
    Printer<int32_t>::stream(s, indent + "  ", v.motor4_data);
    s << indent << "motor5_data: ";
    Printer<int32_t>::stream(s, indent + "  ", v.motor5_data);
    s << indent << "motor6_data: ";
    Printer<int32_t>::stream(s, indent + "  ", v.motor6_data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // H_ROBIX_CONTROL_MESSAGE_SETGROUPMOTORDATA_H
