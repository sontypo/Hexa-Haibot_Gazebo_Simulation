;; Auto-generated. Do not edit!


(when (boundp 'h_robix_control::SetGroupMotorData)
  (if (not (find-package "H_ROBIX_CONTROL"))
    (make-package "H_ROBIX_CONTROL"))
  (shadow 'SetGroupMotorData (find-package "H_ROBIX_CONTROL")))
(unless (find-package "H_ROBIX_CONTROL::SETGROUPMOTORDATA")
  (make-package "H_ROBIX_CONTROL::SETGROUPMOTORDATA"))

(in-package "ROS")
;;//! \htmlinclude SetGroupMotorData.msg.html


(defclass h_robix_control::SetGroupMotorData
  :super ros::object
  :slots (_motor1_id _motor2_id _motor3_id _motor4_id _motor5_id _motor6_id _data_required _motor1_data _motor2_data _motor3_data _motor4_data _motor5_data _motor6_data ))

(defmethod h_robix_control::SetGroupMotorData
  (:init
   (&key
    ((:motor1_id __motor1_id) 0)
    ((:motor2_id __motor2_id) 0)
    ((:motor3_id __motor3_id) 0)
    ((:motor4_id __motor4_id) 0)
    ((:motor5_id __motor5_id) 0)
    ((:motor6_id __motor6_id) 0)
    ((:data_required __data_required) "")
    ((:motor1_data __motor1_data) 0)
    ((:motor2_data __motor2_data) 0)
    ((:motor3_data __motor3_data) 0)
    ((:motor4_data __motor4_data) 0)
    ((:motor5_data __motor5_data) 0)
    ((:motor6_data __motor6_data) 0)
    )
   (send-super :init)
   (setq _motor1_id (round __motor1_id))
   (setq _motor2_id (round __motor2_id))
   (setq _motor3_id (round __motor3_id))
   (setq _motor4_id (round __motor4_id))
   (setq _motor5_id (round __motor5_id))
   (setq _motor6_id (round __motor6_id))
   (setq _data_required (string __data_required))
   (setq _motor1_data (round __motor1_data))
   (setq _motor2_data (round __motor2_data))
   (setq _motor3_data (round __motor3_data))
   (setq _motor4_data (round __motor4_data))
   (setq _motor5_data (round __motor5_data))
   (setq _motor6_data (round __motor6_data))
   self)
  (:motor1_id
   (&optional __motor1_id)
   (if __motor1_id (setq _motor1_id __motor1_id)) _motor1_id)
  (:motor2_id
   (&optional __motor2_id)
   (if __motor2_id (setq _motor2_id __motor2_id)) _motor2_id)
  (:motor3_id
   (&optional __motor3_id)
   (if __motor3_id (setq _motor3_id __motor3_id)) _motor3_id)
  (:motor4_id
   (&optional __motor4_id)
   (if __motor4_id (setq _motor4_id __motor4_id)) _motor4_id)
  (:motor5_id
   (&optional __motor5_id)
   (if __motor5_id (setq _motor5_id __motor5_id)) _motor5_id)
  (:motor6_id
   (&optional __motor6_id)
   (if __motor6_id (setq _motor6_id __motor6_id)) _motor6_id)
  (:data_required
   (&optional __data_required)
   (if __data_required (setq _data_required __data_required)) _data_required)
  (:motor1_data
   (&optional __motor1_data)
   (if __motor1_data (setq _motor1_data __motor1_data)) _motor1_data)
  (:motor2_data
   (&optional __motor2_data)
   (if __motor2_data (setq _motor2_data __motor2_data)) _motor2_data)
  (:motor3_data
   (&optional __motor3_data)
   (if __motor3_data (setq _motor3_data __motor3_data)) _motor3_data)
  (:motor4_data
   (&optional __motor4_data)
   (if __motor4_data (setq _motor4_data __motor4_data)) _motor4_data)
  (:motor5_data
   (&optional __motor5_data)
   (if __motor5_data (setq _motor5_data __motor5_data)) _motor5_data)
  (:motor6_data
   (&optional __motor6_data)
   (if __motor6_data (setq _motor6_data __motor6_data)) _motor6_data)
  (:serialization-length
   ()
   (+
    ;; uint8 _motor1_id
    1
    ;; uint8 _motor2_id
    1
    ;; uint8 _motor3_id
    1
    ;; uint8 _motor4_id
    1
    ;; uint8 _motor5_id
    1
    ;; uint8 _motor6_id
    1
    ;; string _data_required
    4 (length _data_required)
    ;; int32 _motor1_data
    4
    ;; int32 _motor2_data
    4
    ;; int32 _motor3_data
    4
    ;; int32 _motor4_data
    4
    ;; int32 _motor5_data
    4
    ;; int32 _motor6_data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _motor1_id
       (write-byte _motor1_id s)
     ;; uint8 _motor2_id
       (write-byte _motor2_id s)
     ;; uint8 _motor3_id
       (write-byte _motor3_id s)
     ;; uint8 _motor4_id
       (write-byte _motor4_id s)
     ;; uint8 _motor5_id
       (write-byte _motor5_id s)
     ;; uint8 _motor6_id
       (write-byte _motor6_id s)
     ;; string _data_required
       (write-long (length _data_required) s) (princ _data_required s)
     ;; int32 _motor1_data
       (write-long _motor1_data s)
     ;; int32 _motor2_data
       (write-long _motor2_data s)
     ;; int32 _motor3_data
       (write-long _motor3_data s)
     ;; int32 _motor4_data
       (write-long _motor4_data s)
     ;; int32 _motor5_data
       (write-long _motor5_data s)
     ;; int32 _motor6_data
       (write-long _motor6_data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _motor1_id
     (setq _motor1_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _motor2_id
     (setq _motor2_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _motor3_id
     (setq _motor3_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _motor4_id
     (setq _motor4_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _motor5_id
     (setq _motor5_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _motor6_id
     (setq _motor6_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _data_required
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data_required (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _motor1_data
     (setq _motor1_data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _motor2_data
     (setq _motor2_data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _motor3_data
     (setq _motor3_data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _motor4_data
     (setq _motor4_data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _motor5_data
     (setq _motor5_data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _motor6_data
     (setq _motor6_data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get h_robix_control::SetGroupMotorData :md5sum-) "d24f6d6ff0914be0afb7864c32f01a60")
(setf (get h_robix_control::SetGroupMotorData :datatype-) "h_robix_control/SetGroupMotorData")
(setf (get h_robix_control::SetGroupMotorData :definition-)
      "uint8 motor1_id
uint8 motor2_id
uint8 motor3_id
uint8 motor4_id
uint8 motor5_id
uint8 motor6_id
string data_required
int32 motor1_data
int32 motor2_data
int32 motor3_data
int32 motor4_data
int32 motor5_data
int32 motor6_data

")



(provide :h_robix_control/SetGroupMotorData "d24f6d6ff0914be0afb7864c32f01a60")


