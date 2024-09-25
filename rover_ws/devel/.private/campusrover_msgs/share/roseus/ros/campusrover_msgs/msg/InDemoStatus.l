;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::InDemoStatus)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'InDemoStatus (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::INDEMOSTATUS")
  (make-package "CAMPUSROVER_MSGS::INDEMOSTATUS"))

(in-package "ROS")
;;//! \htmlinclude InDemoStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass campusrover_msgs::InDemoStatus
  :super ros::object
  :slots (_status _controller _target_pose_data _current_pose_data _mid_target_pose_data ))

(defmethod campusrover_msgs::InDemoStatus
  (:init
   (&key
    ((:status __status) (instance std_msgs::String :init))
    ((:controller __controller) (instance std_msgs::String :init))
    ((:target_pose_data __target_pose_data) (instance campusrover_msgs::PoseWithId :init))
    ((:current_pose_data __current_pose_data) (instance campusrover_msgs::PoseWithId :init))
    ((:mid_target_pose_data __mid_target_pose_data) (instance campusrover_msgs::PoseWithId :init))
    )
   (send-super :init)
   (setq _status __status)
   (setq _controller __controller)
   (setq _target_pose_data __target_pose_data)
   (setq _current_pose_data __current_pose_data)
   (setq _mid_target_pose_data __mid_target_pose_data)
   self)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:controller
   (&rest __controller)
   (if (keywordp (car __controller))
       (send* _controller __controller)
     (progn
       (if __controller (setq _controller (car __controller)))
       _controller)))
  (:target_pose_data
   (&rest __target_pose_data)
   (if (keywordp (car __target_pose_data))
       (send* _target_pose_data __target_pose_data)
     (progn
       (if __target_pose_data (setq _target_pose_data (car __target_pose_data)))
       _target_pose_data)))
  (:current_pose_data
   (&rest __current_pose_data)
   (if (keywordp (car __current_pose_data))
       (send* _current_pose_data __current_pose_data)
     (progn
       (if __current_pose_data (setq _current_pose_data (car __current_pose_data)))
       _current_pose_data)))
  (:mid_target_pose_data
   (&rest __mid_target_pose_data)
   (if (keywordp (car __mid_target_pose_data))
       (send* _mid_target_pose_data __mid_target_pose_data)
     (progn
       (if __mid_target_pose_data (setq _mid_target_pose_data (car __mid_target_pose_data)))
       _mid_target_pose_data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _status
    (send _status :serialization-length)
    ;; std_msgs/String _controller
    (send _controller :serialization-length)
    ;; campusrover_msgs/PoseWithId _target_pose_data
    (send _target_pose_data :serialization-length)
    ;; campusrover_msgs/PoseWithId _current_pose_data
    (send _current_pose_data :serialization-length)
    ;; campusrover_msgs/PoseWithId _mid_target_pose_data
    (send _mid_target_pose_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _status
       (send _status :serialize s)
     ;; std_msgs/String _controller
       (send _controller :serialize s)
     ;; campusrover_msgs/PoseWithId _target_pose_data
       (send _target_pose_data :serialize s)
     ;; campusrover_msgs/PoseWithId _current_pose_data
       (send _current_pose_data :serialize s)
     ;; campusrover_msgs/PoseWithId _mid_target_pose_data
       (send _mid_target_pose_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; std_msgs/String _controller
     (send _controller :deserialize buf ptr-) (incf ptr- (send _controller :serialization-length))
   ;; campusrover_msgs/PoseWithId _target_pose_data
     (send _target_pose_data :deserialize buf ptr-) (incf ptr- (send _target_pose_data :serialization-length))
   ;; campusrover_msgs/PoseWithId _current_pose_data
     (send _current_pose_data :deserialize buf ptr-) (incf ptr- (send _current_pose_data :serialization-length))
   ;; campusrover_msgs/PoseWithId _mid_target_pose_data
     (send _mid_target_pose_data :deserialize buf ptr-) (incf ptr- (send _mid_target_pose_data :serialization-length))
   ;;
   self)
  )

(setf (get campusrover_msgs::InDemoStatus :md5sum-) "34ab88de0bd0120458bb8839561e2f23")
(setf (get campusrover_msgs::InDemoStatus :datatype-) "campusrover_msgs/InDemoStatus")
(setf (get campusrover_msgs::InDemoStatus :definition-)
      "std_msgs/String status
std_msgs/String controller
campusrover_msgs/PoseWithId target_pose_data
campusrover_msgs/PoseWithId current_pose_data
campusrover_msgs/PoseWithId mid_target_pose_data
================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: campusrover_msgs/PoseWithId
std_msgs/String id
std_msgs/String type
std_msgs/Int16 floor
geometry_msgs/PoseStamped pose

================================================================================
MSG: std_msgs/Int16
int16 data

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

")



(provide :campusrover_msgs/InDemoStatus "34ab88de0bd0120458bb8839561e2f23")


