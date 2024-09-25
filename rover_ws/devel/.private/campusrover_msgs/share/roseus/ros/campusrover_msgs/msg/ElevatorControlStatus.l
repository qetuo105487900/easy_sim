;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::ElevatorControlStatus)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'ElevatorControlStatus (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS")
  (make-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ElevatorControlStatus.msg.html


(intern "*STANDBY*" (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(shadow '*STANDBY* (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(defconstant campusrover_msgs::ElevatorControlStatus::*STANDBY* 0)
(intern "*MOVE_TO_OUTSIDE_BUTTON*" (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(shadow '*MOVE_TO_OUTSIDE_BUTTON* (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(defconstant campusrover_msgs::ElevatorControlStatus::*MOVE_TO_OUTSIDE_BUTTON* 1)
(intern "*PRESS_OUTSIDE_BUTTON*" (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(shadow '*PRESS_OUTSIDE_BUTTON* (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(defconstant campusrover_msgs::ElevatorControlStatus::*PRESS_OUTSIDE_BUTTON* 2)
(intern "*MOVE_TO_OUTSIDE_STANDBY_POSITION*" (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(shadow '*MOVE_TO_OUTSIDE_STANDBY_POSITION* (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(defconstant campusrover_msgs::ElevatorControlStatus::*MOVE_TO_OUTSIDE_STANDBY_POSITION* 3)
(intern "*WAIT_FOR_OUTSIDE_DOOR_OPEN*" (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(shadow '*WAIT_FOR_OUTSIDE_DOOR_OPEN* (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(defconstant campusrover_msgs::ElevatorControlStatus::*WAIT_FOR_OUTSIDE_DOOR_OPEN* 4)
(intern "*ENTER_ELEVATOR_OUTSIDE*" (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(shadow '*ENTER_ELEVATOR_OUTSIDE* (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(defconstant campusrover_msgs::ElevatorControlStatus::*ENTER_ELEVATOR_OUTSIDE* 5)
(intern "*ENTER_ELEVATOR_INSIDE_NO_ROTATE*" (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(shadow '*ENTER_ELEVATOR_INSIDE_NO_ROTATE* (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(defconstant campusrover_msgs::ElevatorControlStatus::*ENTER_ELEVATOR_INSIDE_NO_ROTATE* 6)
(intern "*ENTER_ELEVATOR_INSIDE*" (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(shadow '*ENTER_ELEVATOR_INSIDE* (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(defconstant campusrover_msgs::ElevatorControlStatus::*ENTER_ELEVATOR_INSIDE* 7)
(intern "*MOVE_TO_INSIDE_BUTTON_NO_ROTATE*" (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(shadow '*MOVE_TO_INSIDE_BUTTON_NO_ROTATE* (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(defconstant campusrover_msgs::ElevatorControlStatus::*MOVE_TO_INSIDE_BUTTON_NO_ROTATE* 8)
(intern "*MOVE_TO_INSIDE_BUTTON*" (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(shadow '*MOVE_TO_INSIDE_BUTTON* (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(defconstant campusrover_msgs::ElevatorControlStatus::*MOVE_TO_INSIDE_BUTTON* 9)
(intern "*PRESS_INSIDE_BUTTON_NO_ROTATE*" (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(shadow '*PRESS_INSIDE_BUTTON_NO_ROTATE* (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(defconstant campusrover_msgs::ElevatorControlStatus::*PRESS_INSIDE_BUTTON_NO_ROTATE* 10)
(intern "*PRESS_INSIDE_BUTTON*" (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(shadow '*PRESS_INSIDE_BUTTON* (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(defconstant campusrover_msgs::ElevatorControlStatus::*PRESS_INSIDE_BUTTON* 11)
(intern "*MOVE_TO_INSIDE_STANDBY_POSITION*" (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(shadow '*MOVE_TO_INSIDE_STANDBY_POSITION* (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(defconstant campusrover_msgs::ElevatorControlStatus::*MOVE_TO_INSIDE_STANDBY_POSITION* 12)
(intern "*WAIT_FOR_ELEVATOR_ARRIVE*" (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(shadow '*WAIT_FOR_ELEVATOR_ARRIVE* (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(defconstant campusrover_msgs::ElevatorControlStatus::*WAIT_FOR_ELEVATOR_ARRIVE* 13)
(intern "*WAIT_FOR_INSIDE_DOOR_OPEN*" (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(shadow '*WAIT_FOR_INSIDE_DOOR_OPEN* (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(defconstant campusrover_msgs::ElevatorControlStatus::*WAIT_FOR_INSIDE_DOOR_OPEN* 14)
(intern "*LEAVE_ELEVATOR_INSIDE*" (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(shadow '*LEAVE_ELEVATOR_INSIDE* (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(defconstant campusrover_msgs::ElevatorControlStatus::*LEAVE_ELEVATOR_INSIDE* 15)
(intern "*LEAVE_ELEVATOR_OUTSIDE*" (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(shadow '*LEAVE_ELEVATOR_OUTSIDE* (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLSTATUS"))
(defconstant campusrover_msgs::ElevatorControlStatus::*LEAVE_ELEVATOR_OUTSIDE* 16)

(defun campusrover_msgs::ElevatorControlStatus-to-symbol (const)
  (cond
        ((= const 0) 'campusrover_msgs::ElevatorControlStatus::*STANDBY*)
        ((= const 1) 'campusrover_msgs::ElevatorControlStatus::*MOVE_TO_OUTSIDE_BUTTON*)
        ((= const 2) 'campusrover_msgs::ElevatorControlStatus::*PRESS_OUTSIDE_BUTTON*)
        ((= const 3) 'campusrover_msgs::ElevatorControlStatus::*MOVE_TO_OUTSIDE_STANDBY_POSITION*)
        ((= const 4) 'campusrover_msgs::ElevatorControlStatus::*WAIT_FOR_OUTSIDE_DOOR_OPEN*)
        ((= const 5) 'campusrover_msgs::ElevatorControlStatus::*ENTER_ELEVATOR_OUTSIDE*)
        ((= const 6) 'campusrover_msgs::ElevatorControlStatus::*ENTER_ELEVATOR_INSIDE_NO_ROTATE*)
        ((= const 7) 'campusrover_msgs::ElevatorControlStatus::*ENTER_ELEVATOR_INSIDE*)
        ((= const 8) 'campusrover_msgs::ElevatorControlStatus::*MOVE_TO_INSIDE_BUTTON_NO_ROTATE*)
        ((= const 9) 'campusrover_msgs::ElevatorControlStatus::*MOVE_TO_INSIDE_BUTTON*)
        ((= const 10) 'campusrover_msgs::ElevatorControlStatus::*PRESS_INSIDE_BUTTON_NO_ROTATE*)
        ((= const 11) 'campusrover_msgs::ElevatorControlStatus::*PRESS_INSIDE_BUTTON*)
        ((= const 12) 'campusrover_msgs::ElevatorControlStatus::*MOVE_TO_INSIDE_STANDBY_POSITION*)
        ((= const 13) 'campusrover_msgs::ElevatorControlStatus::*WAIT_FOR_ELEVATOR_ARRIVE*)
        ((= const 14) 'campusrover_msgs::ElevatorControlStatus::*WAIT_FOR_INSIDE_DOOR_OPEN*)
        ((= const 15) 'campusrover_msgs::ElevatorControlStatus::*LEAVE_ELEVATOR_INSIDE*)
        ((= const 16) 'campusrover_msgs::ElevatorControlStatus::*LEAVE_ELEVATOR_OUTSIDE*)
        (t nil)))

(defclass campusrover_msgs::ElevatorControlStatus
  :super ros::object
  :slots (_control_status _elevator_id ))

(defmethod campusrover_msgs::ElevatorControlStatus
  (:init
   (&key
    ((:control_status __control_status) 0)
    ((:elevator_id __elevator_id) 0)
    )
   (send-super :init)
   (setq _control_status (round __control_status))
   (setq _elevator_id (round __elevator_id))
   self)
  (:control_status
   (&optional __control_status)
   (if __control_status (setq _control_status __control_status)) _control_status)
  (:elevator_id
   (&optional __elevator_id)
   (if __elevator_id (setq _elevator_id __elevator_id)) _elevator_id)
  (:serialization-length
   ()
   (+
    ;; uint16 _control_status
    2
    ;; uint16 _elevator_id
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _control_status
       (write-word _control_status s)
     ;; uint16 _elevator_id
       (write-word _elevator_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _control_status
     (setq _control_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _elevator_id
     (setq _elevator_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get campusrover_msgs::ElevatorControlStatus :md5sum-) "91eba8b0d0e3c9306f4419279cc38164")
(setf (get campusrover_msgs::ElevatorControlStatus :datatype-) "campusrover_msgs/ElevatorControlStatus")
(setf (get campusrover_msgs::ElevatorControlStatus :definition-)
      "uint16 control_status
uint16 STANDBY = 0
uint16 MOVE_TO_OUTSIDE_BUTTON = 1
uint16 PRESS_OUTSIDE_BUTTON = 2
uint16 MOVE_TO_OUTSIDE_STANDBY_POSITION = 3
uint16 WAIT_FOR_OUTSIDE_DOOR_OPEN = 4
uint16 ENTER_ELEVATOR_OUTSIDE = 5
uint16 ENTER_ELEVATOR_INSIDE_NO_ROTATE = 6
uint16 ENTER_ELEVATOR_INSIDE = 7
uint16 MOVE_TO_INSIDE_BUTTON_NO_ROTATE = 8
uint16 MOVE_TO_INSIDE_BUTTON = 9
uint16 PRESS_INSIDE_BUTTON_NO_ROTATE = 10
uint16 PRESS_INSIDE_BUTTON = 11
uint16 MOVE_TO_INSIDE_STANDBY_POSITION = 12
uint16 WAIT_FOR_ELEVATOR_ARRIVE = 13
uint16 WAIT_FOR_INSIDE_DOOR_OPEN = 14
uint16 LEAVE_ELEVATOR_INSIDE = 15
uint16 LEAVE_ELEVATOR_OUTSIDE = 16
uint16 elevator_id

")



(provide :campusrover_msgs/ElevatorControlStatus "91eba8b0d0e3c9306f4419279cc38164")


