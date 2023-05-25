
(cl:in-package :asdf)

(defsystem "h_robix_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ButtonData" :depends-on ("_package_ButtonData"))
    (:file "_package_ButtonData" :depends-on ("_package"))
    (:file "SetGroupMotorData" :depends-on ("_package_SetGroupMotorData"))
    (:file "_package_SetGroupMotorData" :depends-on ("_package"))
  ))