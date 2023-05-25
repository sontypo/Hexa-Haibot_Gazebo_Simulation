; Auto-generated. Do not edit!


(cl:in-package h_robix_control-msg)


;//! \htmlinclude SetGroupMotorData.msg.html

(cl:defclass <SetGroupMotorData> (roslisp-msg-protocol:ros-message)
  ((motor1_id
    :reader motor1_id
    :initarg :motor1_id
    :type cl:fixnum
    :initform 0)
   (motor2_id
    :reader motor2_id
    :initarg :motor2_id
    :type cl:fixnum
    :initform 0)
   (motor3_id
    :reader motor3_id
    :initarg :motor3_id
    :type cl:fixnum
    :initform 0)
   (motor4_id
    :reader motor4_id
    :initarg :motor4_id
    :type cl:fixnum
    :initform 0)
   (motor5_id
    :reader motor5_id
    :initarg :motor5_id
    :type cl:fixnum
    :initform 0)
   (motor6_id
    :reader motor6_id
    :initarg :motor6_id
    :type cl:fixnum
    :initform 0)
   (data_required
    :reader data_required
    :initarg :data_required
    :type cl:string
    :initform "")
   (motor1_data
    :reader motor1_data
    :initarg :motor1_data
    :type cl:integer
    :initform 0)
   (motor2_data
    :reader motor2_data
    :initarg :motor2_data
    :type cl:integer
    :initform 0)
   (motor3_data
    :reader motor3_data
    :initarg :motor3_data
    :type cl:integer
    :initform 0)
   (motor4_data
    :reader motor4_data
    :initarg :motor4_data
    :type cl:integer
    :initform 0)
   (motor5_data
    :reader motor5_data
    :initarg :motor5_data
    :type cl:integer
    :initform 0)
   (motor6_data
    :reader motor6_data
    :initarg :motor6_data
    :type cl:integer
    :initform 0))
)

(cl:defclass SetGroupMotorData (<SetGroupMotorData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGroupMotorData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGroupMotorData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name h_robix_control-msg:<SetGroupMotorData> is deprecated: use h_robix_control-msg:SetGroupMotorData instead.")))

(cl:ensure-generic-function 'motor1_id-val :lambda-list '(m))
(cl:defmethod motor1_id-val ((m <SetGroupMotorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader h_robix_control-msg:motor1_id-val is deprecated.  Use h_robix_control-msg:motor1_id instead.")
  (motor1_id m))

(cl:ensure-generic-function 'motor2_id-val :lambda-list '(m))
(cl:defmethod motor2_id-val ((m <SetGroupMotorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader h_robix_control-msg:motor2_id-val is deprecated.  Use h_robix_control-msg:motor2_id instead.")
  (motor2_id m))

(cl:ensure-generic-function 'motor3_id-val :lambda-list '(m))
(cl:defmethod motor3_id-val ((m <SetGroupMotorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader h_robix_control-msg:motor3_id-val is deprecated.  Use h_robix_control-msg:motor3_id instead.")
  (motor3_id m))

(cl:ensure-generic-function 'motor4_id-val :lambda-list '(m))
(cl:defmethod motor4_id-val ((m <SetGroupMotorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader h_robix_control-msg:motor4_id-val is deprecated.  Use h_robix_control-msg:motor4_id instead.")
  (motor4_id m))

(cl:ensure-generic-function 'motor5_id-val :lambda-list '(m))
(cl:defmethod motor5_id-val ((m <SetGroupMotorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader h_robix_control-msg:motor5_id-val is deprecated.  Use h_robix_control-msg:motor5_id instead.")
  (motor5_id m))

(cl:ensure-generic-function 'motor6_id-val :lambda-list '(m))
(cl:defmethod motor6_id-val ((m <SetGroupMotorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader h_robix_control-msg:motor6_id-val is deprecated.  Use h_robix_control-msg:motor6_id instead.")
  (motor6_id m))

(cl:ensure-generic-function 'data_required-val :lambda-list '(m))
(cl:defmethod data_required-val ((m <SetGroupMotorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader h_robix_control-msg:data_required-val is deprecated.  Use h_robix_control-msg:data_required instead.")
  (data_required m))

(cl:ensure-generic-function 'motor1_data-val :lambda-list '(m))
(cl:defmethod motor1_data-val ((m <SetGroupMotorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader h_robix_control-msg:motor1_data-val is deprecated.  Use h_robix_control-msg:motor1_data instead.")
  (motor1_data m))

(cl:ensure-generic-function 'motor2_data-val :lambda-list '(m))
(cl:defmethod motor2_data-val ((m <SetGroupMotorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader h_robix_control-msg:motor2_data-val is deprecated.  Use h_robix_control-msg:motor2_data instead.")
  (motor2_data m))

(cl:ensure-generic-function 'motor3_data-val :lambda-list '(m))
(cl:defmethod motor3_data-val ((m <SetGroupMotorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader h_robix_control-msg:motor3_data-val is deprecated.  Use h_robix_control-msg:motor3_data instead.")
  (motor3_data m))

(cl:ensure-generic-function 'motor4_data-val :lambda-list '(m))
(cl:defmethod motor4_data-val ((m <SetGroupMotorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader h_robix_control-msg:motor4_data-val is deprecated.  Use h_robix_control-msg:motor4_data instead.")
  (motor4_data m))

(cl:ensure-generic-function 'motor5_data-val :lambda-list '(m))
(cl:defmethod motor5_data-val ((m <SetGroupMotorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader h_robix_control-msg:motor5_data-val is deprecated.  Use h_robix_control-msg:motor5_data instead.")
  (motor5_data m))

(cl:ensure-generic-function 'motor6_data-val :lambda-list '(m))
(cl:defmethod motor6_data-val ((m <SetGroupMotorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader h_robix_control-msg:motor6_data-val is deprecated.  Use h_robix_control-msg:motor6_data instead.")
  (motor6_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGroupMotorData>) ostream)
  "Serializes a message object of type '<SetGroupMotorData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor1_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor2_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor3_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor4_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor5_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor6_id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data_required))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data_required))
  (cl:let* ((signed (cl:slot-value msg 'motor1_data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motor2_data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motor3_data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motor4_data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motor5_data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motor6_data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGroupMotorData>) istream)
  "Deserializes a message object of type '<SetGroupMotorData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor1_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor2_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor3_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor4_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor5_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor6_id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data_required) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data_required) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor1_data) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor2_data) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor3_data) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor4_data) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor5_data) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor6_data) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGroupMotorData>)))
  "Returns string type for a message object of type '<SetGroupMotorData>"
  "h_robix_control/SetGroupMotorData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGroupMotorData)))
  "Returns string type for a message object of type 'SetGroupMotorData"
  "h_robix_control/SetGroupMotorData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGroupMotorData>)))
  "Returns md5sum for a message object of type '<SetGroupMotorData>"
  "d24f6d6ff0914be0afb7864c32f01a60")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGroupMotorData)))
  "Returns md5sum for a message object of type 'SetGroupMotorData"
  "d24f6d6ff0914be0afb7864c32f01a60")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGroupMotorData>)))
  "Returns full string definition for message of type '<SetGroupMotorData>"
  (cl:format cl:nil "uint8 motor1_id~%uint8 motor2_id~%uint8 motor3_id~%uint8 motor4_id~%uint8 motor5_id~%uint8 motor6_id~%string data_required~%int32 motor1_data~%int32 motor2_data~%int32 motor3_data~%int32 motor4_data~%int32 motor5_data~%int32 motor6_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGroupMotorData)))
  "Returns full string definition for message of type 'SetGroupMotorData"
  (cl:format cl:nil "uint8 motor1_id~%uint8 motor2_id~%uint8 motor3_id~%uint8 motor4_id~%uint8 motor5_id~%uint8 motor6_id~%string data_required~%int32 motor1_data~%int32 motor2_data~%int32 motor3_data~%int32 motor4_data~%int32 motor5_data~%int32 motor6_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGroupMotorData>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'data_required))
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGroupMotorData>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGroupMotorData
    (cl:cons ':motor1_id (motor1_id msg))
    (cl:cons ':motor2_id (motor2_id msg))
    (cl:cons ':motor3_id (motor3_id msg))
    (cl:cons ':motor4_id (motor4_id msg))
    (cl:cons ':motor5_id (motor5_id msg))
    (cl:cons ':motor6_id (motor6_id msg))
    (cl:cons ':data_required (data_required msg))
    (cl:cons ':motor1_data (motor1_data msg))
    (cl:cons ':motor2_data (motor2_data msg))
    (cl:cons ':motor3_data (motor3_data msg))
    (cl:cons ':motor4_data (motor4_data msg))
    (cl:cons ':motor5_data (motor5_data msg))
    (cl:cons ':motor6_data (motor6_data msg))
))
