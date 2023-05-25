; Auto-generated. Do not edit!


(cl:in-package hexapod_msgs-msg)


;//! \htmlinclude FeetPositions.msg.html

(cl:defclass <FeetPositions> (roslisp-msg-protocol:ros-message)
  ((foot
    :reader foot
    :initarg :foot
    :type (cl:vector hexapod_msgs-msg:Pose)
   :initform (cl:make-array 6 :element-type 'hexapod_msgs-msg:Pose :initial-element (cl:make-instance 'hexapod_msgs-msg:Pose))))
)

(cl:defclass FeetPositions (<FeetPositions>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FeetPositions>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FeetPositions)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hexapod_msgs-msg:<FeetPositions> is deprecated: use hexapod_msgs-msg:FeetPositions instead.")))

(cl:ensure-generic-function 'foot-val :lambda-list '(m))
(cl:defmethod foot-val ((m <FeetPositions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hexapod_msgs-msg:foot-val is deprecated.  Use hexapod_msgs-msg:foot instead.")
  (foot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FeetPositions>) ostream)
  "Serializes a message object of type '<FeetPositions>"
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'foot))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FeetPositions>) istream)
  "Deserializes a message object of type '<FeetPositions>"
  (cl:setf (cl:slot-value msg 'foot) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'foot)))
    (cl:dotimes (i 6)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hexapod_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FeetPositions>)))
  "Returns string type for a message object of type '<FeetPositions>"
  "hexapod_msgs/FeetPositions")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FeetPositions)))
  "Returns string type for a message object of type 'FeetPositions"
  "hexapod_msgs/FeetPositions")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FeetPositions>)))
  "Returns md5sum for a message object of type '<FeetPositions>"
  "d12724c3b1519cfb275eb5b1d0e25de2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FeetPositions)))
  "Returns md5sum for a message object of type 'FeetPositions"
  "d12724c3b1519cfb275eb5b1d0e25de2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FeetPositions>)))
  "Returns full string definition for message of type '<FeetPositions>"
  (cl:format cl:nil "hexapod_msgs/Pose[6] foot~%~%================================================================================~%MSG: hexapod_msgs/Pose~%geometry_msgs/Point position~%hexapod_msgs/RPY orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: hexapod_msgs/RPY~%float64 roll~%float64 pitch~%float64 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FeetPositions)))
  "Returns full string definition for message of type 'FeetPositions"
  (cl:format cl:nil "hexapod_msgs/Pose[6] foot~%~%================================================================================~%MSG: hexapod_msgs/Pose~%geometry_msgs/Point position~%hexapod_msgs/RPY orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: hexapod_msgs/RPY~%float64 roll~%float64 pitch~%float64 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FeetPositions>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'foot) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FeetPositions>))
  "Converts a ROS message object to a list"
  (cl:list 'FeetPositions
    (cl:cons ':foot (foot msg))
))
