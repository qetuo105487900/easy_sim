; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-msg)


;//! \htmlinclude FloorInfo.msg.html

(cl:defclass <FloorInfo> (roslisp-msg-protocol:ros-message)
  ((current_floor
    :reader current_floor
    :initarg :current_floor
    :type cl:integer
    :initform 0)
   (target_floor
    :reader target_floor
    :initarg :target_floor
    :type cl:integer
    :initform 0))
)

(cl:defclass FloorInfo (<FloorInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FloorInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FloorInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-msg:<FloorInfo> is deprecated: use campusrover_msgs-msg:FloorInfo instead.")))

(cl:ensure-generic-function 'current_floor-val :lambda-list '(m))
(cl:defmethod current_floor-val ((m <FloorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:current_floor-val is deprecated.  Use campusrover_msgs-msg:current_floor instead.")
  (current_floor m))

(cl:ensure-generic-function 'target_floor-val :lambda-list '(m))
(cl:defmethod target_floor-val ((m <FloorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:target_floor-val is deprecated.  Use campusrover_msgs-msg:target_floor instead.")
  (target_floor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FloorInfo>) ostream)
  "Serializes a message object of type '<FloorInfo>"
  (cl:let* ((signed (cl:slot-value msg 'current_floor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'target_floor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FloorInfo>) istream)
  "Deserializes a message object of type '<FloorInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_floor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_floor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FloorInfo>)))
  "Returns string type for a message object of type '<FloorInfo>"
  "campusrover_msgs/FloorInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FloorInfo)))
  "Returns string type for a message object of type 'FloorInfo"
  "campusrover_msgs/FloorInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FloorInfo>)))
  "Returns md5sum for a message object of type '<FloorInfo>"
  "51cf3c1c3025aae9deca720d6eb4681b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FloorInfo)))
  "Returns md5sum for a message object of type 'FloorInfo"
  "51cf3c1c3025aae9deca720d6eb4681b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FloorInfo>)))
  "Returns full string definition for message of type '<FloorInfo>"
  (cl:format cl:nil "int32 current_floor~%int32 target_floor~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FloorInfo)))
  "Returns full string definition for message of type 'FloorInfo"
  (cl:format cl:nil "int32 current_floor~%int32 target_floor~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FloorInfo>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FloorInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'FloorInfo
    (cl:cons ':current_floor (current_floor msg))
    (cl:cons ':target_floor (target_floor msg))
))
