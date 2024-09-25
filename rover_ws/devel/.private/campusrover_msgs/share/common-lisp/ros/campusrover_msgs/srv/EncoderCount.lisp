; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude EncoderCount-request.msg.html

(cl:defclass <EncoderCount-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EncoderCount-request (<EncoderCount-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EncoderCount-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EncoderCount-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<EncoderCount-request> is deprecated: use campusrover_msgs-srv:EncoderCount-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EncoderCount-request>) ostream)
  "Serializes a message object of type '<EncoderCount-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EncoderCount-request>) istream)
  "Deserializes a message object of type '<EncoderCount-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EncoderCount-request>)))
  "Returns string type for a service object of type '<EncoderCount-request>"
  "campusrover_msgs/EncoderCountRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EncoderCount-request)))
  "Returns string type for a service object of type 'EncoderCount-request"
  "campusrover_msgs/EncoderCountRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EncoderCount-request>)))
  "Returns md5sum for a message object of type '<EncoderCount-request>"
  "310f2c2a4adfa0f8fc31fa2482448b81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EncoderCount-request)))
  "Returns md5sum for a message object of type 'EncoderCount-request"
  "310f2c2a4adfa0f8fc31fa2482448b81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EncoderCount-request>)))
  "Returns full string definition for message of type '<EncoderCount-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EncoderCount-request)))
  "Returns full string definition for message of type 'EncoderCount-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EncoderCount-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EncoderCount-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EncoderCount-request
))
;//! \htmlinclude EncoderCount-response.msg.html

(cl:defclass <EncoderCount-response> (roslisp-msg-protocol:ros-message)
  ((left_count
    :reader left_count
    :initarg :left_count
    :type cl:integer
    :initform 0)
   (right_count
    :reader right_count
    :initarg :right_count
    :type cl:integer
    :initform 0))
)

(cl:defclass EncoderCount-response (<EncoderCount-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EncoderCount-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EncoderCount-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<EncoderCount-response> is deprecated: use campusrover_msgs-srv:EncoderCount-response instead.")))

(cl:ensure-generic-function 'left_count-val :lambda-list '(m))
(cl:defmethod left_count-val ((m <EncoderCount-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:left_count-val is deprecated.  Use campusrover_msgs-srv:left_count instead.")
  (left_count m))

(cl:ensure-generic-function 'right_count-val :lambda-list '(m))
(cl:defmethod right_count-val ((m <EncoderCount-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:right_count-val is deprecated.  Use campusrover_msgs-srv:right_count instead.")
  (right_count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EncoderCount-response>) ostream)
  "Serializes a message object of type '<EncoderCount-response>"
  (cl:let* ((signed (cl:slot-value msg 'left_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'right_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EncoderCount-response>) istream)
  "Deserializes a message object of type '<EncoderCount-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_count) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right_count) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EncoderCount-response>)))
  "Returns string type for a service object of type '<EncoderCount-response>"
  "campusrover_msgs/EncoderCountResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EncoderCount-response)))
  "Returns string type for a service object of type 'EncoderCount-response"
  "campusrover_msgs/EncoderCountResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EncoderCount-response>)))
  "Returns md5sum for a message object of type '<EncoderCount-response>"
  "310f2c2a4adfa0f8fc31fa2482448b81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EncoderCount-response)))
  "Returns md5sum for a message object of type 'EncoderCount-response"
  "310f2c2a4adfa0f8fc31fa2482448b81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EncoderCount-response>)))
  "Returns full string definition for message of type '<EncoderCount-response>"
  (cl:format cl:nil "int64 left_count~%int64 right_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EncoderCount-response)))
  "Returns full string definition for message of type 'EncoderCount-response"
  (cl:format cl:nil "int64 left_count~%int64 right_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EncoderCount-response>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EncoderCount-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EncoderCount-response
    (cl:cons ':left_count (left_count msg))
    (cl:cons ':right_count (right_count msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EncoderCount)))
  'EncoderCount-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EncoderCount)))
  'EncoderCount-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EncoderCount)))
  "Returns string type for a service object of type '<EncoderCount>"
  "campusrover_msgs/EncoderCount")