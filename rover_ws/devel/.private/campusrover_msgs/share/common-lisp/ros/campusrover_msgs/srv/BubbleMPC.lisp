; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude BubbleMPC-request.msg.html

(cl:defclass <BubbleMPC-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil)
   (robot_radius
    :reader robot_radius
    :initarg :robot_radius
    :type cl:float
    :initform 0.0)
   (away_dis
    :reader away_dis
    :initarg :away_dis
    :type cl:float
    :initform 0.0))
)

(cl:defclass BubbleMPC-request (<BubbleMPC-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BubbleMPC-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BubbleMPC-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<BubbleMPC-request> is deprecated: use campusrover_msgs-srv:BubbleMPC-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <BubbleMPC-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:enable-val is deprecated.  Use campusrover_msgs-srv:enable instead.")
  (enable m))

(cl:ensure-generic-function 'robot_radius-val :lambda-list '(m))
(cl:defmethod robot_radius-val ((m <BubbleMPC-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:robot_radius-val is deprecated.  Use campusrover_msgs-srv:robot_radius instead.")
  (robot_radius m))

(cl:ensure-generic-function 'away_dis-val :lambda-list '(m))
(cl:defmethod away_dis-val ((m <BubbleMPC-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:away_dis-val is deprecated.  Use campusrover_msgs-srv:away_dis instead.")
  (away_dis m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BubbleMPC-request>) ostream)
  "Serializes a message object of type '<BubbleMPC-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'robot_radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'away_dis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BubbleMPC-request>) istream)
  "Deserializes a message object of type '<BubbleMPC-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'robot_radius) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'away_dis) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BubbleMPC-request>)))
  "Returns string type for a service object of type '<BubbleMPC-request>"
  "campusrover_msgs/BubbleMPCRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BubbleMPC-request)))
  "Returns string type for a service object of type 'BubbleMPC-request"
  "campusrover_msgs/BubbleMPCRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BubbleMPC-request>)))
  "Returns md5sum for a message object of type '<BubbleMPC-request>"
  "5673ff572d37b8731f5b0a01e168ccd0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BubbleMPC-request)))
  "Returns md5sum for a message object of type 'BubbleMPC-request"
  "5673ff572d37b8731f5b0a01e168ccd0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BubbleMPC-request>)))
  "Returns full string definition for message of type '<BubbleMPC-request>"
  (cl:format cl:nil "bool enable~%float32 robot_radius~%float32 away_dis~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BubbleMPC-request)))
  "Returns full string definition for message of type 'BubbleMPC-request"
  (cl:format cl:nil "bool enable~%float32 robot_radius~%float32 away_dis~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BubbleMPC-request>))
  (cl:+ 0
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BubbleMPC-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BubbleMPC-request
    (cl:cons ':enable (enable msg))
    (cl:cons ':robot_radius (robot_radius msg))
    (cl:cons ':away_dis (away_dis msg))
))
;//! \htmlinclude BubbleMPC-response.msg.html

(cl:defclass <BubbleMPC-response> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass BubbleMPC-response (<BubbleMPC-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BubbleMPC-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BubbleMPC-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<BubbleMPC-response> is deprecated: use campusrover_msgs-srv:BubbleMPC-response instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <BubbleMPC-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:msg-val is deprecated.  Use campusrover_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BubbleMPC-response>) ostream)
  "Serializes a message object of type '<BubbleMPC-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BubbleMPC-response>) istream)
  "Deserializes a message object of type '<BubbleMPC-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BubbleMPC-response>)))
  "Returns string type for a service object of type '<BubbleMPC-response>"
  "campusrover_msgs/BubbleMPCResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BubbleMPC-response)))
  "Returns string type for a service object of type 'BubbleMPC-response"
  "campusrover_msgs/BubbleMPCResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BubbleMPC-response>)))
  "Returns md5sum for a message object of type '<BubbleMPC-response>"
  "5673ff572d37b8731f5b0a01e168ccd0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BubbleMPC-response)))
  "Returns md5sum for a message object of type 'BubbleMPC-response"
  "5673ff572d37b8731f5b0a01e168ccd0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BubbleMPC-response>)))
  "Returns full string definition for message of type '<BubbleMPC-response>"
  (cl:format cl:nil "string msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BubbleMPC-response)))
  "Returns full string definition for message of type 'BubbleMPC-response"
  (cl:format cl:nil "string msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BubbleMPC-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BubbleMPC-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BubbleMPC-response
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BubbleMPC)))
  'BubbleMPC-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BubbleMPC)))
  'BubbleMPC-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BubbleMPC)))
  "Returns string type for a service object of type '<BubbleMPC>"
  "campusrover_msgs/BubbleMPC")