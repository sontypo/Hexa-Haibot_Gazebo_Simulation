; Auto-generated. Do not edit!


(cl:in-package h_robix_control-msg)


;//! \htmlinclude ButtonData.msg.html

(cl:defclass <ButtonData> (roslisp-msg-protocol:ros-message)
  ((right_front_leg
    :reader right_front_leg
    :initarg :right_front_leg
    :type cl:boolean
    :initform cl:nil)
   (right_middle_leg
    :reader right_middle_leg
    :initarg :right_middle_leg
    :type cl:boolean
    :initform cl:nil)
   (right_back_leg
    :reader right_back_leg
    :initarg :right_back_leg
    :type cl:boolean
    :initform cl:nil)
   (left_front_leg
    :reader left_front_leg
    :initarg :left_front_leg
    :type cl:boolean
    :initform cl:nil)
   (left_middle_leg
    :reader left_middle_leg
    :initarg :left_middle_leg
    :type cl:boolean
    :initform cl:nil)
   (left_back_leg
    :reader left_back_leg
    :initarg :left_back_leg
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ButtonData (<ButtonData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ButtonData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ButtonData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name h_robix_control-msg:<ButtonData> is deprecated: use h_robix_control-msg:ButtonData instead.")))

(cl:ensure-generic-function 'right_front_leg-val :lambda-list '(m))
(cl:defmethod right_front_leg-val ((m <ButtonData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader h_robix_control-msg:right_front_leg-val is deprecated.  Use h_robix_control-msg:right_front_leg instead.")
  (right_front_leg m))

(cl:ensure-generic-function 'right_middle_leg-val :lambda-list '(m))
(cl:defmethod right_middle_leg-val ((m <ButtonData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader h_robix_control-msg:right_middle_leg-val is deprecated.  Use h_robix_control-msg:right_middle_leg instead.")
  (right_middle_leg m))

(cl:ensure-generic-function 'right_back_leg-val :lambda-list '(m))
(cl:defmethod right_back_leg-val ((m <ButtonData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader h_robix_control-msg:right_back_leg-val is deprecated.  Use h_robix_control-msg:right_back_leg instead.")
  (right_back_leg m))

(cl:ensure-generic-function 'left_front_leg-val :lambda-list '(m))
(cl:defmethod left_front_leg-val ((m <ButtonData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader h_robix_control-msg:left_front_leg-val is deprecated.  Use h_robix_control-msg:left_front_leg instead.")
  (left_front_leg m))

(cl:ensure-generic-function 'left_middle_leg-val :lambda-list '(m))
(cl:defmethod left_middle_leg-val ((m <ButtonData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader h_robix_control-msg:left_middle_leg-val is deprecated.  Use h_robix_control-msg:left_middle_leg instead.")
  (left_middle_leg m))

(cl:ensure-generic-function 'left_back_leg-val :lambda-list '(m))
(cl:defmethod left_back_leg-val ((m <ButtonData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader h_robix_control-msg:left_back_leg-val is deprecated.  Use h_robix_control-msg:left_back_leg instead.")
  (left_back_leg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ButtonData>) ostream)
  "Serializes a message object of type '<ButtonData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'right_front_leg) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'right_middle_leg) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'right_back_leg) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'left_front_leg) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'left_middle_leg) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'left_back_leg) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ButtonData>) istream)
  "Deserializes a message object of type '<ButtonData>"
    (cl:setf (cl:slot-value msg 'right_front_leg) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'right_middle_leg) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'right_back_leg) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'left_front_leg) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'left_middle_leg) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'left_back_leg) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ButtonData>)))
  "Returns string type for a message object of type '<ButtonData>"
  "h_robix_control/ButtonData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonData)))
  "Returns string type for a message object of type 'ButtonData"
  "h_robix_control/ButtonData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ButtonData>)))
  "Returns md5sum for a message object of type '<ButtonData>"
  "374b4b2e2aa0d2e31b123b1290f7a442")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ButtonData)))
  "Returns md5sum for a message object of type 'ButtonData"
  "374b4b2e2aa0d2e31b123b1290f7a442")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ButtonData>)))
  "Returns full string definition for message of type '<ButtonData>"
  (cl:format cl:nil "bool right_front_leg~%bool right_middle_leg~%bool right_back_leg~%bool left_front_leg~%bool left_middle_leg~%bool left_back_leg~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ButtonData)))
  "Returns full string definition for message of type 'ButtonData"
  (cl:format cl:nil "bool right_front_leg~%bool right_middle_leg~%bool right_back_leg~%bool left_front_leg~%bool left_middle_leg~%bool left_back_leg~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ButtonData>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ButtonData>))
  "Converts a ROS message object to a list"
  (cl:list 'ButtonData
    (cl:cons ':right_front_leg (right_front_leg msg))
    (cl:cons ':right_middle_leg (right_middle_leg msg))
    (cl:cons ':right_back_leg (right_back_leg msg))
    (cl:cons ':left_front_leg (left_front_leg msg))
    (cl:cons ':left_middle_leg (left_middle_leg msg))
    (cl:cons ':left_back_leg (left_back_leg msg))
))
