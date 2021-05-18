;; Auto-generated. Do not edit!


(when (boundp 'sena_msgs::KinematicsInverse)
  (if (not (find-package "SENA_MSGS"))
    (make-package "SENA_MSGS"))
  (shadow 'KinematicsInverse (find-package "SENA_MSGS")))
(unless (find-package "SENA_MSGS::KINEMATICSINVERSE")
  (make-package "SENA_MSGS::KINEMATICSINVERSE"))
(unless (find-package "SENA_MSGS::KINEMATICSINVERSEREQUEST")
  (make-package "SENA_MSGS::KINEMATICSINVERSEREQUEST"))
(unless (find-package "SENA_MSGS::KINEMATICSINVERSERESPONSE")
  (make-package "SENA_MSGS::KINEMATICSINVERSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass sena_msgs::KinematicsInverseRequest
  :super ros::object
  :slots (_input ))

(defmethod sena_msgs::KinematicsInverseRequest
  (:init
   (&key
    ((:input __input) (instance geometry_msgs::Pose2D :init))
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
    ;; geometry_msgs/Pose2D _input
    (send _input :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose2D _input
       (send _input :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose2D _input
     (send _input :deserialize buf ptr-) (incf ptr- (send _input :serialization-length))
   ;;
   self)
  )

(defclass sena_msgs::KinematicsInverseResponse
  :super ros::object
  :slots (_output ))

(defmethod sena_msgs::KinematicsInverseResponse
  (:init
   (&key
    ((:output __output) (instance sena_msgs::Velocity :init))
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
    ;; sena_msgs/Velocity _output
    (send _output :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sena_msgs/Velocity _output
       (send _output :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sena_msgs/Velocity _output
     (send _output :deserialize buf ptr-) (incf ptr- (send _output :serialization-length))
   ;;
   self)
  )

(defclass sena_msgs::KinematicsInverse
  :super ros::object
  :slots ())

(setf (get sena_msgs::KinematicsInverse :md5sum-) "28edd23182264a435d8e5f00f1e42018")
(setf (get sena_msgs::KinematicsInverse :datatype-) "sena_msgs/KinematicsInverse")
(setf (get sena_msgs::KinematicsInverse :request) sena_msgs::KinematicsInverseRequest)
(setf (get sena_msgs::KinematicsInverse :response) sena_msgs::KinematicsInverseResponse)

(defmethod sena_msgs::KinematicsInverseRequest
  (:response () (instance sena_msgs::KinematicsInverseResponse :init)))

(setf (get sena_msgs::KinematicsInverseRequest :md5sum-) "28edd23182264a435d8e5f00f1e42018")
(setf (get sena_msgs::KinematicsInverseRequest :datatype-) "sena_msgs/KinematicsInverseRequest")
(setf (get sena_msgs::KinematicsInverseRequest :definition-)
      "geometry_msgs/Pose2D input

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
---
sena_msgs/Velocity output


================================================================================
MSG: sena_msgs/Velocity
float64 v_left
float64 v_right
float64 v_back
")

(setf (get sena_msgs::KinematicsInverseResponse :md5sum-) "28edd23182264a435d8e5f00f1e42018")
(setf (get sena_msgs::KinematicsInverseResponse :datatype-) "sena_msgs/KinematicsInverseResponse")
(setf (get sena_msgs::KinematicsInverseResponse :definition-)
      "geometry_msgs/Pose2D input

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
---
sena_msgs/Velocity output


================================================================================
MSG: sena_msgs/Velocity
float64 v_left
float64 v_right
float64 v_back
")



(provide :sena_msgs/KinematicsInverse "28edd23182264a435d8e5f00f1e42018")


