// Generated by gencpp from file hexapod_msgs/LegJoints.msg
// DO NOT EDIT!


#ifndef HEXAPOD_MSGS_MESSAGE_LEGJOINTS_H
#define HEXAPOD_MSGS_MESSAGE_LEGJOINTS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hexapod_msgs
{
template <class ContainerAllocator>
struct LegJoints_
{
  typedef LegJoints_<ContainerAllocator> Type;

  LegJoints_()
    : coxa(0.0)
    , femur(0.0)
    , tibia(0.0)
    , tarsus(0.0)  {
    }
  LegJoints_(const ContainerAllocator& _alloc)
    : coxa(0.0)
    , femur(0.0)
    , tibia(0.0)
    , tarsus(0.0)  {
  (void)_alloc;
    }



   typedef double _coxa_type;
  _coxa_type coxa;

   typedef double _femur_type;
  _femur_type femur;

   typedef double _tibia_type;
  _tibia_type tibia;

   typedef double _tarsus_type;
  _tarsus_type tarsus;





  typedef boost::shared_ptr< ::hexapod_msgs::LegJoints_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hexapod_msgs::LegJoints_<ContainerAllocator> const> ConstPtr;

}; // struct LegJoints_

typedef ::hexapod_msgs::LegJoints_<std::allocator<void> > LegJoints;

typedef boost::shared_ptr< ::hexapod_msgs::LegJoints > LegJointsPtr;
typedef boost::shared_ptr< ::hexapod_msgs::LegJoints const> LegJointsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hexapod_msgs::LegJoints_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hexapod_msgs::LegJoints_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hexapod_msgs::LegJoints_<ContainerAllocator1> & lhs, const ::hexapod_msgs::LegJoints_<ContainerAllocator2> & rhs)
{
  return lhs.coxa == rhs.coxa &&
    lhs.femur == rhs.femur &&
    lhs.tibia == rhs.tibia &&
    lhs.tarsus == rhs.tarsus;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hexapod_msgs::LegJoints_<ContainerAllocator1> & lhs, const ::hexapod_msgs::LegJoints_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hexapod_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::hexapod_msgs::LegJoints_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hexapod_msgs::LegJoints_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hexapod_msgs::LegJoints_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hexapod_msgs::LegJoints_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hexapod_msgs::LegJoints_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hexapod_msgs::LegJoints_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hexapod_msgs::LegJoints_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4281b159c18654b4920aa4a2c525621c";
  }

  static const char* value(const ::hexapod_msgs::LegJoints_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4281b159c18654b4ULL;
  static const uint64_t static_value2 = 0x920aa4a2c525621cULL;
};

template<class ContainerAllocator>
struct DataType< ::hexapod_msgs::LegJoints_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hexapod_msgs/LegJoints";
  }

  static const char* value(const ::hexapod_msgs::LegJoints_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hexapod_msgs::LegJoints_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 coxa\n"
"float64 femur\n"
"float64 tibia\n"
"float64 tarsus\n"
;
  }

  static const char* value(const ::hexapod_msgs::LegJoints_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hexapod_msgs::LegJoints_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.coxa);
      stream.next(m.femur);
      stream.next(m.tibia);
      stream.next(m.tarsus);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LegJoints_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hexapod_msgs::LegJoints_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hexapod_msgs::LegJoints_<ContainerAllocator>& v)
  {
    s << indent << "coxa: ";
    Printer<double>::stream(s, indent + "  ", v.coxa);
    s << indent << "femur: ";
    Printer<double>::stream(s, indent + "  ", v.femur);
    s << indent << "tibia: ";
    Printer<double>::stream(s, indent + "  ", v.tibia);
    s << indent << "tarsus: ";
    Printer<double>::stream(s, indent + "  ", v.tarsus);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HEXAPOD_MSGS_MESSAGE_LEGJOINTS_H
