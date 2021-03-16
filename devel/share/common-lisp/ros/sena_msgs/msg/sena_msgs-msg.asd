
(cl:in-package :asdf)

(defsystem "sena_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Angle" :depends-on ("_package_Angle"))
    (:file "_package_Angle" :depends-on ("_package"))
    (:file "BallInfo" :depends-on ("_package_BallInfo"))
    (:file "_package_BallInfo" :depends-on ("_package"))
    (:file "MotorInfo" :depends-on ("_package_MotorInfo"))
    (:file "_package_MotorInfo" :depends-on ("_package"))
    (:file "OdomInfo" :depends-on ("_package_OdomInfo"))
    (:file "_package_OdomInfo" :depends-on ("_package"))
    (:file "OmniVisionInfo" :depends-on ("_package_OmniVisionInfo"))
    (:file "_package_OmniVisionInfo" :depends-on ("_package"))
    (:file "PPoint" :depends-on ("_package_PPoint"))
    (:file "_package_PPoint" :depends-on ("_package"))
    (:file "VelCmd" :depends-on ("_package_VelCmd"))
    (:file "_package_VelCmd" :depends-on ("_package"))
  ))