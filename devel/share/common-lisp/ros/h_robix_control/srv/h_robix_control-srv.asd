
(cl:in-package :asdf)

(defsystem "h_robix_control-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GetGroupMotorData" :depends-on ("_package_GetGroupMotorData"))
    (:file "_package_GetGroupMotorData" :depends-on ("_package"))
    (:file "GetPosition" :depends-on ("_package_GetPosition"))
    (:file "_package_GetPosition" :depends-on ("_package"))
  ))