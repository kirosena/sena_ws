;; Auto-generated. Do not edit!


(when (boundp 'sena_msgs::Velocity)
  (if (not (find-package "SENA_MSGS"))
    (make-package "SENA_MSGS"))
  (shadow 'Velocity (find-package "SENA_MSGS")))
(unless (find-package "SENA_MSGS::VELOCITY")
  (make-package "SENA_MSGS::VELOCITY"))

(in-package "ROS")
;;//! \htmlinclude Velocity.msg.html


(defclass sena_msgs::Velocity
  :super ros::object
  :slots (_v_left _v_right _v_back ))

(defmethod sena_msgs::Velocity
  (:init
   (&key
    ((:v_left __v_left) 0.0)
    ((:v_right __v_right) 0.0)
    ((:v_back __v_back) 0.0)
    )
   (send-super :init)
   (setq _v_left (float __v_left))
   (setq _v_right (float __v_right))
   (setq _v_back (float __v_back))
   self)
  (:v_left
   (&optional __v_left)
   (if __v_left (setq _v_left __v_left)) _v_left)
  (:v_right
   (&optional __v_right)
   (if __v_right (setq _v_right __v_right)) _v_right)
  (:v_back
   (&optional __v_back)
   (if __v_back (setq _v_back __v_back)) _v_back)
  (:serialization-length
   ()
   (+
    ;; float64 _v_left
    8
    ;; float64 _v_right
    8
    ;; float64 _v_back
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _v_left
       (sys::poke _v_left (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_right
       (sys::poke _v_right (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_back
       (sys::poke _v_back (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _v_left
     (setq _v_left (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_right
     (setq _v_right (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_back
     (setq _v_back (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get sena_msgs::Velocity :md5sum-) "f242f54cda2fad8ff062e66077f57b70")
(setf (get sena_msgs::Velocity :datatype-) "sena_msgs/Velocity")
(setf (get sena_msgs::Velocity :definition-)
      "float64 v_left
float64 v_right
float64 v_back

")



(provide :sena_msgs/Velocity "f242f54cda2fad8ff062e66077f57b70")


