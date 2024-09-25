;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::ButtonPoses)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'ButtonPoses (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::BUTTONPOSES")
  (make-package "CAMPUSROVER_MSGS::BUTTONPOSES"))

(in-package "ROS")
;;//! \htmlinclude ButtonPoses.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass campusrover_msgs::ButtonPoses
  :super ros::object
  :slots (_header _button_poses ))

(defmethod campusrover_msgs::ButtonPoses
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:button_poses __button_poses) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _button_poses __button_poses)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:button_poses
   (&rest __button_poses)
   (if (keywordp (car __button_poses))
       (send* _button_poses __button_poses)
     (progn
       (if __button_poses (setq _button_poses (car __button_poses)))
       _button_poses)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; campusrover_msgs/ButtonPose[] _button_poses
    (apply #'+ (send-all _button_poses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; campusrover_msgs/ButtonPose[] _button_poses
     (write-long (length _button_poses) s)
     (dolist (elem _button_poses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; campusrover_msgs/ButtonPose[] _button_poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _button_poses (let (r) (dotimes (i n) (push (instance campusrover_msgs::ButtonPose :init) r)) r))
     (dolist (elem- _button_poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get campusrover_msgs::ButtonPoses :md5sum-) "01d1633c8e2cd27ca2e62eb14d3836b3")
(setf (get campusrover_msgs::ButtonPoses :datatype-) "campusrover_msgs/ButtonPoses")
(setf (get campusrover_msgs::ButtonPoses :definition-)
      "std_msgs/Header header
campusrover_msgs/ButtonPose[] button_poses
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
MSG: campusrover_msgs/ButtonPose
string label
geometry_msgs/Pose pose
float32 activation
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



(provide :campusrover_msgs/ButtonPoses "01d1633c8e2cd27ca2e62eb14d3836b3")


