; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude ActionCharging-request.msg.html

(cl:defclass <ActionCharging-request> (roslisp-msg-protocol:ros-message)
  ((location
    :reader location
    :initarg :location
    :type cl:string
    :initform "")
   (floor
    :reader floor
    :initarg :floor
    :type cl:integer
    :initform 0)
   (charging_pile_id
    :reader charging_pile_id
    :initarg :charging_pile_id
    :type cl:fixnum
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ActionCharging-request (<ActionCharging-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActionCharging-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActionCharging-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ActionCharging-request> is deprecated: use campusrover_msgs-srv:ActionCharging-request instead.")))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <ActionCharging-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:location-val is deprecated.  Use campusrover_msgs-srv:location instead.")
  (location m))

(cl:ensure-generic-function 'floor-val :lambda-list '(m))
(cl:defmethod floor-val ((m <ActionCharging-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:floor-val is deprecated.  Use campusrover_msgs-srv:floor instead.")
  (floor m))

(cl:ensure-generic-function 'charging_pile_id-val :lambda-list '(m))
(cl:defmethod charging_pile_id-val ((m <ActionCharging-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:charging_pile_id-val is deprecated.  Use campusrover_msgs-srv:charging_pile_id instead.")
  (charging_pile_id m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ActionCharging-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:status-val is deprecated.  Use campusrover_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ActionCharging-request>)))
    "Constants for message type '<ActionCharging-request>"
  '((:CONNECTING . 1)
    (:UNCONNECTING . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ActionCharging-request)))
    "Constants for message type 'ActionCharging-request"
  '((:CONNECTING . 1)
    (:UNCONNECTING . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActionCharging-request>) ostream)
  "Serializes a message object of type '<ActionCharging-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'location))
  (cl:let* ((signed (cl:slot-value msg 'floor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charging_pile_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActionCharging-request>) istream)
  "Deserializes a message object of type '<ActionCharging-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'location) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'location) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'floor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charging_pile_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActionCharging-request>)))
  "Returns string type for a service object of type '<ActionCharging-request>"
  "campusrover_msgs/ActionChargingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionCharging-request)))
  "Returns string type for a service object of type 'ActionCharging-request"
  "campusrover_msgs/ActionChargingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActionCharging-request>)))
  "Returns md5sum for a message object of type '<ActionCharging-request>"
  "5168c6de9ca46f7222d4c5d4011956cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActionCharging-request)))
  "Returns md5sum for a message object of type 'ActionCharging-request"
  "5168c6de9ca46f7222d4c5d4011956cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActionCharging-request>)))
  "Returns full string definition for message of type '<ActionCharging-request>"
  (cl:format cl:nil "uint8 CONNECTING=1~%uint8 UNCONNECTING=2~%string location~%int32 floor~%uint8 charging_pile_id~%uint8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActionCharging-request)))
  "Returns full string definition for message of type 'ActionCharging-request"
  (cl:format cl:nil "uint8 CONNECTING=1~%uint8 UNCONNECTING=2~%string location~%int32 floor~%uint8 charging_pile_id~%uint8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActionCharging-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'location))
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActionCharging-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ActionCharging-request
    (cl:cons ':location (location msg))
    (cl:cons ':floor (floor msg))
    (cl:cons ':charging_pile_id (charging_pile_id msg))
    (cl:cons ':status (status msg))
))
;//! \htmlinclude ActionCharging-response.msg.html

(cl:defclass <ActionCharging-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ActionCharging-response (<ActionCharging-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActionCharging-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActionCharging-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ActionCharging-response> is deprecated: use campusrover_msgs-srv:ActionCharging-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActionCharging-response>) ostream)
  "Serializes a message object of type '<ActionCharging-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActionCharging-response>) istream)
  "Deserializes a message object of type '<ActionCharging-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActionCharging-response>)))
  "Returns string type for a service object of type '<ActionCharging-response>"
  "campusrover_msgs/ActionChargingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionCharging-response)))
  "Returns string type for a service object of type 'ActionCharging-response"
  "campusrover_msgs/ActionChargingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActionCharging-response>)))
  "Returns md5sum for a message object of type '<ActionCharging-response>"
  "5168c6de9ca46f7222d4c5d4011956cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActionCharging-response)))
  "Returns md5sum for a message object of type 'ActionCharging-response"
  "5168c6de9ca46f7222d4c5d4011956cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActionCharging-response>)))
  "Returns full string definition for message of type '<ActionCharging-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActionCharging-response)))
  "Returns full string definition for message of type 'ActionCharging-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActionCharging-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActionCharging-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ActionCharging-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ActionCharging)))
  'ActionCharging-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ActionCharging)))
  'ActionCharging-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionCharging)))
  "Returns string type for a service object of type '<ActionCharging>"
  "campusrover_msgs/ActionCharging")