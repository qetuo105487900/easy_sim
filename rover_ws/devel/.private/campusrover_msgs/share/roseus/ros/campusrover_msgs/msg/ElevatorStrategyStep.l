;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::ElevatorStrategyStep)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'ElevatorStrategyStep (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::ELEVATORSTRATEGYSTEP")
  (make-package "CAMPUSROVER_MSGS::ELEVATORSTRATEGYSTEP"))

(in-package "ROS")
;;//! \htmlinclude ElevatorStrategyStep.msg.html


(intern "*STANDBY*" (find-package "CAMPUSROVER_MSGS::ELEVATORSTRATEGYSTEP"))
(shadow '*STANDBY* (find-package "CAMPUSROVER_MSGS::ELEVATORSTRATEGYSTEP"))
(defconstant campusrover_msgs::ElevatorStrategyStep::*STANDBY* 0)
(intern "*MOVE_TO_CHECK_OUTSIDE_BUTTON*" (find-package "CAMPUSROVER_MSGS::ELEVATORSTRATEGYSTEP"))
(shadow '*MOVE_TO_CHECK_OUTSIDE_BUTTON* (find-package "CAMPUSROVER_MSGS::ELEVATORSTRATEGYSTEP"))
(defconstant campusrover_msgs::ElevatorStrategyStep::*MOVE_TO_CHECK_OUTSIDE_BUTTON* 1)
(intern "*PRESS_OUTSIDE_BUTTON*" (find-package "CAMPUSROVER_MSGS::ELEVATORSTRATEGYSTEP"))
(shadow '*PRESS_OUTSIDE_BUTTON* (find-package "CAMPUSROVER_MSGS::ELEVATORSTRATEGYSTEP"))
(defconstant campusrover_msgs::ElevatorStrategyStep::*PRESS_OUTSIDE_BUTTON* 2)
(intern "*MOVE_TO_OUTSIDE_STANDBY_POSITION*" (find-package "CAMPUSROVER_MSGS::ELEVATORSTRATEGYSTEP"))
(shadow '*MOVE_TO_OUTSIDE_STANDBY_POSITION* (find-package "CAMPUSROVER_MSGS::ELEVATORSTRATEGYSTEP"))
(defconstant campusrover_msgs::ElevatorStrategyStep::*MOVE_TO_OUTSIDE_STANDBY_POSITION* 3)
(intern "*WAIT_FOR_OUTSIDE_DOOR_OPEN*" (find-package "CAMPUSROVER_MSGS::ELEVATORSTRATEGYSTEP"))
(shadow '*WAIT_FOR_OUTSIDE_DOOR_OPEN* (find-package "CAMPUSROVER_MSGS::ELEVATORSTRATEGYSTEP"))
(defconstant campusrover_msgs::ElevatorStrategyStep::*WAIT_FOR_OUTSIDE_DOOR_OPEN* 4)
(intern "*MOVE_TO_ELEVATOR_CENTER*" (find-package "CAMPUSROVER_MSGS::ELEVATORSTRATEGYSTEP"))
(shadow '*MOVE_TO_ELEVATOR_CENTER* (find-package "CAMPUSROVER_MSGS::ELEVATORSTRATEGYSTEP"))
(defconstant campusrover_msgs::ElevatorStrategyStep::*MOVE_TO_ELEVATOR_CENTER* 5)
(intern "*MOVE_TO_CHECK_ELEVATOR_BUTTON*" (find-package "CAMPUSROVER_MSGS::ELEVATORSTRATEGYSTEP"))
(shadow '*MOVE_TO_CHECK_ELEVATOR_BUTTON* (find-package "CAMPUSROVER_MSGS::ELEVATORSTRATEGYSTEP"))
(defconstant campusrover_msgs::ElevatorStrategyStep::*MOVE_TO_CHECK_ELEVATOR_BUTTON* 6)
(intern "*PRESS_ELEVATOR_BUTTON*" (find-package "CAMPUSROVER_MSGS::ELEVATORSTRATEGYSTEP"))
(shadow '*PRESS_ELEVATOR_BUTTON* (find-package "CAMPUSROVER_MSGS::ELEVATORSTRATEGYSTEP"))
(defconstant campusrover_msgs::ElevatorStrategyStep::*PRESS_ELEVATOR_BUTTON* 7)
(intern "*MOVE_TO_ELEVATOR_STANDBY_POSITION*" (find-package "CAMPUSROVER_MSGS::ELEVATORSTRATEGYSTEP"))
(shadow '*MOVE_TO_ELEVATOR_STANDBY_POSITION* (find-package "CAMPUSROVER_MSGS::ELEVATORSTRATEGYSTEP"))
(defconstant campusrover_msgs::ElevatorStrategyStep::*MOVE_TO_ELEVATOR_STANDBY_POSITION* 8)
(intern "*WAIT_FOR_ELEVATOR_ARRIVE_AND_DOOR_OPEN*" (find-package "CAMPUSROVER_MSGS::ELEVATORSTRATEGYSTEP"))
(shadow '*WAIT_FOR_ELEVATOR_ARRIVE_AND_DOOR_OPEN* (find-package "CAMPUSROVER_MSGS::ELEVATORSTRATEGYSTEP"))
(defconstant campusrover_msgs::ElevatorStrategyStep::*WAIT_FOR_ELEVATOR_ARRIVE_AND_DOOR_OPEN* 9)
(intern "*LEAVE_ELEVATOR*" (find-package "CAMPUSROVER_MSGS::ELEVATORSTRATEGYSTEP"))
(shadow '*LEAVE_ELEVATOR* (find-package "CAMPUSROVER_MSGS::ELEVATORSTRATEGYSTEP"))
(defconstant campusrover_msgs::ElevatorStrategyStep::*LEAVE_ELEVATOR* 10)
(intern "*COMPLETE_ELEVATOR_STRATEGY*" (find-package "CAMPUSROVER_MSGS::ELEVATORSTRATEGYSTEP"))
(shadow '*COMPLETE_ELEVATOR_STRATEGY* (find-package "CAMPUSROVER_MSGS::ELEVATORSTRATEGYSTEP"))
(defconstant campusrover_msgs::ElevatorStrategyStep::*COMPLETE_ELEVATOR_STRATEGY* 11)

(defun campusrover_msgs::ElevatorStrategyStep-to-symbol (const)
  (cond
        ((= const 0) 'campusrover_msgs::ElevatorStrategyStep::*STANDBY*)
        ((= const 1) 'campusrover_msgs::ElevatorStrategyStep::*MOVE_TO_CHECK_OUTSIDE_BUTTON*)
        ((= const 2) 'campusrover_msgs::ElevatorStrategyStep::*PRESS_OUTSIDE_BUTTON*)
        ((= const 3) 'campusrover_msgs::ElevatorStrategyStep::*MOVE_TO_OUTSIDE_STANDBY_POSITION*)
        ((= const 4) 'campusrover_msgs::ElevatorStrategyStep::*WAIT_FOR_OUTSIDE_DOOR_OPEN*)
        ((= const 5) 'campusrover_msgs::ElevatorStrategyStep::*MOVE_TO_ELEVATOR_CENTER*)
        ((= const 6) 'campusrover_msgs::ElevatorStrategyStep::*MOVE_TO_CHECK_ELEVATOR_BUTTON*)
        ((= const 7) 'campusrover_msgs::ElevatorStrategyStep::*PRESS_ELEVATOR_BUTTON*)
        ((= const 8) 'campusrover_msgs::ElevatorStrategyStep::*MOVE_TO_ELEVATOR_STANDBY_POSITION*)
        ((= const 9) 'campusrover_msgs::ElevatorStrategyStep::*WAIT_FOR_ELEVATOR_ARRIVE_AND_DOOR_OPEN*)
        ((= const 10) 'campusrover_msgs::ElevatorStrategyStep::*LEAVE_ELEVATOR*)
        ((= const 11) 'campusrover_msgs::ElevatorStrategyStep::*COMPLETE_ELEVATOR_STRATEGY*)
        (t nil)))

(defclass campusrover_msgs::ElevatorStrategyStep
  :super ros::object
  :slots ())

(defmethod campusrover_msgs::ElevatorStrategyStep
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get campusrover_msgs::ElevatorStrategyStep :md5sum-) "ab7d8f1b7ce78283504b9bd3659c36b7")
(setf (get campusrover_msgs::ElevatorStrategyStep :datatype-) "campusrover_msgs/ElevatorStrategyStep")
(setf (get campusrover_msgs::ElevatorStrategyStep :definition-)
      "uint16 STANDBY = 0
uint16 MOVE_TO_CHECK_OUTSIDE_BUTTON = 1
uint16 PRESS_OUTSIDE_BUTTON = 2
uint16 MOVE_TO_OUTSIDE_STANDBY_POSITION = 3
uint16 WAIT_FOR_OUTSIDE_DOOR_OPEN = 4
uint16 MOVE_TO_ELEVATOR_CENTER = 5
uint16 MOVE_TO_CHECK_ELEVATOR_BUTTON = 6
uint16 PRESS_ELEVATOR_BUTTON = 7
uint16 MOVE_TO_ELEVATOR_STANDBY_POSITION = 8
uint16 WAIT_FOR_ELEVATOR_ARRIVE_AND_DOOR_OPEN = 9
uint16 LEAVE_ELEVATOR = 10
uint16 COMPLETE_ELEVATOR_STRATEGY = 11

")



(provide :campusrover_msgs/ElevatorStrategyStep "ab7d8f1b7ce78283504b9bd3659c36b7")


