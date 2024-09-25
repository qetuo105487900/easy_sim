;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::MapInfo)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'MapInfo (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::MAPINFO")
  (make-package "CAMPUSROVER_MSGS::MAPINFO"))
(unless (find-package "CAMPUSROVER_MSGS::MAPINFOREQUEST")
  (make-package "CAMPUSROVER_MSGS::MAPINFOREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::MAPINFORESPONSE")
  (make-package "CAMPUSROVER_MSGS::MAPINFORESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass campusrover_msgs::MapInfoRequest
  :super ros::object
  :slots (_location _floor _tf _rooms _connections ))

(defmethod campusrover_msgs::MapInfoRequest
  (:init
   (&key
    ((:location __location) "")
    ((:floor __floor) 0)
    ((:tf __tf) (instance geometry_msgs::TransformStamped :init))
    ((:rooms __rooms) ())
    ((:connections __connections) ())
    )
   (send-super :init)
   (setq _location (string __location))
   (setq _floor (round __floor))
   (setq _tf __tf)
   (setq _rooms __rooms)
   (setq _connections __connections)
   self)
  (:location
   (&optional __location)
   (if __location (setq _location __location)) _location)
  (:floor
   (&optional __floor)
   (if __floor (setq _floor __floor)) _floor)
  (:tf
   (&rest __tf)
   (if (keywordp (car __tf))
       (send* _tf __tf)
     (progn
       (if __tf (setq _tf (car __tf)))
       _tf)))
  (:rooms
   (&rest __rooms)
   (if (keywordp (car __rooms))
       (send* _rooms __rooms)
     (progn
       (if __rooms (setq _rooms (car __rooms)))
       _rooms)))
  (:connections
   (&rest __connections)
   (if (keywordp (car __connections))
       (send* _connections __connections)
     (progn
       (if __connections (setq _connections (car __connections)))
       _connections)))
  (:serialization-length
   ()
   (+
    ;; string _location
    4 (length _location)
    ;; int32 _floor
    4
    ;; geometry_msgs/TransformStamped _tf
    (send _tf :serialization-length)
    ;; campusrover_msgs/Room[] _rooms
    (apply #'+ (send-all _rooms :serialization-length)) 4
    ;; campusrover_msgs/RoomConnected[] _connections
    (apply #'+ (send-all _connections :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _location
       (write-long (length _location) s) (princ _location s)
     ;; int32 _floor
       (write-long _floor s)
     ;; geometry_msgs/TransformStamped _tf
       (send _tf :serialize s)
     ;; campusrover_msgs/Room[] _rooms
     (write-long (length _rooms) s)
     (dolist (elem _rooms)
       (send elem :serialize s)
       )
     ;; campusrover_msgs/RoomConnected[] _connections
     (write-long (length _connections) s)
     (dolist (elem _connections)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _floor
     (setq _floor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/TransformStamped _tf
     (send _tf :deserialize buf ptr-) (incf ptr- (send _tf :serialization-length))
   ;; campusrover_msgs/Room[] _rooms
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rooms (let (r) (dotimes (i n) (push (instance campusrover_msgs::Room :init) r)) r))
     (dolist (elem- _rooms)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; campusrover_msgs/RoomConnected[] _connections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _connections (let (r) (dotimes (i n) (push (instance campusrover_msgs::RoomConnected :init) r)) r))
     (dolist (elem- _connections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass campusrover_msgs::MapInfoResponse
  :super ros::object
  :slots (_code _message ))

(defmethod campusrover_msgs::MapInfoResponse
  (:init
   (&key
    ((:code __code) "")
    ((:message __message) "")
    )
   (send-super :init)
   (setq _code (string __code))
   (setq _message (string __message))
   self)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _code
    4 (length _code)
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _code
       (write-long (length _code) s) (princ _code s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass campusrover_msgs::MapInfo
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::MapInfo :md5sum-) "741eabcb755f63b90a295f90af3c64c8")
(setf (get campusrover_msgs::MapInfo :datatype-) "campusrover_msgs/MapInfo")
(setf (get campusrover_msgs::MapInfo :request) campusrover_msgs::MapInfoRequest)
(setf (get campusrover_msgs::MapInfo :response) campusrover_msgs::MapInfoResponse)

(defmethod campusrover_msgs::MapInfoRequest
  (:response () (instance campusrover_msgs::MapInfoResponse :init)))

(setf (get campusrover_msgs::MapInfoRequest :md5sum-) "741eabcb755f63b90a295f90af3c64c8")
(setf (get campusrover_msgs::MapInfoRequest :datatype-) "campusrover_msgs/MapInfoRequest")
(setf (get campusrover_msgs::MapInfoRequest :definition-)
      "string location
int32 floor
geometry_msgs/TransformStamped tf
campusrover_msgs/Room[] rooms
campusrover_msgs/RoomConnected[] connections

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

================================================================================
MSG: campusrover_msgs/Room
string room
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
MSG: campusrover_msgs/RoomConnected
---
string code
string message
")

(setf (get campusrover_msgs::MapInfoResponse :md5sum-) "741eabcb755f63b90a295f90af3c64c8")
(setf (get campusrover_msgs::MapInfoResponse :datatype-) "campusrover_msgs/MapInfoResponse")
(setf (get campusrover_msgs::MapInfoResponse :definition-)
      "string location
int32 floor
geometry_msgs/TransformStamped tf
campusrover_msgs/Room[] rooms
campusrover_msgs/RoomConnected[] connections

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

================================================================================
MSG: campusrover_msgs/Room
string room
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
MSG: campusrover_msgs/RoomConnected
---
string code
string message
")



(provide :campusrover_msgs/MapInfo "741eabcb755f63b90a295f90af3c64c8")


