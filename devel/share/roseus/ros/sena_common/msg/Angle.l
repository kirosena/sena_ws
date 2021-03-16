;; Auto-generated. Do not edit!


(when (boundp 'sena_common::Angle)
  (if (not (find-package "SENA_COMMON"))
    (make-package "SENA_COMMON"))
  (shadow 'Angle (find-package "SENA_COMMON")))
(unless (find-package "SENA_COMMON::ANGLE")
  (make-package "SENA_COMMON::ANGLE"))

(in-package "ROS")
;;//! \htmlinclude Angle.msg.html


(defclass sena_common::Angle
  :super ros::object
  :slots (_theta ))

(defmethod sena_common::Angle
  (:init
   (&key
    ((:theta __theta) 0.0)
    )
   (send-super :init)
   (setq _theta (float __theta))
   self)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; float32 _theta
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sena_common::Angle :md5sum-) "7328b114b91e2487fcf12e1581a80145")
(setf (get sena_common::Angle :datatype-) "sena_common/Angle")
(setf (get sena_common::Angle :definition-)
      "float32 theta


")



(provide :sena_common/Angle "7328b114b91e2487fcf12e1581a80145")


