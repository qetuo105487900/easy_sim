; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-msg)


;//! \htmlinclude ElevatorInfo.msg.html

(cl:defclass <ElevatorInfo> (roslisp-msg-protocol:ros-message)
  ((building
    :reader building
    :initarg :building
    :type cl:string
    :initform "")
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (elevator_size
    :reader elevator_size
    :initarg :elevator_size
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (elevator_door_size
    :reader elevator_door_size
    :initarg :elevator_door_size
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (outside_button_position
    :reader outside_button_position
    :initarg :outside_button_position
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (inside_button_position
    :reader inside_button_position
    :initarg :inside_button_position
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass ElevatorInfo (<ElevatorInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElevatorInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElevatorInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-msg:<ElevatorInfo> is deprecated: use campusrover_msgs-msg:ElevatorInfo instead.")))

(cl:ensure-generic-function 'building-val :lambda-list '(m))
(cl:defmethod building-val ((m <ElevatorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:building-val is deprecated.  Use campusrover_msgs-msg:building instead.")
  (building m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ElevatorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:id-val is deprecated.  Use campusrover_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'elevator_size-val :lambda-list '(m))
(cl:defmethod elevator_size-val ((m <ElevatorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:elevator_size-val is deprecated.  Use campusrover_msgs-msg:elevator_size instead.")
  (elevator_size m))

(cl:ensure-generic-function 'elevator_door_size-val :lambda-list '(m))
(cl:defmethod elevator_door_size-val ((m <ElevatorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:elevator_door_size-val is deprecated.  Use campusrover_msgs-msg:elevator_door_size instead.")
  (elevator_door_size m))

(cl:ensure-generic-function 'outside_button_position-val :lambda-list '(m))
(cl:defmethod outside_button_position-val ((m <ElevatorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:outside_button_position-val is deprecated.  Use campusrover_msgs-msg:outside_button_position instead.")
  (outside_button_position m))

(cl:ensure-generic-function 'inside_button_position-val :lambda-list '(m))
(cl:defmethod inside_button_position-val ((m <ElevatorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:inside_button_position-val is deprecated.  Use campusrover_msgs-msg:inside_button_position instead.")
  (inside_button_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElevatorInfo>) ostream)
  "Serializes a message object of type '<ElevatorInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'building))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'building))
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'elevator_size) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'elevator_door_size) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'outside_button_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'inside_button_position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElevatorInfo>) istream)
  "Deserializes a message object of type '<ElevatorInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'building) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'building) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'elevator_size) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'elevator_door_size) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'outside_button_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'inside_button_position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElevatorInfo>)))
  "Returns string type for a message object of type '<ElevatorInfo>"
  "campusrover_msgs/ElevatorInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElevatorInfo)))
  "Returns string type for a message object of type 'ElevatorInfo"
  "campusrover_msgs/ElevatorInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElevatorInfo>)))
  "Returns md5sum for a message object of type '<ElevatorInfo>"
  "c883c73d006814a134d52feb5eae455e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElevatorInfo)))
  "Returns md5sum for a message object of type 'ElevatorInfo"
  "c883c73d006814a134d52feb5eae455e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElevatorInfo>)))
  "Returns full string definition for message of type '<ElevatorInfo>"
  (cl:format cl:nil "string building~%int64 id~%geometry_msgs/Point elevator_size ~%geometry_msgs/Point elevator_door_size ~%geometry_msgs/Pose outside_button_position ~%geometry_msgs/Pose inside_button_position ~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElevatorInfo)))
  "Returns full string definition for message of type 'ElevatorInfo"
  (cl:format cl:nil "string building~%int64 id~%geometry_msgs/Point elevator_size ~%geometry_msgs/Point elevator_door_size ~%geometry_msgs/Pose outside_button_position ~%geometry_msgs/Pose inside_button_position ~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElevatorInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'building))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'elevator_size))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'elevator_door_size))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'outside_button_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'inside_button_position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElevatorInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ElevatorInfo
    (cl:cons ':building (building msg))
    (cl:cons ':id (id msg))
    (cl:cons ':elevator_size (elevator_size msg))
    (cl:cons ':elevator_door_size (elevator_door_size msg))
    (cl:cons ':outside_button_position (outside_button_position msg))
    (cl:cons ':inside_button_position (inside_button_position msg))
))
