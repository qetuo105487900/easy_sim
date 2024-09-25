;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::PoseWithId)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'PoseWithId (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::POSEWITHID")
  (make-package "CAMPUSROVER_MSGS::POSEWITHID"))

(in-package "ROS")
;;//! \htmlinclude PoseWithId.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass campusrover_msgs::PoseWithId
  :super ros::object
  :slots (_id _type _floor _pose ))

(defmethod campusrover_msgs::PoseWithId
  (:init
   (&key
    ((:id __id) (instance std_msgs::String :init))
    ((:type __type) (instance std_msgs::String :init))
    ((:floor __floor) (instance std_msgs::Int16 :init))
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _id __id)
   (setq _type __type)
   (setq _floor __floor)
   (setq _pose __pose)
   self)
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:floor
   (&rest __floor)
   (if (keywordp (car __floor))
       (send* _floor __floor)
     (progn
       (if __floor (setq _floor (car __floor)))
       _floor)))
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
    ;; std_msgs/String _id
    (send _id :serialization-length)
    ;; std_msgs/String _type
    (send _type :serialization-length)
    ;; std_msgs/Int16 _floor
    (send _floor :serialization-length)
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _id
       (send _id :serialize s)
     ;; std_msgs/String _type
       (send _type :serialize s)
     ;; std_msgs/Int16 _floor
       (send _floor :serialize s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; std_msgs/String _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; std_msgs/Int16 _floor
     (send _floor :deserialize buf ptr-) (incf ptr- (send _floor :serialization-length))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get campusrover_msgs::PoseWithId :md5sum-) "2ea613eca72c87e9e2e85790826a3bbc")
(setf (get campusrover_msgs::PoseWithId :datatype-) "campusrover_msgs/PoseWithId")
(setf (get campusrover_msgs::PoseWithId :definition-)
      "std_msgs/String id
std_msgs/String type
std_msgs/Int16 floor
geometry_msgs/PoseStamped pose

================================================================================
MSG: std_msgs/String
string data

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



(provide :campusrover_msgs/PoseWithId "2ea613eca72c87e9e2e85790826a3bbc")


