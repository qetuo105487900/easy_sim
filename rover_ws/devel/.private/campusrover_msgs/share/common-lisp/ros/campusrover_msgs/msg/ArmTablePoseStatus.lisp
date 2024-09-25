; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-msg)


;//! \htmlinclude ArmTablePoseStatus.msg.html

(cl:defclass <ArmTablePoseStatus> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (table_status
    :reader table_status
    :initarg :table_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ArmTablePoseStatus (<ArmTablePoseStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmTablePoseStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmTablePoseStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-msg:<ArmTablePoseStatus> is deprecated: use campusrover_msgs-msg:ArmTablePoseStatus instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ArmTablePoseStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:position-val is deprecated.  Use campusrover_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'table_status-val :lambda-list '(m))
(cl:defmethod table_status-val ((m <ArmTablePoseStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:table_status-val is deprecated.  Use campusrover_msgs-msg:table_status instead.")
  (table_status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ArmTablePoseStatus>)))
    "Constants for message type '<ArmTablePoseStatus>"
  '((:UNINITIAL . 0)
    (:MOVING . 1)
    (:STANDBY . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ArmTablePoseStatus)))
    "Constants for message type 'ArmTablePoseStatus"
  '((:UNINITIAL . 0)
    (:MOVING . 1)
    (:STANDBY . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmTablePoseStatus>) ostream)
  "Serializes a message object of type '<ArmTablePoseStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'table_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'table_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmTablePoseStatus>) istream)
  "Deserializes a message object of type '<ArmTablePoseStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'table_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'table_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmTablePoseStatus>)))
  "Returns string type for a message object of type '<ArmTablePoseStatus>"
  "campusrover_msgs/ArmTablePoseStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmTablePoseStatus)))
  "Returns string type for a message object of type 'ArmTablePoseStatus"
  "campusrover_msgs/ArmTablePoseStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmTablePoseStatus>)))
  "Returns md5sum for a message object of type '<ArmTablePoseStatus>"
  "56901712d7b154ea1f47a1060e0f25eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmTablePoseStatus)))
  "Returns md5sum for a message object of type 'ArmTablePoseStatus"
  "56901712d7b154ea1f47a1060e0f25eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmTablePoseStatus>)))
  "Returns full string definition for message of type '<ArmTablePoseStatus>"
  (cl:format cl:nil "geometry_msgs/Point position~%uint16 table_status~%uint16 uninitial = 0~%uint16 moving = 1~%uint16 standby = 2~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmTablePoseStatus)))
  "Returns full string definition for message of type 'ArmTablePoseStatus"
  (cl:format cl:nil "geometry_msgs/Point position~%uint16 table_status~%uint16 uninitial = 0~%uint16 moving = 1~%uint16 standby = 2~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmTablePoseStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmTablePoseStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmTablePoseStatus
    (cl:cons ':position (position msg))
    (cl:cons ':table_status (table_status msg))
))
