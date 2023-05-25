// Generated by gencpp from file h_robix_control/ButtonData.msg
// DO NOT EDIT!


#ifndef H_ROBIX_CONTROL_MESSAGE_BUTTONDATA_H
#define H_ROBIX_CONTROL_MESSAGE_BUTTONDATA_H


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
struct ButtonData_
{
  typedef ButtonData_<ContainerAllocator> Type;

  ButtonData_()
    : right_front_leg(false)
    , right_middle_leg(false)
    , right_back_leg(false)
    , left_front_leg(false)
    , left_middle_leg(false)
    , left_back_leg(false)  {
    }
  ButtonData_(const ContainerAllocator& _alloc)
    : right_front_leg(false)
    , right_middle_leg(false)
    , right_back_leg(false)
    , left_front_leg(false)
    , left_middle_leg(false)
    , left_back_leg(false)  {
  (void)_alloc;
    }



   typedef uint8_t _right_front_leg_type;
  _right_front_leg_type right_front_leg;

   typedef uint8_t _right_middle_leg_type;
  _right_middle_leg_type right_middle_leg;

   typedef uint8_t _right_back_leg_type;
  _right_back_leg_type right_back_leg;

   typedef uint8_t _left_front_leg_type;
  _left_front_leg_type left_front_leg;

   typedef uint8_t _left_middle_leg_type;
  _left_middle_leg_type left_middle_leg;

   typedef uint8_t _left_back_leg_type;
  _left_back_leg_type left_back_leg;





  typedef boost::shared_ptr< ::h_robix_control::ButtonData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::h_robix_control::ButtonData_<ContainerAllocator> const> ConstPtr;

}; // struct ButtonData_

typedef ::h_robix_control::ButtonData_<std::allocator<void> > ButtonData;

typedef boost::shared_ptr< ::h_robix_control::ButtonData > ButtonDataPtr;
typedef boost::shared_ptr< ::h_robix_control::ButtonData const> ButtonDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::h_robix_control::ButtonData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::h_robix_control::ButtonData_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::h_robix_control::ButtonData_<ContainerAllocator1> & lhs, const ::h_robix_control::ButtonData_<ContainerAllocator2> & rhs)
{
  return lhs.right_front_leg == rhs.right_front_leg &&
    lhs.right_middle_leg == rhs.right_middle_leg &&
    lhs.right_back_leg == rhs.right_back_leg &&
    lhs.left_front_leg == rhs.left_front_leg &&
    lhs.left_middle_leg == rhs.left_middle_leg &&
    lhs.left_back_leg == rhs.left_back_leg;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::h_robix_control::ButtonData_<ContainerAllocator1> & lhs, const ::h_robix_control::ButtonData_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace h_robix_control

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::h_robix_control::ButtonData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::h_robix_control::ButtonData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::h_robix_control::ButtonData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::h_robix_control::ButtonData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::h_robix_control::ButtonData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::h_robix_control::ButtonData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::h_robix_control::ButtonData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "374b4b2e2aa0d2e31b123b1290f7a442";
  }

  static const char* value(const ::h_robix_control::ButtonData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x374b4b2e2aa0d2e3ULL;
  static const uint64_t static_value2 = 0x1b123b1290f7a442ULL;
};

template<class ContainerAllocator>
struct DataType< ::h_robix_control::ButtonData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "h_robix_control/ButtonData";
  }

  static const char* value(const ::h_robix_control::ButtonData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::h_robix_control::ButtonData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool right_front_leg\n"
"bool right_middle_leg\n"
"bool right_back_leg\n"
"bool left_front_leg\n"
"bool left_middle_leg\n"
"bool left_back_leg\n"
;
  }

  static const char* value(const ::h_robix_control::ButtonData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::h_robix_control::ButtonData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.right_front_leg);
      stream.next(m.right_middle_leg);
      stream.next(m.right_back_leg);
      stream.next(m.left_front_leg);
      stream.next(m.left_middle_leg);
      stream.next(m.left_back_leg);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ButtonData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::h_robix_control::ButtonData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::h_robix_control::ButtonData_<ContainerAllocator>& v)
  {
    s << indent << "right_front_leg: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.right_front_leg);
    s << indent << "right_middle_leg: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.right_middle_leg);
    s << indent << "right_back_leg: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.right_back_leg);
    s << indent << "left_front_leg: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.left_front_leg);
    s << indent << "left_middle_leg: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.left_middle_leg);
    s << indent << "left_back_leg: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.left_back_leg);
  }
};

} // namespace message_operations
} // namespace ros

#endif // H_ROBIX_CONTROL_MESSAGE_BUTTONDATA_H
