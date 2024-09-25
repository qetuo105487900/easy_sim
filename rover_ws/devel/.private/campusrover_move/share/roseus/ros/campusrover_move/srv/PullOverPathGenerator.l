;; Auto-generated. Do not edit!


(when (boundp 'campusrover_move::PullOverPathGenerator)
  (if (not (find-package "CAMPUSROVER_MOVE"))
    (make-package "CAMPUSROVER_MOVE"))
  (shadow 'PullOverPathGenerator (find-package "CAMPUSROVER_MOVE")))
(unless (find-package "CAMPUSROVER_MOVE::PULLOVERPATHGENERATOR")
  (make-package "CAMPUSROVER_MOVE::PULLOVERPATHGENERATOR"))
(unless (find-package "CAMPUSROVER_MOVE::PULLOVERPATHGENERATORREQUEST")
  (make-package "CAMPUSROVER_MOVE::PULLOVERPATHGENERATORREQUEST"))
(unless (find-package "CAMPUSROVER_MOVE::PULLOVERPATHGENERATORRESPONSE")
  (make-package "CAMPUSROVER_MOVE::PULLOVERPATHGENERATORRESPONSE"))

(in-package "ROS")

(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass campusrover_move::PullOverPathGeneratorRequest
  :super ros::object
  :slots (_pullover_forward_dis _pullover_shift_dis _reference_path ))

(defmethod campusrover_move::PullOverPathGeneratorRequest
  (:init
   (&key
    ((:pullover_forward_dis __pullover_forward_dis) 0.0)
    ((:pullover_shift_dis __pullover_shift_dis) 0.0)
    ((:reference_path __reference_path) (instance nav_msgs::Path :init))
    )
   (send-super :init)
   (setq _pullover_forward_dis (float __pullover_forward_dis))
   (setq _pullover_shift_dis (float __pullover_shift_dis))
   (setq _reference_path __reference_path)
   self)
  (:pullover_forward_dis
   (&optional __pullover_forward_dis)
   (if __pullover_forward_dis (setq _pullover_forward_dis __pullover_forward_dis)) _pullover_forward_dis)
  (:pullover_shift_dis
   (&optional __pullover_shift_dis)
   (if __pullover_shift_dis (setq _pullover_shift_dis __pullover_shift_dis)) _pullover_shift_dis)
  (:reference_path
   (&rest __reference_path)
   (if (keywordp (car __reference_path))
       (send* _reference_path __reference_path)
     (progn
       (if __reference_path (setq _reference_path (car __reference_path)))
       _reference_path)))
  (:serialization-length
   ()
   (+
    ;; float32 _pullover_forward_dis
    4
    ;; float32 _pullover_shift_dis
    4
    ;; nav_msgs/Path _reference_path
    (send _reference_path :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _pullover_forward_dis
       (sys::poke _pullover_forward_dis (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pullover_shift_dis
       (sys::poke _pullover_shift_dis (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; nav_msgs/Path _reference_path
       (send _reference_path :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pullover_forward_dis
     (setq _pullover_forward_dis (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pullover_shift_dis
     (setq _pullover_shift_dis (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; nav_msgs/Path _reference_path
     (send _reference_path :deserialize buf ptr-) (incf ptr- (send _reference_path :serialization-length))
   ;;
   self)
  )

(defclass campusrover_move::PullOverPathGeneratorResponse
  :super ros::object
  :slots (_pullover_path ))

(defmethod campusrover_move::PullOverPathGeneratorResponse
  (:init
   (&key
    ((:pullover_path __pullover_path) (instance nav_msgs::Path :init))
    )
   (send-super :init)
   (setq _pullover_path __pullover_path)
   self)
  (:pullover_path
   (&rest __pullover_path)
   (if (keywordp (car __pullover_path))
       (send* _pullover_path __pullover_path)
     (progn
       (if __pullover_path (setq _pullover_path (car __pullover_path)))
       _pullover_path)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path _pullover_path
    (send _pullover_path :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path _pullover_path
       (send _pullover_path :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path _pullover_path
     (send _pullover_path :deserialize buf ptr-) (incf ptr- (send _pullover_path :serialization-length))
   ;;
   self)
  )

(defclass campusrover_move::PullOverPathGenerator
  :super ros::object
  :slots ())

(setf (get campusrover_move::PullOverPathGenerator :md5sum-) "dfefa0153fd3fa662715dead8fa03ae7")
(setf (get campusrover_move::PullOverPathGenerator :datatype-) "campusrover_move/PullOverPathGenerator")
(setf (get campusrover_move::PullOverPathGenerator :request) campusrover_move::PullOverPathGeneratorRequest)
(setf (get campusrover_move::PullOverPathGenerator :response) campusrover_move::PullOverPathGeneratorResponse)

(defmethod campusrover_move::PullOverPathGeneratorRequest
  (:response () (instance campusrover_move::PullOverPathGeneratorResponse :init)))

(setf (get campusrover_move::PullOverPathGeneratorRequest :md5sum-) "dfefa0153fd3fa662715dead8fa03ae7")
(setf (get campusrover_move::PullOverPathGeneratorRequest :datatype-) "campusrover_move/PullOverPathGeneratorRequest")
(setf (get campusrover_move::PullOverPathGeneratorRequest :definition-)
      "float32 pullover_forward_dis
float32 pullover_shift_dis
nav_msgs/Path reference_path

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
---
nav_msgs/Path pullover_path

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

(setf (get campusrover_move::PullOverPathGeneratorResponse :md5sum-) "dfefa0153fd3fa662715dead8fa03ae7")
(setf (get campusrover_move::PullOverPathGeneratorResponse :datatype-) "campusrover_move/PullOverPathGeneratorResponse")
(setf (get campusrover_move::PullOverPathGeneratorResponse :definition-)
      "float32 pullover_forward_dis
float32 pullover_shift_dis
nav_msgs/Path reference_path

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
---
nav_msgs/Path pullover_path

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



(provide :campusrover_move/PullOverPathGenerator "dfefa0153fd3fa662715dead8fa03ae7")


