;; Auto-generated. Do not edit!


(when (boundp 'sena_common::FrontBallInfo)
  (if (not (find-package "SENA_COMMON"))
    (make-package "SENA_COMMON"))
  (shadow 'FrontBallInfo (find-package "SENA_COMMON")))
(unless (find-package "SENA_COMMON::FRONTBALLINFO")
  (make-package "SENA_COMMON::FRONTBALLINFO"))

(in-package "ROS")
;;//! \htmlinclude FrontBallInfo.msg.html


(defclass sena_common::FrontBallInfo
  :super ros::object
  :slots ())

(defmethod sena_common::FrontBallInfo
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get sena_common::FrontBallInfo :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get sena_common::FrontBallInfo :datatype-) "sena_common/FrontBallInfo")
(setf (get sena_common::FrontBallInfo :definition-)
      "
")



(provide :sena_common/FrontBallInfo "d41d8cd98f00b204e9800998ecf8427e")


