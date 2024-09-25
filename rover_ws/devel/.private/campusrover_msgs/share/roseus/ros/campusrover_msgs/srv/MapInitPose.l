;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::MapInitPose)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'MapInitPose (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::MAPINITPOSE")
  (make-package "CAMPUSROVER_MSGS::MAPINITPOSE"))
(unless (find-package "CAMPUSROVER_MSGS::MAPINITPOSEREQUEST")
  (make-package "CAMPUSROVER_MSGS::MAPINITPOSEREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::MAPINITPOSERESPONSE")
  (make-package "CAMPUSROVER_MSGS::MAPINITPOSERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass campusrover_msgs::MapInitPoseRequest
  :super ros::object
  :slots (_building _floor _init_point ))

(defmethod campusrover_msgs::MapInitPoseRequest
  (:init
   (&key
    ((:building __building) "")
    ((:floor __floor) "")
    ((:init_point __init_point) "")
    )
   (send-super :init)
   (setq _building (string __building))
   (setq _floor (string __floor))
   (setq _init_point (string __init_point))
   self)
  (:building
   (&optional __building)
   (if __building (setq _building __building)) _building)
  (:floor
   (&optional __floor)
   (if __floor (setq _floor __floor)) _floor)
  (:init_point
   (&optional __init_point)
   (if __init_point (setq _init_point __init_point)) _init_point)
  (:serialization-length
   ()
   (+
    ;; string _building
    4 (length _building)
    ;; string _floor
    4 (length _floor)
    ;; string _init_point
    4 (length _init_point)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _building
       (write-long (length _building) s) (princ _building s)
     ;; string _floor
       (write-long (length _floor) s) (princ _floor s)
     ;; string _init_point
       (write-long (length _init_point) s) (princ _init_point s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _building
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _building (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _floor
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _floor (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _init_point
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _init_point (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass campusrover_msgs::MapInitPoseResponse
  :super ros::object
  :slots (_pose ))

(defmethod campusrover_msgs::MapInitPoseResponse
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass campusrover_msgs::MapInitPose
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::MapInitPose :md5sum-) "9e35deb61797247ebf906a6ce49e2644")
(setf (get campusrover_msgs::MapInitPose :datatype-) "campusrover_msgs/MapInitPose")
(setf (get campusrover_msgs::MapInitPose :request) campusrover_msgs::MapInitPoseRequest)
(setf (get campusrover_msgs::MapInitPose :response) campusrover_msgs::MapInitPoseResponse)

(defmethod campusrover_msgs::MapInitPoseRequest
  (:response () (instance campusrover_msgs::MapInitPoseResponse :init)))

(setf (get campusrover_msgs::MapInitPoseRequest :md5sum-) "9e35deb61797247ebf906a6ce49e2644")
(setf (get campusrover_msgs::MapInitPoseRequest :datatype-) "campusrover_msgs/MapInitPoseRequest")
(setf (get campusrover_msgs::MapInitPoseRequest :definition-)
      "string building
string floor
string init_point
---
geometry_msgs/PoseStamped pose

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

(setf (get campusrover_msgs::MapInitPoseResponse :md5sum-) "9e35deb61797247ebf906a6ce49e2644")
(setf (get campusrover_msgs::MapInitPoseResponse :datatype-) "campusrover_msgs/MapInitPoseResponse")
(setf (get campusrover_msgs::MapInitPoseResponse :definition-)
      "string building
string floor
string init_point
---
geometry_msgs/PoseStamped pose

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



(provide :campusrover_msgs/MapInitPose "9e35deb61797247ebf906a6ce49e2644")


