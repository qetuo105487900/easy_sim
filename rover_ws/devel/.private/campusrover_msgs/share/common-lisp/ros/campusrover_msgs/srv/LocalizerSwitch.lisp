; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude LocalizerSwitch-request.msg.html

(cl:defclass <LocalizerSwitch-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (building
    :reader building
    :initarg :building
    :type cl:string
    :initform "")
   (floor
    :reader floor
    :initarg :floor
    :type cl:string
    :initform "")
   (init_point
    :reader init_point
    :initarg :init_point
    :type cl:string
    :initform ""))
)

(cl:defclass LocalizerSwitch-request (<LocalizerSwitch-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalizerSwitch-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalizerSwitch-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<LocalizerSwitch-request> is deprecated: use campusrover_msgs-srv:LocalizerSwitch-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <LocalizerSwitch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:mode-val is deprecated.  Use campusrover_msgs-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'building-val :lambda-list '(m))
(cl:defmethod building-val ((m <LocalizerSwitch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:building-val is deprecated.  Use campusrover_msgs-srv:building instead.")
  (building m))

(cl:ensure-generic-function 'floor-val :lambda-list '(m))
(cl:defmethod floor-val ((m <LocalizerSwitch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:floor-val is deprecated.  Use campusrover_msgs-srv:floor instead.")
  (floor m))

(cl:ensure-generic-function 'init_point-val :lambda-list '(m))
(cl:defmethod init_point-val ((m <LocalizerSwitch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:init_point-val is deprecated.  Use campusrover_msgs-srv:init_point instead.")
  (init_point m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LocalizerSwitch-request>)))
    "Constants for message type '<LocalizerSwitch-request>"
  '((:MODE_DISABLE . 0)
    (:MODE_ENABLE . 1)
    (:MODE_PURE_2D_SCANMATCHING . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LocalizerSwitch-request)))
    "Constants for message type 'LocalizerSwitch-request"
  '((:MODE_DISABLE . 0)
    (:MODE_ENABLE . 1)
    (:MODE_PURE_2D_SCANMATCHING . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalizerSwitch-request>) ostream)
  "Serializes a message object of type '<LocalizerSwitch-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'building))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'building))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'floor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'floor))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'init_point))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'init_point))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalizerSwitch-request>) istream)
  "Deserializes a message object of type '<LocalizerSwitch-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'building) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'building) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'floor) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'floor) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'init_point) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'init_point) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalizerSwitch-request>)))
  "Returns string type for a service object of type '<LocalizerSwitch-request>"
  "campusrover_msgs/LocalizerSwitchRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalizerSwitch-request)))
  "Returns string type for a service object of type 'LocalizerSwitch-request"
  "campusrover_msgs/LocalizerSwitchRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalizerSwitch-request>)))
  "Returns md5sum for a message object of type '<LocalizerSwitch-request>"
  "a4fafa508ea4bd2a92362c5cfceeb827")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalizerSwitch-request)))
  "Returns md5sum for a message object of type 'LocalizerSwitch-request"
  "a4fafa508ea4bd2a92362c5cfceeb827")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalizerSwitch-request>)))
  "Returns full string definition for message of type '<LocalizerSwitch-request>"
  (cl:format cl:nil "uint8 MODE_DISABLE = 0~%uint8 MODE_ENABLE = 1~%uint8 MODE_PURE_2D_SCANMATCHING = 2~%~%uint8 mode~%string building~%string floor~%string init_point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalizerSwitch-request)))
  "Returns full string definition for message of type 'LocalizerSwitch-request"
  (cl:format cl:nil "uint8 MODE_DISABLE = 0~%uint8 MODE_ENABLE = 1~%uint8 MODE_PURE_2D_SCANMATCHING = 2~%~%uint8 mode~%string building~%string floor~%string init_point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalizerSwitch-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'building))
     4 (cl:length (cl:slot-value msg 'floor))
     4 (cl:length (cl:slot-value msg 'init_point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalizerSwitch-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalizerSwitch-request
    (cl:cons ':mode (mode msg))
    (cl:cons ':building (building msg))
    (cl:cons ':floor (floor msg))
    (cl:cons ':init_point (init_point msg))
))
;//! \htmlinclude LocalizerSwitch-response.msg.html

(cl:defclass <LocalizerSwitch-response> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass LocalizerSwitch-response (<LocalizerSwitch-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalizerSwitch-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalizerSwitch-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<LocalizerSwitch-response> is deprecated: use campusrover_msgs-srv:LocalizerSwitch-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <LocalizerSwitch-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:message-val is deprecated.  Use campusrover_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalizerSwitch-response>) ostream)
  "Serializes a message object of type '<LocalizerSwitch-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalizerSwitch-response>) istream)
  "Deserializes a message object of type '<LocalizerSwitch-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalizerSwitch-response>)))
  "Returns string type for a service object of type '<LocalizerSwitch-response>"
  "campusrover_msgs/LocalizerSwitchResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalizerSwitch-response)))
  "Returns string type for a service object of type 'LocalizerSwitch-response"
  "campusrover_msgs/LocalizerSwitchResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalizerSwitch-response>)))
  "Returns md5sum for a message object of type '<LocalizerSwitch-response>"
  "a4fafa508ea4bd2a92362c5cfceeb827")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalizerSwitch-response)))
  "Returns md5sum for a message object of type 'LocalizerSwitch-response"
  "a4fafa508ea4bd2a92362c5cfceeb827")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalizerSwitch-response>)))
  "Returns full string definition for message of type '<LocalizerSwitch-response>"
  (cl:format cl:nil "string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalizerSwitch-response)))
  "Returns full string definition for message of type 'LocalizerSwitch-response"
  (cl:format cl:nil "string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalizerSwitch-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalizerSwitch-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalizerSwitch-response
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LocalizerSwitch)))
  'LocalizerSwitch-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LocalizerSwitch)))
  'LocalizerSwitch-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalizerSwitch)))
  "Returns string type for a service object of type '<LocalizerSwitch>"
  "campusrover_msgs/LocalizerSwitch")