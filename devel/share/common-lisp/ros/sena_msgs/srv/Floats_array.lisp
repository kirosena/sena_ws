; Auto-generated. Do not edit!


(cl:in-package sena_msgs-srv)


;//! \htmlinclude Floats_array-request.msg.html

(cl:defclass <Floats_array-request> (roslisp-msg-protocol:ros-message)
  ((req
    :reader req
    :initarg :req
    :type cl:float
    :initform 0.0))
)

(cl:defclass Floats_array-request (<Floats_array-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Floats_array-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Floats_array-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sena_msgs-srv:<Floats_array-request> is deprecated: use sena_msgs-srv:Floats_array-request instead.")))

(cl:ensure-generic-function 'req-val :lambda-list '(m))
(cl:defmethod req-val ((m <Floats_array-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sena_msgs-srv:req-val is deprecated.  Use sena_msgs-srv:req instead.")
  (req m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Floats_array-request>) ostream)
  "Serializes a message object of type '<Floats_array-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'req))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Floats_array-request>) istream)
  "Deserializes a message object of type '<Floats_array-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'req) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Floats_array-request>)))
  "Returns string type for a service object of type '<Floats_array-request>"
  "sena_msgs/Floats_arrayRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Floats_array-request)))
  "Returns string type for a service object of type 'Floats_array-request"
  "sena_msgs/Floats_arrayRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Floats_array-request>)))
  "Returns md5sum for a message object of type '<Floats_array-request>"
  "086e0a6631d243c06d9ccfa024bfe376")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Floats_array-request)))
  "Returns md5sum for a message object of type 'Floats_array-request"
  "086e0a6631d243c06d9ccfa024bfe376")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Floats_array-request>)))
  "Returns full string definition for message of type '<Floats_array-request>"
  (cl:format cl:nil "float32 req~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Floats_array-request)))
  "Returns full string definition for message of type 'Floats_array-request"
  (cl:format cl:nil "float32 req~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Floats_array-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Floats_array-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Floats_array-request
    (cl:cons ':req (req msg))
))
;//! \htmlinclude Floats_array-response.msg.html

(cl:defclass <Floats_array-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Floats_array-response (<Floats_array-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Floats_array-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Floats_array-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sena_msgs-srv:<Floats_array-response> is deprecated: use sena_msgs-srv:Floats_array-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <Floats_array-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sena_msgs-srv:res-val is deprecated.  Use sena_msgs-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Floats_array-response>) ostream)
  "Serializes a message object of type '<Floats_array-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'res))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'res))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Floats_array-response>) istream)
  "Deserializes a message object of type '<Floats_array-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'res) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'res)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Floats_array-response>)))
  "Returns string type for a service object of type '<Floats_array-response>"
  "sena_msgs/Floats_arrayResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Floats_array-response)))
  "Returns string type for a service object of type 'Floats_array-response"
  "sena_msgs/Floats_arrayResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Floats_array-response>)))
  "Returns md5sum for a message object of type '<Floats_array-response>"
  "086e0a6631d243c06d9ccfa024bfe376")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Floats_array-response)))
  "Returns md5sum for a message object of type 'Floats_array-response"
  "086e0a6631d243c06d9ccfa024bfe376")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Floats_array-response>)))
  "Returns full string definition for message of type '<Floats_array-response>"
  (cl:format cl:nil "float32[] res~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Floats_array-response)))
  "Returns full string definition for message of type 'Floats_array-response"
  (cl:format cl:nil "float32[] res~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Floats_array-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'res) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Floats_array-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Floats_array-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Floats_array)))
  'Floats_array-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Floats_array)))
  'Floats_array-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Floats_array)))
  "Returns string type for a service object of type '<Floats_array>"
  "sena_msgs/Floats_array")