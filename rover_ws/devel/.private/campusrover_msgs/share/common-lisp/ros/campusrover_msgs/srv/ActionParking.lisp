; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude ActionParking-request.msg.html

(cl:defclass <ActionParking-request> (roslisp-msg-protocol:ros-message)
  ((control_mode
    :reader control_mode
    :initarg :control_mode
    :type cl:fixnum
    :initform 0)
   (max_linear_vel
    :reader max_linear_vel
    :initarg :max_linear_vel
    :type cl:float
    :initform 0.0)
   (max_angular_vel
    :reader max_angular_vel
    :initarg :max_angular_vel
    :type cl:float
    :initform 0.0))
)

(cl:defclass ActionParking-request (<ActionParking-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActionParking-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActionParking-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ActionParking-request> is deprecated: use campusrover_msgs-srv:ActionParking-request instead.")))

(cl:ensure-generic-function 'control_mode-val :lambda-list '(m))
(cl:defmethod control_mode-val ((m <ActionParking-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:control_mode-val is deprecated.  Use campusrover_msgs-srv:control_mode instead.")
  (control_mode m))

(cl:ensure-generic-function 'max_linear_vel-val :lambda-list '(m))
(cl:defmethod max_linear_vel-val ((m <ActionParking-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:max_linear_vel-val is deprecated.  Use campusrover_msgs-srv:max_linear_vel instead.")
  (max_linear_vel m))

(cl:ensure-generic-function 'max_angular_vel-val :lambda-list '(m))
(cl:defmethod max_angular_vel-val ((m <ActionParking-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:max_angular_vel-val is deprecated.  Use campusrover_msgs-srv:max_angular_vel instead.")
  (max_angular_vel m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ActionParking-request>)))
    "Constants for message type '<ActionParking-request>"
  '((:CONTROL_MODE_DEFAULT . 0)
    (:CONTROL_MODE_PID . 1)
    (:CONTROL_MODE_REVERSE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ActionParking-request)))
    "Constants for message type 'ActionParking-request"
  '((:CONTROL_MODE_DEFAULT . 0)
    (:CONTROL_MODE_PID . 1)
    (:CONTROL_MODE_REVERSE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActionParking-request>) ostream)
  "Serializes a message object of type '<ActionParking-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_mode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_linear_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_angular_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActionParking-request>) istream)
  "Deserializes a message object of type '<ActionParking-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_mode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_linear_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_angular_vel) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActionParking-request>)))
  "Returns string type for a service object of type '<ActionParking-request>"
  "campusrover_msgs/ActionParkingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionParking-request)))
  "Returns string type for a service object of type 'ActionParking-request"
  "campusrover_msgs/ActionParkingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActionParking-request>)))
  "Returns md5sum for a message object of type '<ActionParking-request>"
  "b2141ab3a90aab97223754872a3f8193")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActionParking-request)))
  "Returns md5sum for a message object of type 'ActionParking-request"
  "b2141ab3a90aab97223754872a3f8193")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActionParking-request>)))
  "Returns full string definition for message of type '<ActionParking-request>"
  (cl:format cl:nil "uint8 CONTROL_MODE_DEFAULT=0~%uint8 CONTROL_MODE_PID=1~%uint8 CONTROL_MODE_REVERSE=2~%uint8 control_mode~%float32 max_linear_vel~%float32 max_angular_vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActionParking-request)))
  "Returns full string definition for message of type 'ActionParking-request"
  (cl:format cl:nil "uint8 CONTROL_MODE_DEFAULT=0~%uint8 CONTROL_MODE_PID=1~%uint8 CONTROL_MODE_REVERSE=2~%uint8 control_mode~%float32 max_linear_vel~%float32 max_angular_vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActionParking-request>))
  (cl:+ 0
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActionParking-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ActionParking-request
    (cl:cons ':control_mode (control_mode msg))
    (cl:cons ':max_linear_vel (max_linear_vel msg))
    (cl:cons ':max_angular_vel (max_angular_vel msg))
))
;//! \htmlinclude ActionParking-response.msg.html

(cl:defclass <ActionParking-response> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass ActionParking-response (<ActionParking-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActionParking-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActionParking-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ActionParking-response> is deprecated: use campusrover_msgs-srv:ActionParking-response instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <ActionParking-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:msg-val is deprecated.  Use campusrover_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActionParking-response>) ostream)
  "Serializes a message object of type '<ActionParking-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActionParking-response>) istream)
  "Deserializes a message object of type '<ActionParking-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActionParking-response>)))
  "Returns string type for a service object of type '<ActionParking-response>"
  "campusrover_msgs/ActionParkingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionParking-response)))
  "Returns string type for a service object of type 'ActionParking-response"
  "campusrover_msgs/ActionParkingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActionParking-response>)))
  "Returns md5sum for a message object of type '<ActionParking-response>"
  "b2141ab3a90aab97223754872a3f8193")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActionParking-response)))
  "Returns md5sum for a message object of type 'ActionParking-response"
  "b2141ab3a90aab97223754872a3f8193")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActionParking-response>)))
  "Returns full string definition for message of type '<ActionParking-response>"
  (cl:format cl:nil "string msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActionParking-response)))
  "Returns full string definition for message of type 'ActionParking-response"
  (cl:format cl:nil "string msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActionParking-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActionParking-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ActionParking-response
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ActionParking)))
  'ActionParking-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ActionParking)))
  'ActionParking-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionParking)))
  "Returns string type for a service object of type '<ActionParking>"
  "campusrover_msgs/ActionParking")