;; Auto-generated. Do not edit!


(when (boundp 'sena_msgs::VelCmd)
  (if (not (find-package "SENA_MSGS"))
    (make-package "SENA_MSGS"))
  (shadow 'VelCmd (find-package "SENA_MSGS")))
(unless (find-package "SENA_MSGS::VELCMD")
  (make-package "SENA_MSGS::VELCMD"))

(in-package "ROS")
;;//! \htmlinclude VelCmd.msg.html


(defclass sena_msgs::VelCmd
  :super ros::object
  :slots (_Vx _Vy _w ))

(defmethod sena_msgs::VelCmd
  (:init
   (&key
    ((:Vx __Vx) 0.0)
    ((:Vy __Vy) 0.0)
    ((:w __w) 0.0)
    )
   (send-super :init)
   (setq _Vx (float __Vx))
   (setq _Vy (float __Vy))
   (setq _w (float __w))
   self)
  (:Vx
   (&optional __Vx)
   (if __Vx (setq _Vx __Vx)) _Vx)
  (:Vy
   (&optional __Vy)
   (if __Vy (setq _Vy __Vy)) _Vy)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:serialization-length
   ()
   (+
    ;; float32 _Vx
    4
    ;; float32 _Vy
    4
    ;; float32 _w
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _Vx
       (sys::poke _Vx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Vy
       (sys::poke _Vy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _w
       (sys::poke _w (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _Vx
     (setq _Vx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Vy
     (setq _Vy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _w
     (setq _w (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sena_msgs::VelCmd :md5sum-) "914217797e9c6227112d1ec2a4b462eb")
(setf (get sena_msgs::VelCmd :datatype-) "sena_msgs/VelCmd")
(setf (get sena_msgs::VelCmd :definition-)
      "float32 Vx
float32 Vy
float32 w

")



(provide :sena_msgs/VelCmd "914217797e9c6227112d1ec2a4b462eb")


