; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude demoPath-request.msg.html

(cl:defclass <demoPath-request> (roslisp-msg-protocol:ros-message)
  ((start_point
    :reader start_point
    :initarg :start_point
    :type cl:string
    :initform "")
   (end_point
    :reader end_point
    :initarg :end_point
    :type cl:string
    :initform ""))
)

(cl:defclass demoPath-request (<demoPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <demoPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'demoPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<demoPath-request> is deprecated: use campusrover_msgs-srv:demoPath-request instead.")))

(cl:ensure-generic-function 'start_point-val :lambda-list '(m))
(cl:defmethod start_point-val ((m <demoPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:start_point-val is deprecated.  Use campusrover_msgs-srv:start_point instead.")
  (start_point m))

(cl:ensure-generic-function 'end_point-val :lambda-list '(m))
(cl:defmethod end_point-val ((m <demoPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:end_point-val is deprecated.  Use campusrover_msgs-srv:end_point instead.")
  (end_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <demoPath-request>) ostream)
  "Serializes a message object of type '<demoPath-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'start_point))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'start_point))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'end_point))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'end_point))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <demoPath-request>) istream)
  "Deserializes a message object of type '<demoPath-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start_point) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'start_point) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'end_point) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'end_point) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<demoPath-request>)))
  "Returns string type for a service object of type '<demoPath-request>"
  "campusrover_msgs/demoPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'demoPath-request)))
  "Returns string type for a service object of type 'demoPath-request"
  "campusrover_msgs/demoPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<demoPath-request>)))
  "Returns md5sum for a message object of type '<demoPath-request>"
  "8bcb23441037678d1306415ad104d0ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'demoPath-request)))
  "Returns md5sum for a message object of type 'demoPath-request"
  "8bcb23441037678d1306415ad104d0ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<demoPath-request>)))
  "Returns full string definition for message of type '<demoPath-request>"
  (cl:format cl:nil "string start_point~%string end_point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'demoPath-request)))
  "Returns full string definition for message of type 'demoPath-request"
  (cl:format cl:nil "string start_point~%string end_point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <demoPath-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'start_point))
     4 (cl:length (cl:slot-value msg 'end_point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <demoPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'demoPath-request
    (cl:cons ':start_point (start_point msg))
    (cl:cons ':end_point (end_point msg))
))
;//! \htmlinclude demoPath-response.msg.html

(cl:defclass <demoPath-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass demoPath-response (<demoPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <demoPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'demoPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<demoPath-response> is deprecated: use campusrover_msgs-srv:demoPath-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <demoPath-response>) ostream)
  "Serializes a message object of type '<demoPath-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <demoPath-response>) istream)
  "Deserializes a message object of type '<demoPath-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<demoPath-response>)))
  "Returns string type for a service object of type '<demoPath-response>"
  "campusrover_msgs/demoPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'demoPath-response)))
  "Returns string type for a service object of type 'demoPath-response"
  "campusrover_msgs/demoPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<demoPath-response>)))
  "Returns md5sum for a message object of type '<demoPath-response>"
  "8bcb23441037678d1306415ad104d0ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'demoPath-response)))
  "Returns md5sum for a message object of type 'demoPath-response"
  "8bcb23441037678d1306415ad104d0ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<demoPath-response>)))
  "Returns full string definition for message of type '<demoPath-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'demoPath-response)))
  "Returns full string definition for message of type 'demoPath-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <demoPath-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <demoPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'demoPath-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'demoPath)))
  'demoPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'demoPath)))
  'demoPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'demoPath)))
  "Returns string type for a service object of type '<demoPath>"
  "campusrover_msgs/demoPath")