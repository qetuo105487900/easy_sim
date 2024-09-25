;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::Room)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'Room (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::ROOM")
  (make-package "CAMPUSROVER_MSGS::ROOM"))

(in-package "ROS")
;;//! \htmlinclude Room.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass campusrover_msgs::Room
  :super ros::object
  :slots (_room _position ))

(defmethod campusrover_msgs::Room
  (:init
   (&key
    ((:room __room) "")
    ((:position __position) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _room (string __room))
   (setq _position __position)
   self)
  (:room
   (&optional __room)
   (if __room (setq _room __room)) _room)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:serialization-length
   ()
   (+
    ;; string _room
    4 (length _room)
    ;; geometry_msgs/Pose _position
    (send _position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _room
       (write-long (length _room) s) (princ _room s)
     ;; geometry_msgs/Pose _position
       (send _position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _room
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _room (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;;
   self)
  )

(setf (get campusrover_msgs::Room :md5sum-) "4e15901b44c927cc147ae3b80517019f")
(setf (get campusrover_msgs::Room :datatype-) "campusrover_msgs/Room")
(setf (get campusrover_msgs::Room :definition-)
      "string room
geometry_msgs/Pose  position
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :campusrover_msgs/Room "4e15901b44c927cc147ae3b80517019f")


