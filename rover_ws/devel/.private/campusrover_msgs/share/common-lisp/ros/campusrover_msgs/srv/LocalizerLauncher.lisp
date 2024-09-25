; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude LocalizerLauncher-request.msg.html

(cl:defclass <LocalizerLauncher-request> (roslisp-msg-protocol:ros-message)
  ((localizer
    :reader localizer
    :initarg :localizer
    :type cl:fixnum
    :initform 0)
   (map_file
    :reader map_file
    :initarg :map_file
    :type cl:string
    :initform ""))
)

(cl:defclass LocalizerLauncher-request (<LocalizerLauncher-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalizerLauncher-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalizerLauncher-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<LocalizerLauncher-request> is deprecated: use campusrover_msgs-srv:LocalizerLauncher-request instead.")))

(cl:ensure-generic-function 'localizer-val :lambda-list '(m))
(cl:defmethod localizer-val ((m <LocalizerLauncher-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:localizer-val is deprecated.  Use campusrover_msgs-srv:localizer instead.")
  (localizer m))

(cl:ensure-generic-function 'map_file-val :lambda-list '(m))
(cl:defmethod map_file-val ((m <LocalizerLauncher-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:map_file-val is deprecated.  Use campusrover_msgs-srv:map_file instead.")
  (map_file m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LocalizerLauncher-request>)))
    "Constants for message type '<LocalizerLauncher-request>"
  '((:LOCOLIZAR_2D_VLP16_ODOM . 0)
    (:LOCOLIZAR_2D_HOKUYO_ODOM . 1)
    (:LOCOLIZAR_2D_YD_ODOM . 2)
    (:LOCOLIZAR_2D_YD_SCAN_MATCHING . 3)
    (:LOCOLIZAR_3D_VLP16_ODOM . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LocalizerLauncher-request)))
    "Constants for message type 'LocalizerLauncher-request"
  '((:LOCOLIZAR_2D_VLP16_ODOM . 0)
    (:LOCOLIZAR_2D_HOKUYO_ODOM . 1)
    (:LOCOLIZAR_2D_YD_ODOM . 2)
    (:LOCOLIZAR_2D_YD_SCAN_MATCHING . 3)
    (:LOCOLIZAR_3D_VLP16_ODOM . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalizerLauncher-request>) ostream)
  "Serializes a message object of type '<LocalizerLauncher-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'localizer)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_file))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_file))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalizerLauncher-request>) istream)
  "Deserializes a message object of type '<LocalizerLauncher-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'localizer)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_file) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_file) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalizerLauncher-request>)))
  "Returns string type for a service object of type '<LocalizerLauncher-request>"
  "campusrover_msgs/LocalizerLauncherRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalizerLauncher-request)))
  "Returns string type for a service object of type 'LocalizerLauncher-request"
  "campusrover_msgs/LocalizerLauncherRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalizerLauncher-request>)))
  "Returns md5sum for a message object of type '<LocalizerLauncher-request>"
  "8eb55704262cb8d370c8eac127c46d76")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalizerLauncher-request)))
  "Returns md5sum for a message object of type 'LocalizerLauncher-request"
  "8eb55704262cb8d370c8eac127c46d76")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalizerLauncher-request>)))
  "Returns full string definition for message of type '<LocalizerLauncher-request>"
  (cl:format cl:nil "uint8 LOCOLIZAR_2D_VLP16_ODOM=0~%uint8 LOCOLIZAR_2D_HOKUYO_ODOM=1~%uint8 LOCOLIZAR_2D_YD_ODOM=2~%uint8 LOCOLIZAR_2D_YD_SCAN_MATCHING=3~%uint8 LOCOLIZAR_3D_VLP16_ODOM=4~%~%uint8 localizer~%string map_file~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalizerLauncher-request)))
  "Returns full string definition for message of type 'LocalizerLauncher-request"
  (cl:format cl:nil "uint8 LOCOLIZAR_2D_VLP16_ODOM=0~%uint8 LOCOLIZAR_2D_HOKUYO_ODOM=1~%uint8 LOCOLIZAR_2D_YD_ODOM=2~%uint8 LOCOLIZAR_2D_YD_SCAN_MATCHING=3~%uint8 LOCOLIZAR_3D_VLP16_ODOM=4~%~%uint8 localizer~%string map_file~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalizerLauncher-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'map_file))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalizerLauncher-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalizerLauncher-request
    (cl:cons ':localizer (localizer msg))
    (cl:cons ':map_file (map_file msg))
))
;//! \htmlinclude LocalizerLauncher-response.msg.html

(cl:defclass <LocalizerLauncher-response> (roslisp-msg-protocol:ros-message)
  ((pid
    :reader pid
    :initarg :pid
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LocalizerLauncher-response (<LocalizerLauncher-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalizerLauncher-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalizerLauncher-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<LocalizerLauncher-response> is deprecated: use campusrover_msgs-srv:LocalizerLauncher-response instead.")))

(cl:ensure-generic-function 'pid-val :lambda-list '(m))
(cl:defmethod pid-val ((m <LocalizerLauncher-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:pid-val is deprecated.  Use campusrover_msgs-srv:pid instead.")
  (pid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalizerLauncher-response>) ostream)
  "Serializes a message object of type '<LocalizerLauncher-response>"
  (cl:let* ((signed (cl:slot-value msg 'pid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalizerLauncher-response>) istream)
  "Deserializes a message object of type '<LocalizerLauncher-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pid) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalizerLauncher-response>)))
  "Returns string type for a service object of type '<LocalizerLauncher-response>"
  "campusrover_msgs/LocalizerLauncherResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalizerLauncher-response)))
  "Returns string type for a service object of type 'LocalizerLauncher-response"
  "campusrover_msgs/LocalizerLauncherResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalizerLauncher-response>)))
  "Returns md5sum for a message object of type '<LocalizerLauncher-response>"
  "8eb55704262cb8d370c8eac127c46d76")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalizerLauncher-response)))
  "Returns md5sum for a message object of type 'LocalizerLauncher-response"
  "8eb55704262cb8d370c8eac127c46d76")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalizerLauncher-response>)))
  "Returns full string definition for message of type '<LocalizerLauncher-response>"
  (cl:format cl:nil "int16 pid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalizerLauncher-response)))
  "Returns full string definition for message of type 'LocalizerLauncher-response"
  (cl:format cl:nil "int16 pid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalizerLauncher-response>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalizerLauncher-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalizerLauncher-response
    (cl:cons ':pid (pid msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LocalizerLauncher)))
  'LocalizerLauncher-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LocalizerLauncher)))
  'LocalizerLauncher-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalizerLauncher)))
  "Returns string type for a service object of type '<LocalizerLauncher>"
  "campusrover_msgs/LocalizerLauncher")