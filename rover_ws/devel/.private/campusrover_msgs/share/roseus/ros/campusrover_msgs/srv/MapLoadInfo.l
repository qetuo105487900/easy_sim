;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::MapLoadInfo)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'MapLoadInfo (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::MAPLOADINFO")
  (make-package "CAMPUSROVER_MSGS::MAPLOADINFO"))
(unless (find-package "CAMPUSROVER_MSGS::MAPLOADINFOREQUEST")
  (make-package "CAMPUSROVER_MSGS::MAPLOADINFOREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::MAPLOADINFORESPONSE")
  (make-package "CAMPUSROVER_MSGS::MAPLOADINFORESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass campusrover_msgs::MapLoadInfoRequest
  :super ros::object
  :slots (_building _floor ))

(defmethod campusrover_msgs::MapLoadInfoRequest
  (:init
   (&key
    ((:building __building) "")
    ((:floor __floor) "")
    )
   (send-super :init)
   (setq _building (string __building))
   (setq _floor (string __floor))
   self)
  (:building
   (&optional __building)
   (if __building (setq _building __building)) _building)
  (:floor
   (&optional __floor)
   (if __floor (setq _floor __floor)) _floor)
  (:serialization-length
   ()
   (+
    ;; string _building
    4 (length _building)
    ;; string _floor
    4 (length _floor)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _building
       (write-long (length _building) s) (princ _building s)
     ;; string _floor
       (write-long (length _floor) s) (princ _floor s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _building
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _building (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _floor
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _floor (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass campusrover_msgs::MapLoadInfoResponse
  :super ros::object
  :slots (_tf ))

(defmethod campusrover_msgs::MapLoadInfoResponse
  (:init
   (&key
    ((:tf __tf) (instance geometry_msgs::TransformStamped :init))
    )
   (send-super :init)
   (setq _tf __tf)
   self)
  (:tf
   (&rest __tf)
   (if (keywordp (car __tf))
       (send* _tf __tf)
     (progn
       (if __tf (setq _tf (car __tf)))
       _tf)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/TransformStamped _tf
    (send _tf :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/TransformStamped _tf
       (send _tf :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/TransformStamped _tf
     (send _tf :deserialize buf ptr-) (incf ptr- (send _tf :serialization-length))
   ;;
   self)
  )

(defclass campusrover_msgs::MapLoadInfo
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::MapLoadInfo :md5sum-) "93a21f63b64b29785779efda16301551")
(setf (get campusrover_msgs::MapLoadInfo :datatype-) "campusrover_msgs/MapLoadInfo")
(setf (get campusrover_msgs::MapLoadInfo :request) campusrover_msgs::MapLoadInfoRequest)
(setf (get campusrover_msgs::MapLoadInfo :response) campusrover_msgs::MapLoadInfoResponse)

(defmethod campusrover_msgs::MapLoadInfoRequest
  (:response () (instance campusrover_msgs::MapLoadInfoResponse :init)))

(setf (get campusrover_msgs::MapLoadInfoRequest :md5sum-) "93a21f63b64b29785779efda16301551")
(setf (get campusrover_msgs::MapLoadInfoRequest :datatype-) "campusrover_msgs/MapLoadInfoRequest")
(setf (get campusrover_msgs::MapLoadInfoRequest :definition-)
      "string building
string floor
---
geometry_msgs/TransformStamped tf

================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

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
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

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

(setf (get campusrover_msgs::MapLoadInfoResponse :md5sum-) "93a21f63b64b29785779efda16301551")
(setf (get campusrover_msgs::MapLoadInfoResponse :datatype-) "campusrover_msgs/MapLoadInfoResponse")
(setf (get campusrover_msgs::MapLoadInfoResponse :definition-)
      "string building
string floor
---
geometry_msgs/TransformStamped tf

================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

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
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

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



(provide :campusrover_msgs/MapLoadInfo "93a21f63b64b29785779efda16301551")


