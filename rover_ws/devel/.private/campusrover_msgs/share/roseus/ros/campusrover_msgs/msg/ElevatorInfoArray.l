;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::ElevatorInfoArray)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'ElevatorInfoArray (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::ELEVATORINFOARRAY")
  (make-package "CAMPUSROVER_MSGS::ELEVATORINFOARRAY"))

(in-package "ROS")
;;//! \htmlinclude ElevatorInfoArray.msg.html


(defclass campusrover_msgs::ElevatorInfoArray
  :super ros::object
  :slots (_elevator_infos ))

(defmethod campusrover_msgs::ElevatorInfoArray
  (:init
   (&key
    ((:elevator_infos __elevator_infos) ())
    )
   (send-super :init)
   (setq _elevator_infos __elevator_infos)
   self)
  (:elevator_infos
   (&rest __elevator_infos)
   (if (keywordp (car __elevator_infos))
       (send* _elevator_infos __elevator_infos)
     (progn
       (if __elevator_infos (setq _elevator_infos (car __elevator_infos)))
       _elevator_infos)))
  (:serialization-length
   ()
   (+
    ;; campusrover_msgs/ElevatorInfo[] _elevator_infos
    (apply #'+ (send-all _elevator_infos :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; campusrover_msgs/ElevatorInfo[] _elevator_infos
     (write-long (length _elevator_infos) s)
     (dolist (elem _elevator_infos)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; campusrover_msgs/ElevatorInfo[] _elevator_infos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _elevator_infos (let (r) (dotimes (i n) (push (instance campusrover_msgs::ElevatorInfo :init) r)) r))
     (dolist (elem- _elevator_infos)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get campusrover_msgs::ElevatorInfoArray :md5sum-) "4e9215978b0b25ebc2893037e3da3bf9")
(setf (get campusrover_msgs::ElevatorInfoArray :datatype-) "campusrover_msgs/ElevatorInfoArray")
(setf (get campusrover_msgs::ElevatorInfoArray :definition-)
      "campusrover_msgs/ElevatorInfo[] elevator_infos
================================================================================
MSG: campusrover_msgs/ElevatorInfo
string building
int64 id
geometry_msgs/Point elevator_size 
geometry_msgs/Point elevator_door_size 
geometry_msgs/Pose outside_button_position 
geometry_msgs/Pose inside_button_position 
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :campusrover_msgs/ElevatorInfoArray "4e9215978b0b25ebc2893037e3da3bf9")


