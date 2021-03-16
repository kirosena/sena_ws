;; Auto-generated. Do not edit!


(when (boundp 'sena_msgs::PPoint)
  (if (not (find-package "SENA_MSGS"))
    (make-package "SENA_MSGS"))
  (shadow 'PPoint (find-package "SENA_MSGS")))
(unless (find-package "SENA_MSGS::PPOINT")
  (make-package "SENA_MSGS::PPOINT"))

(in-package "ROS")
;;//! \htmlinclude PPoint.msg.html


(defclass sena_msgs::PPoint
  :super ros::object
  :slots (_angle _radius ))

(defmethod sena_msgs::PPoint
  (:init
   (&key
    ((:angle __angle) 0.0)
    ((:radius __radius) 0.0)
    )
   (send-super :init)
   (setq _angle (float __angle))
   (setq _radius (float __radius))
   self)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:serialization-length
   ()
   (+
    ;; float32 _angle
    4
    ;; float32 _radius
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sena_msgs::PPoint :md5sum-) "29d7d0dfcbdb558f82b1c2caff948161")
(setf (get sena_msgs::PPoint :datatype-) "sena_msgs/PPoint")
(setf (get sena_msgs::PPoint :definition-)
      "float32 angle
float32 radius

")



(provide :sena_msgs/PPoint "29d7d0dfcbdb558f82b1c2caff948161")


