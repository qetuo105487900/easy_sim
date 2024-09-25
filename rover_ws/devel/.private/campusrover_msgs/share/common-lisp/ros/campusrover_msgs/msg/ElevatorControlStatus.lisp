; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-msg)


;//! \htmlinclude ElevatorControlStatus.msg.html

(cl:defclass <ElevatorControlStatus> (roslisp-msg-protocol:ros-message)
  ((control_status
    :reader control_status
    :initarg :control_status
    :type cl:fixnum
    :initform 0)
   (elevator_id
    :reader elevator_id
    :initarg :elevator_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ElevatorControlStatus (<ElevatorControlStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElevatorControlStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElevatorControlStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-msg:<ElevatorControlStatus> is deprecated: use campusrover_msgs-msg:ElevatorControlStatus instead.")))

(cl:ensure-generic-function 'control_status-val :lambda-list '(m))
(cl:defmethod control_status-val ((m <ElevatorControlStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:control_status-val is deprecated.  Use campusrover_msgs-msg:control_status instead.")
  (control_status m))

(cl:ensure-generic-function 'elevator_id-val :lambda-list '(m))
(cl:defmethod elevator_id-val ((m <ElevatorControlStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:elevator_id-val is deprecated.  Use campusrover_msgs-msg:elevator_id instead.")
  (elevator_id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ElevatorControlStatus>)))
    "Constants for message type '<ElevatorControlStatus>"
  '((:STANDBY . 0)
    (:MOVE_TO_OUTSIDE_BUTTON . 1)
    (:PRESS_OUTSIDE_BUTTON . 2)
    (:MOVE_TO_OUTSIDE_STANDBY_POSITION . 3)
    (:WAIT_FOR_OUTSIDE_DOOR_OPEN . 4)
    (:ENTER_ELEVATOR_OUTSIDE . 5)
    (:ENTER_ELEVATOR_INSIDE_NO_ROTATE . 6)
    (:ENTER_ELEVATOR_INSIDE . 7)
    (:MOVE_TO_INSIDE_BUTTON_NO_ROTATE . 8)
    (:MOVE_TO_INSIDE_BUTTON . 9)
    (:PRESS_INSIDE_BUTTON_NO_ROTATE . 10)
    (:PRESS_INSIDE_BUTTON . 11)
    (:MOVE_TO_INSIDE_STANDBY_POSITION . 12)
    (:WAIT_FOR_ELEVATOR_ARRIVE . 13)
    (:WAIT_FOR_INSIDE_DOOR_OPEN . 14)
    (:LEAVE_ELEVATOR_INSIDE . 15)
    (:LEAVE_ELEVATOR_OUTSIDE . 16))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ElevatorControlStatus)))
    "Constants for message type 'ElevatorControlStatus"
  '((:STANDBY . 0)
    (:MOVE_TO_OUTSIDE_BUTTON . 1)
    (:PRESS_OUTSIDE_BUTTON . 2)
    (:MOVE_TO_OUTSIDE_STANDBY_POSITION . 3)
    (:WAIT_FOR_OUTSIDE_DOOR_OPEN . 4)
    (:ENTER_ELEVATOR_OUTSIDE . 5)
    (:ENTER_ELEVATOR_INSIDE_NO_ROTATE . 6)
    (:ENTER_ELEVATOR_INSIDE . 7)
    (:MOVE_TO_INSIDE_BUTTON_NO_ROTATE . 8)
    (:MOVE_TO_INSIDE_BUTTON . 9)
    (:PRESS_INSIDE_BUTTON_NO_ROTATE . 10)
    (:PRESS_INSIDE_BUTTON . 11)
    (:MOVE_TO_INSIDE_STANDBY_POSITION . 12)
    (:WAIT_FOR_ELEVATOR_ARRIVE . 13)
    (:WAIT_FOR_INSIDE_DOOR_OPEN . 14)
    (:LEAVE_ELEVATOR_INSIDE . 15)
    (:LEAVE_ELEVATOR_OUTSIDE . 16))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElevatorControlStatus>) ostream)
  "Serializes a message object of type '<ElevatorControlStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'control_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'elevator_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'elevator_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElevatorControlStatus>) istream)
  "Deserializes a message object of type '<ElevatorControlStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'control_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'elevator_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'elevator_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElevatorControlStatus>)))
  "Returns string type for a message object of type '<ElevatorControlStatus>"
  "campusrover_msgs/ElevatorControlStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElevatorControlStatus)))
  "Returns string type for a message object of type 'ElevatorControlStatus"
  "campusrover_msgs/ElevatorControlStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElevatorControlStatus>)))
  "Returns md5sum for a message object of type '<ElevatorControlStatus>"
  "91eba8b0d0e3c9306f4419279cc38164")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElevatorControlStatus)))
  "Returns md5sum for a message object of type 'ElevatorControlStatus"
  "91eba8b0d0e3c9306f4419279cc38164")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElevatorControlStatus>)))
  "Returns full string definition for message of type '<ElevatorControlStatus>"
  (cl:format cl:nil "uint16 control_status~%uint16 STANDBY = 0~%uint16 MOVE_TO_OUTSIDE_BUTTON = 1~%uint16 PRESS_OUTSIDE_BUTTON = 2~%uint16 MOVE_TO_OUTSIDE_STANDBY_POSITION = 3~%uint16 WAIT_FOR_OUTSIDE_DOOR_OPEN = 4~%uint16 ENTER_ELEVATOR_OUTSIDE = 5~%uint16 ENTER_ELEVATOR_INSIDE_NO_ROTATE = 6~%uint16 ENTER_ELEVATOR_INSIDE = 7~%uint16 MOVE_TO_INSIDE_BUTTON_NO_ROTATE = 8~%uint16 MOVE_TO_INSIDE_BUTTON = 9~%uint16 PRESS_INSIDE_BUTTON_NO_ROTATE = 10~%uint16 PRESS_INSIDE_BUTTON = 11~%uint16 MOVE_TO_INSIDE_STANDBY_POSITION = 12~%uint16 WAIT_FOR_ELEVATOR_ARRIVE = 13~%uint16 WAIT_FOR_INSIDE_DOOR_OPEN = 14~%uint16 LEAVE_ELEVATOR_INSIDE = 15~%uint16 LEAVE_ELEVATOR_OUTSIDE = 16~%uint16 elevator_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElevatorControlStatus)))
  "Returns full string definition for message of type 'ElevatorControlStatus"
  (cl:format cl:nil "uint16 control_status~%uint16 STANDBY = 0~%uint16 MOVE_TO_OUTSIDE_BUTTON = 1~%uint16 PRESS_OUTSIDE_BUTTON = 2~%uint16 MOVE_TO_OUTSIDE_STANDBY_POSITION = 3~%uint16 WAIT_FOR_OUTSIDE_DOOR_OPEN = 4~%uint16 ENTER_ELEVATOR_OUTSIDE = 5~%uint16 ENTER_ELEVATOR_INSIDE_NO_ROTATE = 6~%uint16 ENTER_ELEVATOR_INSIDE = 7~%uint16 MOVE_TO_INSIDE_BUTTON_NO_ROTATE = 8~%uint16 MOVE_TO_INSIDE_BUTTON = 9~%uint16 PRESS_INSIDE_BUTTON_NO_ROTATE = 10~%uint16 PRESS_INSIDE_BUTTON = 11~%uint16 MOVE_TO_INSIDE_STANDBY_POSITION = 12~%uint16 WAIT_FOR_ELEVATOR_ARRIVE = 13~%uint16 WAIT_FOR_INSIDE_DOOR_OPEN = 14~%uint16 LEAVE_ELEVATOR_INSIDE = 15~%uint16 LEAVE_ELEVATOR_OUTSIDE = 16~%uint16 elevator_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElevatorControlStatus>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElevatorControlStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ElevatorControlStatus
    (cl:cons ':control_status (control_status msg))
    (cl:cons ':elevator_id (elevator_id msg))
))
