;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::ArmTablePoseStatus)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'ArmTablePoseStatus (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::ARMTABLEPOSESTATUS")
  (make-package "CAMPUSROVER_MSGS::ARMTABLEPOSESTATUS"))

(in-package "ROS")
;;//! \htmlinclude ArmTablePoseStatus.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*UNINITIAL*" (find-package "CAMPUSROVER_MSGS::ARMTABLEPOSESTATUS"))
(shadow '*UNINITIAL* (find-package "CAMPUSROVER_MSGS::ARMTABLEPOSESTATUS"))
(defconstant campusrover_msgs::ArmTablePoseStatus::*UNINITIAL* 0)
(intern "*MOVING*" (find-package "CAMPUSROVER_MSGS::ARMTABLEPOSESTATUS"))
(shadow '*MOVING* (find-package "CAMPUSROVER_MSGS::ARMTABLEPOSESTATUS"))
(defconstant campusrover_msgs::ArmTablePoseStatus::*MOVING* 1)
(intern "*STANDBY*" (find-package "CAMPUSROVER_MSGS::ARMTABLEPOSESTATUS"))
(shadow '*STANDBY* (find-package "CAMPUSROVER_MSGS::ARMTABLEPOSESTATUS"))
(defconstant campusrover_msgs::ArmTablePoseStatus::*STANDBY* 2)

(defun campusrover_msgs::ArmTablePoseStatus-to-symbol (const)
  (cond
        ((= const 0) 'campusrover_msgs::ArmTablePoseStatus::*uninitial*)
        ((= const 1) 'campusrover_msgs::ArmTablePoseStatus::*moving*)
        ((= const 2) 'campusrover_msgs::ArmTablePoseStatus::*standby*)
        (t nil)))

(defclass campusrover_msgs::ArmTablePoseStatus
  :super ros::object
  :slots (_position _table_status ))

(defmethod campusrover_msgs::ArmTablePoseStatus
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:table_status __table_status) 0)
    )
   (send-super :init)
   (setq _position __position)
   (setq _table_status (round __table_status))
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:table_status
   (&optional __table_status)
   (if __table_status (setq _table_status __table_status)) _table_status)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; uint16 _table_status
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; uint16 _table_status
       (write-word _table_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; uint16 _table_status
     (setq _table_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get campusrover_msgs::ArmTablePoseStatus :md5sum-) "56901712d7b154ea1f47a1060e0f25eb")
(setf (get campusrover_msgs::ArmTablePoseStatus :datatype-) "campusrover_msgs/ArmTablePoseStatus")
(setf (get campusrover_msgs::ArmTablePoseStatus :definition-)
      "geometry_msgs/Point position
uint16 table_status
uint16 uninitial = 0
uint16 moving = 1
uint16 standby = 2
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :campusrover_msgs/ArmTablePoseStatus "56901712d7b154ea1f47a1060e0f25eb")


