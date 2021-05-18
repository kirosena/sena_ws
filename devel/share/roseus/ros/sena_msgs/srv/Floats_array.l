;; Auto-generated. Do not edit!


(when (boundp 'sena_msgs::Floats_array)
  (if (not (find-package "SENA_MSGS"))
    (make-package "SENA_MSGS"))
  (shadow 'Floats_array (find-package "SENA_MSGS")))
(unless (find-package "SENA_MSGS::FLOATS_ARRAY")
  (make-package "SENA_MSGS::FLOATS_ARRAY"))
(unless (find-package "SENA_MSGS::FLOATS_ARRAYREQUEST")
  (make-package "SENA_MSGS::FLOATS_ARRAYREQUEST"))
(unless (find-package "SENA_MSGS::FLOATS_ARRAYRESPONSE")
  (make-package "SENA_MSGS::FLOATS_ARRAYRESPONSE"))

(in-package "ROS")





(defclass sena_msgs::Floats_arrayRequest
  :super ros::object
  :slots (_req ))

(defmethod sena_msgs::Floats_arrayRequest
  (:init
   (&key
    ((:req __req) 0.0)
    )
   (send-super :init)
   (setq _req (float __req))
   self)
  (:req
   (&optional __req)
   (if __req (setq _req __req)) _req)
  (:serialization-length
   ()
   (+
    ;; float32 _req
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _req
       (sys::poke _req (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _req
     (setq _req (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass sena_msgs::Floats_arrayResponse
  :super ros::object
  :slots (_res ))

(defmethod sena_msgs::Floats_arrayResponse
  (:init
   (&key
    ((:res __res) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _res __res)
   self)
  (:res
   (&optional __res)
   (if __res (setq _res __res)) _res)
  (:serialization-length
   ()
   (+
    ;; float32[] _res
    (* 4    (length _res)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _res
     (write-long (length _res) s)
     (dotimes (i (length _res))
       (sys::poke (elt _res i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _res
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _res (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _res i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass sena_msgs::Floats_array
  :super ros::object
  :slots ())

(setf (get sena_msgs::Floats_array :md5sum-) "086e0a6631d243c06d9ccfa024bfe376")
(setf (get sena_msgs::Floats_array :datatype-) "sena_msgs/Floats_array")
(setf (get sena_msgs::Floats_array :request) sena_msgs::Floats_arrayRequest)
(setf (get sena_msgs::Floats_array :response) sena_msgs::Floats_arrayResponse)

(defmethod sena_msgs::Floats_arrayRequest
  (:response () (instance sena_msgs::Floats_arrayResponse :init)))

(setf (get sena_msgs::Floats_arrayRequest :md5sum-) "086e0a6631d243c06d9ccfa024bfe376")
(setf (get sena_msgs::Floats_arrayRequest :datatype-) "sena_msgs/Floats_arrayRequest")
(setf (get sena_msgs::Floats_arrayRequest :definition-)
      "float32 req
---
float32[] res

")

(setf (get sena_msgs::Floats_arrayResponse :md5sum-) "086e0a6631d243c06d9ccfa024bfe376")
(setf (get sena_msgs::Floats_arrayResponse :datatype-) "sena_msgs/Floats_arrayResponse")
(setf (get sena_msgs::Floats_arrayResponse :definition-)
      "float32 req
---
float32[] res

")



(provide :sena_msgs/Floats_array "086e0a6631d243c06d9ccfa024bfe376")


