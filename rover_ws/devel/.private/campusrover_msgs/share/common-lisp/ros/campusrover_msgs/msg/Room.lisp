; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-msg)


;//! \htmlinclude Room.msg.html

(cl:defclass <Room> (roslisp-msg-protocol:ros-message)
  ((room
    :reader room
    :initarg :room
    :type cl:string
    :initform "")
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass Room (<Room>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Room>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Room)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-msg:<Room> is deprecated: use campusrover_msgs-msg:Room instead.")))

(cl:ensure-generic-function 'room-val :lambda-list '(m))
(cl:defmethod room-val ((m <Room>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:room-val is deprecated.  Use campusrover_msgs-msg:room instead.")
  (room m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Room>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:position-val is deprecated.  Use campusrover_msgs-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Room>) ostream)
  "Serializes a message object of type '<Room>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'room))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'room))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Room>) istream)
  "Deserializes a message object of type '<Room>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'room) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'room) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Room>)))
  "Returns string type for a message object of type '<Room>"
  "campusrover_msgs/Room")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Room)))
  "Returns string type for a message object of type 'Room"
  "campusrover_msgs/Room")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Room>)))
  "Returns md5sum for a message object of type '<Room>"
  "4e15901b44c927cc147ae3b80517019f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Room)))
  "Returns md5sum for a message object of type 'Room"
  "4e15901b44c927cc147ae3b80517019f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Room>)))
  "Returns full string definition for message of type '<Room>"
  (cl:format cl:nil "string room~%geometry_msgs/Pose  position~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Room)))
  "Returns full string definition for message of type 'Room"
  (cl:format cl:nil "string room~%geometry_msgs/Pose  position~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Room>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'room))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Room>))
  "Converts a ROS message object to a list"
  (cl:list 'Room
    (cl:cons ':room (room msg))
    (cl:cons ':position (position msg))
))
