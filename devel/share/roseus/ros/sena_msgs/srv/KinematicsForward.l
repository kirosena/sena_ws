;; Auto-generated. Do not edit!


(when (boundp 'sena_msgs::KinematicsForward)
  (if (not (find-package "SENA_MSGS"))
    (make-package "SENA_MSGS"))
  (shadow 'KinematicsForward (find-package "SENA_MSGS")))
(unless (find-package "SENA_MSGS::KINEMATICSFORWARD")
  (make-package "SENA_MSGS::KINEMATICSFORWARD"))
(unless (find-package "SENA_MSGS::KINEMATICSFORWARDREQUEST")
  (make-package "SENA_MSGS::KINEMATICSFORWARDREQUEST"))
(unless (find-package "SENA_MSGS::KINEMATICSFORWARDRESPONSE")
  (make-package "SENA_MSGS::KINEMATICSFORWARDRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass sena_msgs::KinematicsForwardRequest
  :super ros::object
  :slots (_input ))

(defmethod sena_msgs::KinematicsForwardRequest
  (:init
   (&key
    ((:input __input) (instance sena_msgs::Velocity :init))
    )
   (send-super :init)
   (setq _input __input)
   self)
  (:input
   (&rest __input)
   (if (keywordp (car __input))
       (send* _input __input)
     (progn
       (if __input (setq _input (car __input)))
       _input)))
  (:serialization-length
   ()
   (+
    ;; sena_msgs/Velocity _input
    (send _input :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sena_msgs/Velocity _input
       (send _input :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sena_msgs/Velocity _input
     (send _input :deserialize buf ptr-) (incf ptr- (send _input :serialization-length))
   ;;
   self)
  )

(defclass sena_msgs::KinematicsForwardResponse
  :super ros::object
  :slots (_output ))

(defmethod sena_msgs::KinematicsForwardResponse
  (:init
   (&key
    ((:output __output) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _output __output)
   self)
  (:output
   (&rest __output)
   (if (keywordp (car __output))
       (send* _output __output)
     (progn
       (if __output (setq _output (car __output)))
       _output)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose2D _output
    (send _output :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose2D _output
       (send _output :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose2D _output
     (send _output :deserialize buf ptr-) (incf ptr- (send _output :serialization-length))
   ;;
   self)
  )

(defclass sena_msgs::KinematicsForward
  :super ros::object
  :slots ())

(setf (get sena_msgs::KinematicsForward :md5sum-) "bf1862fd720e27b736dafd380ee1763b")
(setf (get sena_msgs::KinematicsForward :datatype-) "sena_msgs/KinematicsForward")
(setf (get sena_msgs::KinematicsForward :request) sena_msgs::KinematicsForwardRequest)
(setf (get sena_msgs::KinematicsForward :response) sena_msgs::KinematicsForwardResponse)

(defmethod sena_msgs::KinematicsForwardRequest
  (:response () (instance sena_msgs::KinematicsForwardResponse :init)))

(setf (get sena_msgs::KinematicsForwardRequest :md5sum-) "bf1862fd720e27b736dafd380ee1763b")
(setf (get sena_msgs::KinematicsForwardRequest :datatype-) "sena_msgs/KinematicsForwardRequest")
(setf (get sena_msgs::KinematicsForwardRequest :definition-)
      "sena_msgs/Velocity input

================================================================================
MSG: sena_msgs/Velocity
float64 v_left
float64 v_right
float64 v_back
---
geometry_msgs/Pose2D output



================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
")

(setf (get sena_msgs::KinematicsForwardResponse :md5sum-) "bf1862fd720e27b736dafd380ee1763b")
(setf (get sena_msgs::KinematicsForwardResponse :datatype-) "sena_msgs/KinematicsForwardResponse")
(setf (get sena_msgs::KinematicsForwardResponse :definition-)
      "sena_msgs/Velocity input

================================================================================
MSG: sena_msgs/Velocity
float64 v_left
float64 v_right
float64 v_back
---
geometry_msgs/Pose2D output



================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
")



(provide :sena_msgs/KinematicsForward "bf1862fd720e27b736dafd380ee1763b")


