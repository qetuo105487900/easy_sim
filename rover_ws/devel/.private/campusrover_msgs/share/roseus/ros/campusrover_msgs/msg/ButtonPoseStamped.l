;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::ButtonPoseStamped)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'ButtonPoseStamped (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::BUTTONPOSESTAMPED")
  (make-package "CAMPUSROVER_MSGS::BUTTONPOSESTAMPED"))

(in-package "ROS")
;;//! \htmlinclude ButtonPoseStamped.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))
(if (not (find-package "VISION_MSGS"))
  (ros::roseus-add-msgs "vision_msgs"))


(defclass campusrover_msgs::ButtonPoseStamped
  :super ros::object
  :slots (_header _label _pose _activation _boundingbox ))

(defmethod campusrover_msgs::ButtonPoseStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:label __label) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:activation __activation) 0.0)
    ((:boundingbox __boundingbox) (instance vision_msgs::BoundingBox2D :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _label (string __label))
   (setq _pose __pose)
   (setq _activation (float __activation))
   (setq _boundingbox __boundingbox)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
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
  (:activation
   (&optional __activation)
   (if __activation (setq _activation __activation)) _activation)
  (:boundingbox
   (&rest __boundingbox)
   (if (keywordp (car __boundingbox))
       (send* _boundingbox __boundingbox)
     (progn
       (if __boundingbox (setq _boundingbox (car __boundingbox)))
       _boundingbox)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _label
    4 (length _label)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; float32 _activation
    4
    ;; vision_msgs/BoundingBox2D _boundingbox
    (send _boundingbox :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; float32 _activation
       (sys::poke _activation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; vision_msgs/BoundingBox2D _boundingbox
       (send _boundingbox :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float32 _activation
     (setq _activation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; vision_msgs/BoundingBox2D _boundingbox
     (send _boundingbox :deserialize buf ptr-) (incf ptr- (send _boundingbox :serialization-length))
   ;;
   self)
  )

(setf (get campusrover_msgs::ButtonPoseStamped :md5sum-) "fe6b8cab77bdc70f67dccb2d1f298f1b")
(setf (get campusrover_msgs::ButtonPoseStamped :datatype-) "campusrover_msgs/ButtonPoseStamped")
(setf (get campusrover_msgs::ButtonPoseStamped :definition-)
      "std_msgs/Header header
string label
geometry_msgs/Pose pose
float32 activation
vision_msgs/BoundingBox2D boundingbox
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
MSG: vision_msgs/BoundingBox2D
# A 2D bounding box that can be rotated about its center.
# All dimensions are in pixels, but represented using floating-point
#   values to allow sub-pixel precision. If an exact pixel crop is required
#   for a rotated bounding box, it can be calculated using Bresenham's line
#   algorithm.

# The 2D position (in pixels) and orientation of the bounding box center.
geometry_msgs/Pose2D center

# The size (in pixels) of the bounding box surrounding the object relative
#   to the pose of its center.
float64 size_x
float64 size_y

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

")



(provide :campusrover_msgs/ButtonPoseStamped "fe6b8cab77bdc70f67dccb2d1f298f1b")


