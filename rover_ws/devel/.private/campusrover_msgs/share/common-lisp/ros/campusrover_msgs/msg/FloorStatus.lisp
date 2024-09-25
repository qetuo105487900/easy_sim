; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-msg)


;//! \htmlinclude FloorStatus.msg.html

(cl:defclass <FloorStatus> (roslisp-msg-protocol:ros-message)
  ((init_pressure
    :reader init_pressure
    :initarg :init_pressure
    :type cl:integer
    :initform 0)
   (init_floor
    :reader init_floor
    :initarg :init_floor
    :type cl:integer
    :initform 0)
   (current_pressure
    :reader current_pressure
    :initarg :current_pressure
    :type cl:integer
    :initform 0)
   (current_floor
    :reader current_floor
    :initarg :current_floor
    :type cl:integer
    :initform 0))
)

(cl:defclass FloorStatus (<FloorStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FloorStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FloorStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-msg:<FloorStatus> is deprecated: use campusrover_msgs-msg:FloorStatus instead.")))

(cl:ensure-generic-function 'init_pressure-val :lambda-list '(m))
(cl:defmethod init_pressure-val ((m <FloorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:init_pressure-val is deprecated.  Use campusrover_msgs-msg:init_pressure instead.")
  (init_pressure m))

(cl:ensure-generic-function 'init_floor-val :lambda-list '(m))
(cl:defmethod init_floor-val ((m <FloorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:init_floor-val is deprecated.  Use campusrover_msgs-msg:init_floor instead.")
  (init_floor m))

(cl:ensure-generic-function 'current_pressure-val :lambda-list '(m))
(cl:defmethod current_pressure-val ((m <FloorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:current_pressure-val is deprecated.  Use campusrover_msgs-msg:current_pressure instead.")
  (current_pressure m))

(cl:ensure-generic-function 'current_floor-val :lambda-list '(m))
(cl:defmethod current_floor-val ((m <FloorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:current_floor-val is deprecated.  Use campusrover_msgs-msg:current_floor instead.")
  (current_floor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FloorStatus>) ostream)
  "Serializes a message object of type '<FloorStatus>"
  (cl:let* ((signed (cl:slot-value msg 'init_pressure)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'init_floor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'current_pressure)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'current_floor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FloorStatus>) istream)
  "Deserializes a message object of type '<FloorStatus>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'init_pressure) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'init_floor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_pressure) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_floor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FloorStatus>)))
  "Returns string type for a message object of type '<FloorStatus>"
  "campusrover_msgs/FloorStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FloorStatus)))
  "Returns string type for a message object of type 'FloorStatus"
  "campusrover_msgs/FloorStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FloorStatus>)))
  "Returns md5sum for a message object of type '<FloorStatus>"
  "50c989e719e41082ae566a766279d8c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FloorStatus)))
  "Returns md5sum for a message object of type 'FloorStatus"
  "50c989e719e41082ae566a766279d8c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FloorStatus>)))
  "Returns full string definition for message of type '<FloorStatus>"
  (cl:format cl:nil "int32 init_pressure~%int32 init_floor~%int32 current_pressure~%int32 current_floor~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FloorStatus)))
  "Returns full string definition for message of type 'FloorStatus"
  (cl:format cl:nil "int32 init_pressure~%int32 init_floor~%int32 current_pressure~%int32 current_floor~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FloorStatus>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FloorStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'FloorStatus
    (cl:cons ':init_pressure (init_pressure msg))
    (cl:cons ':init_floor (init_floor msg))
    (cl:cons ':current_pressure (current_pressure msg))
    (cl:cons ':current_floor (current_floor msg))
))
