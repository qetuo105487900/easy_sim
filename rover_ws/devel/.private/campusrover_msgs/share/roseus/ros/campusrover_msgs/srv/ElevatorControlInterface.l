;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::ElevatorControlInterface)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'ElevatorControlInterface (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLINTERFACE")
  (make-package "CAMPUSROVER_MSGS::ELEVATORCONTROLINTERFACE"))
(unless (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLINTERFACEREQUEST")
  (make-package "CAMPUSROVER_MSGS::ELEVATORCONTROLINTERFACEREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::ELEVATORCONTROLINTERFACERESPONSE")
  (make-package "CAMPUSROVER_MSGS::ELEVATORCONTROLINTERFACERESPONSE"))

(in-package "ROS")





(defclass campusrover_msgs::ElevatorControlInterfaceRequest
  :super ros::object
  :slots (_enable_multi _elevator_id _building _init_floor _target_floor ))

(defmethod campusrover_msgs::ElevatorControlInterfaceRequest
  (:init
   (&key
    ((:enable_multi __enable_multi) nil)
    ((:elevator_id __elevator_id) "")
    ((:building __building) "")
    ((:init_floor __init_floor) 0)
    ((:target_floor __target_floor) 0)
    )
   (send-super :init)
   (setq _enable_multi __enable_multi)
   (setq _elevator_id (string __elevator_id))
   (setq _building (string __building))
   (setq _init_floor (round __init_floor))
   (setq _target_floor (round __target_floor))
   self)
  (:enable_multi
   (&optional (__enable_multi :null))
   (if (not (eq __enable_multi :null)) (setq _enable_multi __enable_multi)) _enable_multi)
  (:elevator_id
   (&optional __elevator_id)
   (if __elevator_id (setq _elevator_id __elevator_id)) _elevator_id)
  (:building
   (&optional __building)
   (if __building (setq _building __building)) _building)
  (:init_floor
   (&optional __init_floor)
   (if __init_floor (setq _init_floor __init_floor)) _init_floor)
  (:target_floor
   (&optional __target_floor)
   (if __target_floor (setq _target_floor __target_floor)) _target_floor)
  (:serialization-length
   ()
   (+
    ;; bool _enable_multi
    1
    ;; string _elevator_id
    4 (length _elevator_id)
    ;; string _building
    4 (length _building)
    ;; int8 _init_floor
    1
    ;; int8 _target_floor
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable_multi
       (if _enable_multi (write-byte -1 s) (write-byte 0 s))
     ;; string _elevator_id
       (write-long (length _elevator_id) s) (princ _elevator_id s)
     ;; string _building
       (write-long (length _building) s) (princ _building s)
     ;; int8 _init_floor
       (write-byte _init_floor s)
     ;; int8 _target_floor
       (write-byte _target_floor s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable_multi
     (setq _enable_multi (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _elevator_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _elevator_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _building
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _building (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _init_floor
     (setq _init_floor (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _init_floor 127) (setq _init_floor (- _init_floor 256)))
   ;; int8 _target_floor
     (setq _target_floor (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _target_floor 127) (setq _target_floor (- _target_floor 256)))
   ;;
   self)
  )

(defclass campusrover_msgs::ElevatorControlInterfaceResponse
  :super ros::object
  :slots ())

(defmethod campusrover_msgs::ElevatorControlInterfaceResponse
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

(defclass campusrover_msgs::ElevatorControlInterface
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::ElevatorControlInterface :md5sum-) "921e2fec69ab3d7333541f6289522f53")
(setf (get campusrover_msgs::ElevatorControlInterface :datatype-) "campusrover_msgs/ElevatorControlInterface")
(setf (get campusrover_msgs::ElevatorControlInterface :request) campusrover_msgs::ElevatorControlInterfaceRequest)
(setf (get campusrover_msgs::ElevatorControlInterface :response) campusrover_msgs::ElevatorControlInterfaceResponse)

(defmethod campusrover_msgs::ElevatorControlInterfaceRequest
  (:response () (instance campusrover_msgs::ElevatorControlInterfaceResponse :init)))

(setf (get campusrover_msgs::ElevatorControlInterfaceRequest :md5sum-) "921e2fec69ab3d7333541f6289522f53")
(setf (get campusrover_msgs::ElevatorControlInterfaceRequest :datatype-) "campusrover_msgs/ElevatorControlInterfaceRequest")
(setf (get campusrover_msgs::ElevatorControlInterfaceRequest :definition-)
      "bool enable_multi
string elevator_id
string building
int8 init_floor
int8 target_floor
---
")

(setf (get campusrover_msgs::ElevatorControlInterfaceResponse :md5sum-) "921e2fec69ab3d7333541f6289522f53")
(setf (get campusrover_msgs::ElevatorControlInterfaceResponse :datatype-) "campusrover_msgs/ElevatorControlInterfaceResponse")
(setf (get campusrover_msgs::ElevatorControlInterfaceResponse :definition-)
      "bool enable_multi
string elevator_id
string building
int8 init_floor
int8 target_floor
---
")



(provide :campusrover_msgs/ElevatorControlInterface "921e2fec69ab3d7333541f6289522f53")


