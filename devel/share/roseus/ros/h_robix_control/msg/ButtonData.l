;; Auto-generated. Do not edit!


(when (boundp 'h_robix_control::ButtonData)
  (if (not (find-package "H_ROBIX_CONTROL"))
    (make-package "H_ROBIX_CONTROL"))
  (shadow 'ButtonData (find-package "H_ROBIX_CONTROL")))
(unless (find-package "H_ROBIX_CONTROL::BUTTONDATA")
  (make-package "H_ROBIX_CONTROL::BUTTONDATA"))

(in-package "ROS")
;;//! \htmlinclude ButtonData.msg.html


(defclass h_robix_control::ButtonData
  :super ros::object
  :slots (_right_front_leg _right_middle_leg _right_back_leg _left_front_leg _left_middle_leg _left_back_leg ))

(defmethod h_robix_control::ButtonData
  (:init
   (&key
    ((:right_front_leg __right_front_leg) nil)
    ((:right_middle_leg __right_middle_leg) nil)
    ((:right_back_leg __right_back_leg) nil)
    ((:left_front_leg __left_front_leg) nil)
    ((:left_middle_leg __left_middle_leg) nil)
    ((:left_back_leg __left_back_leg) nil)
    )
   (send-super :init)
   (setq _right_front_leg __right_front_leg)
   (setq _right_middle_leg __right_middle_leg)
   (setq _right_back_leg __right_back_leg)
   (setq _left_front_leg __left_front_leg)
   (setq _left_middle_leg __left_middle_leg)
   (setq _left_back_leg __left_back_leg)
   self)
  (:right_front_leg
   (&optional (__right_front_leg :null))
   (if (not (eq __right_front_leg :null)) (setq _right_front_leg __right_front_leg)) _right_front_leg)
  (:right_middle_leg
   (&optional (__right_middle_leg :null))
   (if (not (eq __right_middle_leg :null)) (setq _right_middle_leg __right_middle_leg)) _right_middle_leg)
  (:right_back_leg
   (&optional (__right_back_leg :null))
   (if (not (eq __right_back_leg :null)) (setq _right_back_leg __right_back_leg)) _right_back_leg)
  (:left_front_leg
   (&optional (__left_front_leg :null))
   (if (not (eq __left_front_leg :null)) (setq _left_front_leg __left_front_leg)) _left_front_leg)
  (:left_middle_leg
   (&optional (__left_middle_leg :null))
   (if (not (eq __left_middle_leg :null)) (setq _left_middle_leg __left_middle_leg)) _left_middle_leg)
  (:left_back_leg
   (&optional (__left_back_leg :null))
   (if (not (eq __left_back_leg :null)) (setq _left_back_leg __left_back_leg)) _left_back_leg)
  (:serialization-length
   ()
   (+
    ;; bool _right_front_leg
    1
    ;; bool _right_middle_leg
    1
    ;; bool _right_back_leg
    1
    ;; bool _left_front_leg
    1
    ;; bool _left_middle_leg
    1
    ;; bool _left_back_leg
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _right_front_leg
       (if _right_front_leg (write-byte -1 s) (write-byte 0 s))
     ;; bool _right_middle_leg
       (if _right_middle_leg (write-byte -1 s) (write-byte 0 s))
     ;; bool _right_back_leg
       (if _right_back_leg (write-byte -1 s) (write-byte 0 s))
     ;; bool _left_front_leg
       (if _left_front_leg (write-byte -1 s) (write-byte 0 s))
     ;; bool _left_middle_leg
       (if _left_middle_leg (write-byte -1 s) (write-byte 0 s))
     ;; bool _left_back_leg
       (if _left_back_leg (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _right_front_leg
     (setq _right_front_leg (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _right_middle_leg
     (setq _right_middle_leg (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _right_back_leg
     (setq _right_back_leg (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _left_front_leg
     (setq _left_front_leg (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _left_middle_leg
     (setq _left_middle_leg (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _left_back_leg
     (setq _left_back_leg (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get h_robix_control::ButtonData :md5sum-) "374b4b2e2aa0d2e31b123b1290f7a442")
(setf (get h_robix_control::ButtonData :datatype-) "h_robix_control/ButtonData")
(setf (get h_robix_control::ButtonData :definition-)
      "bool right_front_leg
bool right_middle_leg
bool right_back_leg
bool left_front_leg
bool left_middle_leg
bool left_back_leg
")



(provide :h_robix_control/ButtonData "374b4b2e2aa0d2e31b123b1290f7a442")


