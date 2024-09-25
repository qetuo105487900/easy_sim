;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::DoorStatus)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'DoorStatus (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::DOORSTATUS")
  (make-package "CAMPUSROVER_MSGS::DOORSTATUS"))

(in-package "ROS")
;;//! \htmlinclude DoorStatus.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass campusrover_msgs::DoorStatus
  :super ros::object
  :slots (_doors_pose _doors_status ))

(defmethod campusrover_msgs::DoorStatus
  (:init
   (&key
    ((:doors_pose __doors_pose) (instance geometry_msgs::PoseArray :init))
    ((:doors_status __doors_status) ())
    )
   (send-super :init)
   (setq _doors_pose __doors_pose)
   (setq _doors_status __doors_status)
   self)
  (:doors_pose
   (&rest __doors_pose)
   (if (keywordp (car __doors_pose))
       (send* _doors_pose __doors_pose)
     (progn
       (if __doors_pose (setq _doors_pose (car __doors_pose)))
       _doors_pose)))
  (:doors_status
   (&rest __doors_status)
   (if (keywordp (car __doors_status))
       (send* _doors_status __doors_status)
     (progn
       (if __doors_status (setq _doors_status (car __doors_status)))
       _doors_status)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseArray _doors_pose
    (send _doors_pose :serialization-length)
    ;; std_msgs/String[] _doors_status
    (apply #'+ (send-all _doors_status :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseArray _doors_pose
       (send _doors_pose :serialize s)
     ;; std_msgs/String[] _doors_status
     (write-long (length _doors_status) s)
     (dolist (elem _doors_status)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseArray _doors_pose
     (send _doors_pose :deserialize buf ptr-) (incf ptr- (send _doors_pose :serialization-length))
   ;; std_msgs/String[] _doors_status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _doors_status (let (r) (dotimes (i n) (push (instance std_msgs::String :init) r)) r))
     (dolist (elem- _doors_status)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get campusrover_msgs::DoorStatus :md5sum-) "392ed9cecb7f2eb557a135d59e4111da")
(setf (get campusrover_msgs::DoorStatus :datatype-) "campusrover_msgs/DoorStatus")
(setf (get campusrover_msgs::DoorStatus :definition-)
      "geometry_msgs/PoseArray doors_pose

std_msgs/String[] doors_status

================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

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

================================================================================
MSG: std_msgs/String
string data

")



(provide :campusrover_msgs/DoorStatus "392ed9cecb7f2eb557a135d59e4111da")


