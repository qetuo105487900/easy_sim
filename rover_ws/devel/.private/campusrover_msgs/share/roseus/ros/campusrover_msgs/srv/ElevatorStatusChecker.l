;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::ElevatorStatusChecker)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'ElevatorStatusChecker (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::ELEVATORSTATUSCHECKER")
  (make-package "CAMPUSROVER_MSGS::ELEVATORSTATUSCHECKER"))
(unless (find-package "CAMPUSROVER_MSGS::ELEVATORSTATUSCHECKERREQUEST")
  (make-package "CAMPUSROVER_MSGS::ELEVATORSTATUSCHECKERREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::ELEVATORSTATUSCHECKERRESPONSE")
  (make-package "CAMPUSROVER_MSGS::ELEVATORSTATUSCHECKERRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass campusrover_msgs::ElevatorStatusCheckerRequest
  :super ros::object
  :slots (_node_name _status ))

(defmethod campusrover_msgs::ElevatorStatusCheckerRequest
  (:init
   (&key
    ((:node_name __node_name) (instance std_msgs::String :init))
    ((:status __status) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _node_name __node_name)
   (setq _status __status)
   self)
  (:node_name
   (&rest __node_name)
   (if (keywordp (car __node_name))
       (send* _node_name __node_name)
     (progn
       (if __node_name (setq _node_name (car __node_name)))
       _node_name)))
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _node_name
    (send _node_name :serialization-length)
    ;; std_msgs/Bool _status
    (send _status :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _node_name
       (send _node_name :serialize s)
     ;; std_msgs/Bool _status
       (send _status :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _node_name
     (send _node_name :deserialize buf ptr-) (incf ptr- (send _node_name :serialization-length))
   ;; std_msgs/Bool _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;;
   self)
  )

(defclass campusrover_msgs::ElevatorStatusCheckerResponse
  :super ros::object
  :slots ())

(defmethod campusrover_msgs::ElevatorStatusCheckerResponse
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

(defclass campusrover_msgs::ElevatorStatusChecker
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::ElevatorStatusChecker :md5sum-) "10f198604c5b4593b82d50b6435659cb")
(setf (get campusrover_msgs::ElevatorStatusChecker :datatype-) "campusrover_msgs/ElevatorStatusChecker")
(setf (get campusrover_msgs::ElevatorStatusChecker :request) campusrover_msgs::ElevatorStatusCheckerRequest)
(setf (get campusrover_msgs::ElevatorStatusChecker :response) campusrover_msgs::ElevatorStatusCheckerResponse)

(defmethod campusrover_msgs::ElevatorStatusCheckerRequest
  (:response () (instance campusrover_msgs::ElevatorStatusCheckerResponse :init)))

(setf (get campusrover_msgs::ElevatorStatusCheckerRequest :md5sum-) "10f198604c5b4593b82d50b6435659cb")
(setf (get campusrover_msgs::ElevatorStatusCheckerRequest :datatype-) "campusrover_msgs/ElevatorStatusCheckerRequest")
(setf (get campusrover_msgs::ElevatorStatusCheckerRequest :definition-)
      "std_msgs/String node_name
std_msgs/Bool status

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: std_msgs/Bool
---
")

(setf (get campusrover_msgs::ElevatorStatusCheckerResponse :md5sum-) "10f198604c5b4593b82d50b6435659cb")
(setf (get campusrover_msgs::ElevatorStatusCheckerResponse :datatype-) "campusrover_msgs/ElevatorStatusCheckerResponse")
(setf (get campusrover_msgs::ElevatorStatusCheckerResponse :definition-)
      "std_msgs/String node_name
std_msgs/Bool status

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: std_msgs/Bool
---
")



(provide :campusrover_msgs/ElevatorStatusChecker "10f198604c5b4593b82d50b6435659cb")


