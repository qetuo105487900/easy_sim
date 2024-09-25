;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::MapClosestLocation)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'MapClosestLocation (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::MAPCLOSESTLOCATION")
  (make-package "CAMPUSROVER_MSGS::MAPCLOSESTLOCATION"))
(unless (find-package "CAMPUSROVER_MSGS::MAPCLOSESTLOCATIONREQUEST")
  (make-package "CAMPUSROVER_MSGS::MAPCLOSESTLOCATIONREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::MAPCLOSESTLOCATIONRESPONSE")
  (make-package "CAMPUSROVER_MSGS::MAPCLOSESTLOCATIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass campusrover_msgs::MapClosestLocationRequest
  :super ros::object
  :slots (_building _floor _robot_pose ))

(defmethod campusrover_msgs::MapClosestLocationRequest
  (:init
   (&key
    ((:building __building) "")
    ((:floor __floor) "")
    ((:robot_pose __robot_pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _building (string __building))
   (setq _floor (string __floor))
   (setq _robot_pose __robot_pose)
   self)
  (:building
   (&optional __building)
   (if __building (setq _building __building)) _building)
  (:floor
   (&optional __floor)
   (if __floor (setq _floor __floor)) _floor)
  (:robot_pose
   (&rest __robot_pose)
   (if (keywordp (car __robot_pose))
       (send* _robot_pose __robot_pose)
     (progn
       (if __robot_pose (setq _robot_pose (car __robot_pose)))
       _robot_pose)))
  (:serialization-length
   ()
   (+
    ;; string _building
    4 (length _building)
    ;; string _floor
    4 (length _floor)
    ;; geometry_msgs/PoseStamped _robot_pose
    (send _robot_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _building
       (write-long (length _building) s) (princ _building s)
     ;; string _floor
       (write-long (length _floor) s) (princ _floor s)
     ;; geometry_msgs/PoseStamped _robot_pose
       (send _robot_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _building
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _building (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _floor
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _floor (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped _robot_pose
     (send _robot_pose :deserialize buf ptr-) (incf ptr- (send _robot_pose :serialization-length))
   ;;
   self)
  )

(defclass campusrover_msgs::MapClosestLocationResponse
  :super ros::object
  :slots (_closest_point ))

(defmethod campusrover_msgs::MapClosestLocationResponse
  (:init
   (&key
    ((:closest_point __closest_point) "")
    )
   (send-super :init)
   (setq _closest_point (string __closest_point))
   self)
  (:closest_point
   (&optional __closest_point)
   (if __closest_point (setq _closest_point __closest_point)) _closest_point)
  (:serialization-length
   ()
   (+
    ;; string _closest_point
    4 (length _closest_point)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _closest_point
       (write-long (length _closest_point) s) (princ _closest_point s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _closest_point
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _closest_point (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass campusrover_msgs::MapClosestLocation
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::MapClosestLocation :md5sum-) "958ccb3e3caf31c023d2c553e7c87d27")
(setf (get campusrover_msgs::MapClosestLocation :datatype-) "campusrover_msgs/MapClosestLocation")
(setf (get campusrover_msgs::MapClosestLocation :request) campusrover_msgs::MapClosestLocationRequest)
(setf (get campusrover_msgs::MapClosestLocation :response) campusrover_msgs::MapClosestLocationResponse)

(defmethod campusrover_msgs::MapClosestLocationRequest
  (:response () (instance campusrover_msgs::MapClosestLocationResponse :init)))

(setf (get campusrover_msgs::MapClosestLocationRequest :md5sum-) "958ccb3e3caf31c023d2c553e7c87d27")
(setf (get campusrover_msgs::MapClosestLocationRequest :datatype-) "campusrover_msgs/MapClosestLocationRequest")
(setf (get campusrover_msgs::MapClosestLocationRequest :definition-)
      "string building
string floor
geometry_msgs/PoseStamped robot_pose

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
string closest_point
")

(setf (get campusrover_msgs::MapClosestLocationResponse :md5sum-) "958ccb3e3caf31c023d2c553e7c87d27")
(setf (get campusrover_msgs::MapClosestLocationResponse :datatype-) "campusrover_msgs/MapClosestLocationResponse")
(setf (get campusrover_msgs::MapClosestLocationResponse :definition-)
      "string building
string floor
geometry_msgs/PoseStamped robot_pose

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
string closest_point
")



(provide :campusrover_msgs/MapClosestLocation "958ccb3e3caf31c023d2c553e7c87d27")


