;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::TrackedObstacle)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'TrackedObstacle (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::TRACKEDOBSTACLE")
  (make-package "CAMPUSROVER_MSGS::TRACKEDOBSTACLE"))

(in-package "ROS")
;;//! \htmlinclude TrackedObstacle.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*LABEL_PERSON*" (find-package "CAMPUSROVER_MSGS::TRACKEDOBSTACLE"))
(shadow '*LABEL_PERSON* (find-package "CAMPUSROVER_MSGS::TRACKEDOBSTACLE"))
(defconstant campusrover_msgs::TrackedObstacle::*LABEL_PERSON* 1)
(intern "*LABEL_BICYCLE*" (find-package "CAMPUSROVER_MSGS::TRACKEDOBSTACLE"))
(shadow '*LABEL_BICYCLE* (find-package "CAMPUSROVER_MSGS::TRACKEDOBSTACLE"))
(defconstant campusrover_msgs::TrackedObstacle::*LABEL_BICYCLE* 2)
(intern "*LABEL_CAR*" (find-package "CAMPUSROVER_MSGS::TRACKEDOBSTACLE"))
(shadow '*LABEL_CAR* (find-package "CAMPUSROVER_MSGS::TRACKEDOBSTACLE"))
(defconstant campusrover_msgs::TrackedObstacle::*LABEL_CAR* 3)
(intern "*LABEL_MOTORCYCLE*" (find-package "CAMPUSROVER_MSGS::TRACKEDOBSTACLE"))
(shadow '*LABEL_MOTORCYCLE* (find-package "CAMPUSROVER_MSGS::TRACKEDOBSTACLE"))
(defconstant campusrover_msgs::TrackedObstacle::*LABEL_MOTORCYCLE* 4)

(defun campusrover_msgs::TrackedObstacle-to-symbol (const)
  (cond
        ((= const 1) 'campusrover_msgs::TrackedObstacle::*LABEL_PERSON*)
        ((= const 2) 'campusrover_msgs::TrackedObstacle::*LABEL_BICYCLE*)
        ((= const 3) 'campusrover_msgs::TrackedObstacle::*LABEL_CAR*)
        ((= const 4) 'campusrover_msgs::TrackedObstacle::*LABEL_MOTORCYCLE*)
        (t nil)))

(defclass campusrover_msgs::TrackedObstacle
  :super ros::object
  :slots (_header _id _label _pose _dimensions _velocity ))

(defmethod campusrover_msgs::TrackedObstacle
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:label __label) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:dimensions __dimensions) (instance geometry_msgs::Vector3 :init))
    ((:velocity __velocity) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _label (round __label))
   (setq _pose __pose)
   (setq _dimensions __dimensions)
   (setq _velocity __velocity)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:dimensions
   (&rest __dimensions)
   (if (keywordp (car __dimensions))
       (send* _dimensions __dimensions)
     (progn
       (if __dimensions (setq _dimensions (car __dimensions)))
       _dimensions)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _id
    4
    ;; uint16 _label
    2
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Vector3 _dimensions
    (send _dimensions :serialization-length)
    ;; geometry_msgs/Twist _velocity
    (send _velocity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _id
       (write-long _id s)
     ;; uint16 _label
       (write-word _label s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Vector3 _dimensions
       (send _dimensions :serialize s)
     ;; geometry_msgs/Twist _velocity
       (send _velocity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _label
     (setq _label (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Vector3 _dimensions
     (send _dimensions :deserialize buf ptr-) (incf ptr- (send _dimensions :serialization-length))
   ;; geometry_msgs/Twist _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;;
   self)
  )

(setf (get campusrover_msgs::TrackedObstacle :md5sum-) "f7759ef59b0acb710f3a8cee7676c8df")
(setf (get campusrover_msgs::TrackedObstacle :datatype-) "campusrover_msgs/TrackedObstacle")
(setf (get campusrover_msgs::TrackedObstacle :definition-)
      "std_msgs/Header header
uint32 id
uint16 label
uint16 LABEL_PERSON = 1
uint16 LABEL_BICYCLE = 2
uint16 LABEL_CAR = 3
uint16 LABEL_MOTORCYCLE = 4
geometry_msgs/Pose pose
geometry_msgs/Vector3 dimensions
geometry_msgs/Twist velocity
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
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

")



(provide :campusrover_msgs/TrackedObstacle "f7759ef59b0acb710f3a8cee7676c8df")


