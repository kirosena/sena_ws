
(cl:in-package :asdf)

(defsystem "sena_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "BallHandle" :depends-on ("_package_BallHandle"))
    (:file "_package_BallHandle" :depends-on ("_package"))
    (:file "Shoot" :depends-on ("_package_Shoot"))
    (:file "_package_Shoot" :depends-on ("_package"))
  ))