; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-msg)


;//! \htmlinclude ElevatorStrategyStep.msg.html

(cl:defclass <ElevatorStrategyStep> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ElevatorStrategyStep (<ElevatorStrategyStep>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElevatorStrategyStep>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElevatorStrategyStep)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-msg:<ElevatorStrategyStep> is deprecated: use campusrover_msgs-msg:ElevatorStrategyStep instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ElevatorStrategyStep>)))
    "Constants for message type '<ElevatorStrategyStep>"
  '((:STANDBY . 0)
    (:MOVE_TO_CHECK_OUTSIDE_BUTTON . 1)
    (:PRESS_OUTSIDE_BUTTON . 2)
    (:MOVE_TO_OUTSIDE_STANDBY_POSITION . 3)
    (:WAIT_FOR_OUTSIDE_DOOR_OPEN . 4)
    (:MOVE_TO_ELEVATOR_CENTER . 5)
    (:MOVE_TO_CHECK_ELEVATOR_BUTTON . 6)
    (:PRESS_ELEVATOR_BUTTON . 7)
    (:MOVE_TO_ELEVATOR_STANDBY_POSITION . 8)
    (:WAIT_FOR_ELEVATOR_ARRIVE_AND_DOOR_OPEN . 9)
    (:LEAVE_ELEVATOR . 10)
    (:COMPLETE_ELEVATOR_STRATEGY . 11))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ElevatorStrategyStep)))
    "Constants for message type 'ElevatorStrategyStep"
  '((:STANDBY . 0)
    (:MOVE_TO_CHECK_OUTSIDE_BUTTON . 1)
    (:PRESS_OUTSIDE_BUTTON . 2)
    (:MOVE_TO_OUTSIDE_STANDBY_POSITION . 3)
    (:WAIT_FOR_OUTSIDE_DOOR_OPEN . 4)
    (:MOVE_TO_ELEVATOR_CENTER . 5)
    (:MOVE_TO_CHECK_ELEVATOR_BUTTON . 6)
    (:PRESS_ELEVATOR_BUTTON . 7)
    (:MOVE_TO_ELEVATOR_STANDBY_POSITION . 8)
    (:WAIT_FOR_ELEVATOR_ARRIVE_AND_DOOR_OPEN . 9)
    (:LEAVE_ELEVATOR . 10)
    (:COMPLETE_ELEVATOR_STRATEGY . 11))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElevatorStrategyStep>) ostream)
  "Serializes a message object of type '<ElevatorStrategyStep>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElevatorStrategyStep>) istream)
  "Deserializes a message object of type '<ElevatorStrategyStep>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElevatorStrategyStep>)))
  "Returns string type for a message object of type '<ElevatorStrategyStep>"
  "campusrover_msgs/ElevatorStrategyStep")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElevatorStrategyStep)))
  "Returns string type for a message object of type 'ElevatorStrategyStep"
  "campusrover_msgs/ElevatorStrategyStep")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElevatorStrategyStep>)))
  "Returns md5sum for a message object of type '<ElevatorStrategyStep>"
  "ab7d8f1b7ce78283504b9bd3659c36b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElevatorStrategyStep)))
  "Returns md5sum for a message object of type 'ElevatorStrategyStep"
  "ab7d8f1b7ce78283504b9bd3659c36b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElevatorStrategyStep>)))
  "Returns full string definition for message of type '<ElevatorStrategyStep>"
  (cl:format cl:nil "uint16 STANDBY = 0~%uint16 MOVE_TO_CHECK_OUTSIDE_BUTTON = 1~%uint16 PRESS_OUTSIDE_BUTTON = 2~%uint16 MOVE_TO_OUTSIDE_STANDBY_POSITION = 3~%uint16 WAIT_FOR_OUTSIDE_DOOR_OPEN = 4~%uint16 MOVE_TO_ELEVATOR_CENTER = 5~%uint16 MOVE_TO_CHECK_ELEVATOR_BUTTON = 6~%uint16 PRESS_ELEVATOR_BUTTON = 7~%uint16 MOVE_TO_ELEVATOR_STANDBY_POSITION = 8~%uint16 WAIT_FOR_ELEVATOR_ARRIVE_AND_DOOR_OPEN = 9~%uint16 LEAVE_ELEVATOR = 10~%uint16 COMPLETE_ELEVATOR_STRATEGY = 11~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElevatorStrategyStep)))
  "Returns full string definition for message of type 'ElevatorStrategyStep"
  (cl:format cl:nil "uint16 STANDBY = 0~%uint16 MOVE_TO_CHECK_OUTSIDE_BUTTON = 1~%uint16 PRESS_OUTSIDE_BUTTON = 2~%uint16 MOVE_TO_OUTSIDE_STANDBY_POSITION = 3~%uint16 WAIT_FOR_OUTSIDE_DOOR_OPEN = 4~%uint16 MOVE_TO_ELEVATOR_CENTER = 5~%uint16 MOVE_TO_CHECK_ELEVATOR_BUTTON = 6~%uint16 PRESS_ELEVATOR_BUTTON = 7~%uint16 MOVE_TO_ELEVATOR_STANDBY_POSITION = 8~%uint16 WAIT_FOR_ELEVATOR_ARRIVE_AND_DOOR_OPEN = 9~%uint16 LEAVE_ELEVATOR = 10~%uint16 COMPLETE_ELEVATOR_STRATEGY = 11~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElevatorStrategyStep>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElevatorStrategyStep>))
  "Converts a ROS message object to a list"
  (cl:list 'ElevatorStrategyStep
))
