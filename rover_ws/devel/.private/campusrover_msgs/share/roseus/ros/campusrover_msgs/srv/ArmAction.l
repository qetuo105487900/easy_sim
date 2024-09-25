;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::ArmAction)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'ArmAction (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::ARMACTION")
  (make-package "CAMPUSROVER_MSGS::ARMACTION"))
(unless (find-package "CAMPUSROVER_MSGS::ARMACTIONREQUEST")
  (make-package "CAMPUSROVER_MSGS::ARMACTIONREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::ARMACTIONRESPONSE")
  (make-package "CAMPUSROVER_MSGS::ARMACTIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass campusrover_msgs::ArmActionRequest
  :super ros::object
  :slots (_button_pose ))

(defmethod campusrover_msgs::ArmActionRequest
  (:init
   (&key
    ((:button_pose __button_pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _button_pose __button_pose)
   self)
  (:button_pose
   (&rest __button_pose)
   (if (keywordp (car __button_pose))
       (send* _button_pose __button_pose)
     (progn
       (if __button_pose (setq _button_pose (car __button_pose)))
       _button_pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _button_pose
    (send _button_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _button_pose
       (send _button_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _button_pose
     (send _button_pose :deserialize buf ptr-) (incf ptr- (send _button_pose :serialization-length))
   ;;
   self)
  )

(defclass campusrover_msgs::ArmActionResponse
  :super ros::object
  :slots ())

(defmethod campusrover_msgs::ArmActionResponse
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

(defclass campusrover_msgs::ArmAction
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::ArmAction :md5sum-) "512c6f416d6851352390c756a87cd4c1")
(setf (get campusrover_msgs::ArmAction :datatype-) "campusrover_msgs/ArmAction")
(setf (get campusrover_msgs::ArmAction :request) campusrover_msgs::ArmActionRequest)
(setf (get campusrover_msgs::ArmAction :response) campusrover_msgs::ArmActionResponse)

(defmethod campusrover_msgs::ArmActionRequest
  (:response () (instance campusrover_msgs::ArmActionResponse :init)))

(setf (get campusrover_msgs::ArmActionRequest :md5sum-) "512c6f416d6851352390c756a87cd4c1")
(setf (get campusrover_msgs::ArmActionRequest :datatype-) "campusrover_msgs/ArmActionRequest")
(setf (get campusrover_msgs::ArmActionRequest :definition-)
      "geometry_msgs/PoseStamped button_pose

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
---

")

(setf (get campusrover_msgs::ArmActionResponse :md5sum-) "512c6f416d6851352390c756a87cd4c1")
(setf (get campusrover_msgs::ArmActionResponse :datatype-) "campusrover_msgs/ArmActionResponse")
(setf (get campusrover_msgs::ArmActionResponse :definition-)
      "geometry_msgs/PoseStamped button_pose

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
---

")



(provide :campusrover_msgs/ArmAction "512c6f416d6851352390c756a87cd4c1")


