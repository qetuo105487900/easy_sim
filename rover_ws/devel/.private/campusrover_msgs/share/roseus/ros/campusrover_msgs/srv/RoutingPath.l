;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::RoutingPath)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'RoutingPath (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::ROUTINGPATH")
  (make-package "CAMPUSROVER_MSGS::ROUTINGPATH"))
(unless (find-package "CAMPUSROVER_MSGS::ROUTINGPATHREQUEST")
  (make-package "CAMPUSROVER_MSGS::ROUTINGPATHREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::ROUTINGPATHRESPONSE")
  (make-package "CAMPUSROVER_MSGS::ROUTINGPATHRESPONSE"))

(in-package "ROS")



(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass campusrover_msgs::RoutingPathRequest
  :super ros::object
  :slots (_origin _destination ))

(defmethod campusrover_msgs::RoutingPathRequest
  (:init
   (&key
    ((:origin __origin) "")
    ((:destination __destination) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _origin (string __origin))
   (setq _destination __destination)
   self)
  (:origin
   (&optional __origin)
   (if __origin (setq _origin __origin)) _origin)
  (:destination
   (&optional __destination)
   (if __destination (setq _destination __destination)) _destination)
  (:serialization-length
   ()
   (+
    ;; string _origin
    4 (length _origin)
    ;; string[] _destination
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _destination)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _origin
       (write-long (length _origin) s) (princ _origin s)
     ;; string[] _destination
     (write-long (length _destination) s)
     (dolist (elem _destination)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _origin
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _origin (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _destination
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _destination (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _destination i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass campusrover_msgs::RoutingPathResponse
  :super ros::object
  :slots (_routing ))

(defmethod campusrover_msgs::RoutingPathResponse
  (:init
   (&key
    ((:routing __routing) ())
    )
   (send-super :init)
   (setq _routing __routing)
   self)
  (:routing
   (&rest __routing)
   (if (keywordp (car __routing))
       (send* _routing __routing)
     (progn
       (if __routing (setq _routing (car __routing)))
       _routing)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path[] _routing
    (apply #'+ (send-all _routing :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path[] _routing
     (write-long (length _routing) s)
     (dolist (elem _routing)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path[] _routing
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _routing (let (r) (dotimes (i n) (push (instance nav_msgs::Path :init) r)) r))
     (dolist (elem- _routing)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass campusrover_msgs::RoutingPath
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::RoutingPath :md5sum-) "2572309a61917f225d08d462c3a7a191")
(setf (get campusrover_msgs::RoutingPath :datatype-) "campusrover_msgs/RoutingPath")
(setf (get campusrover_msgs::RoutingPath :request) campusrover_msgs::RoutingPathRequest)
(setf (get campusrover_msgs::RoutingPath :response) campusrover_msgs::RoutingPathResponse)

(defmethod campusrover_msgs::RoutingPathRequest
  (:response () (instance campusrover_msgs::RoutingPathResponse :init)))

(setf (get campusrover_msgs::RoutingPathRequest :md5sum-) "2572309a61917f225d08d462c3a7a191")
(setf (get campusrover_msgs::RoutingPathRequest :datatype-) "campusrover_msgs/RoutingPathRequest")
(setf (get campusrover_msgs::RoutingPathRequest :definition-)
      "string origin
string[] destination
---
nav_msgs/Path[] routing


================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

(setf (get campusrover_msgs::RoutingPathResponse :md5sum-) "2572309a61917f225d08d462c3a7a191")
(setf (get campusrover_msgs::RoutingPathResponse :datatype-) "campusrover_msgs/RoutingPathResponse")
(setf (get campusrover_msgs::RoutingPathResponse :definition-)
      "string origin
string[] destination
---
nav_msgs/Path[] routing


================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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



(provide :campusrover_msgs/RoutingPath "2572309a61917f225d08d462c3a7a191")


