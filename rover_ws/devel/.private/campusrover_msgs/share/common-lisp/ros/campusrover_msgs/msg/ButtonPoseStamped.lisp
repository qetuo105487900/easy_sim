; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-msg)


;//! \htmlinclude ButtonPoseStamped.msg.html

(cl:defclass <ButtonPoseStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (label
    :reader label
    :initarg :label
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (activation
    :reader activation
    :initarg :activation
    :type cl:float
    :initform 0.0)
   (boundingbox
    :reader boundingbox
    :initarg :boundingbox
    :type vision_msgs-msg:BoundingBox2D
    :initform (cl:make-instance 'vision_msgs-msg:BoundingBox2D)))
)

(cl:defclass ButtonPoseStamped (<ButtonPoseStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ButtonPoseStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ButtonPoseStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-msg:<ButtonPoseStamped> is deprecated: use campusrover_msgs-msg:ButtonPoseStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ButtonPoseStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:header-val is deprecated.  Use campusrover_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <ButtonPoseStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:label-val is deprecated.  Use campusrover_msgs-msg:label instead.")
  (label m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <ButtonPoseStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:pose-val is deprecated.  Use campusrover_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'activation-val :lambda-list '(m))
(cl:defmethod activation-val ((m <ButtonPoseStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:activation-val is deprecated.  Use campusrover_msgs-msg:activation instead.")
  (activation m))

(cl:ensure-generic-function 'boundingbox-val :lambda-list '(m))
(cl:defmethod boundingbox-val ((m <ButtonPoseStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:boundingbox-val is deprecated.  Use campusrover_msgs-msg:boundingbox instead.")
  (boundingbox m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ButtonPoseStamped>) ostream)
  "Serializes a message object of type '<ButtonPoseStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'activation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'boundingbox) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ButtonPoseStamped>) istream)
  "Deserializes a message object of type '<ButtonPoseStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'activation) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'boundingbox) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ButtonPoseStamped>)))
  "Returns string type for a message object of type '<ButtonPoseStamped>"
  "campusrover_msgs/ButtonPoseStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonPoseStamped)))
  "Returns string type for a message object of type 'ButtonPoseStamped"
  "campusrover_msgs/ButtonPoseStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ButtonPoseStamped>)))
  "Returns md5sum for a message object of type '<ButtonPoseStamped>"
  "fe6b8cab77bdc70f67dccb2d1f298f1b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ButtonPoseStamped)))
  "Returns md5sum for a message object of type 'ButtonPoseStamped"
  "fe6b8cab77bdc70f67dccb2d1f298f1b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ButtonPoseStamped>)))
  "Returns full string definition for message of type '<ButtonPoseStamped>"
  (cl:format cl:nil "std_msgs/Header header~%string label~%geometry_msgs/Pose pose~%float32 activation~%vision_msgs/BoundingBox2D boundingbox~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: vision_msgs/BoundingBox2D~%# A 2D bounding box that can be rotated about its center.~%# All dimensions are in pixels, but represented using floating-point~%#   values to allow sub-pixel precision. If an exact pixel crop is required~%#   for a rotated bounding box, it can be calculated using Bresenham's line~%#   algorithm.~%~%# The 2D position (in pixels) and orientation of the bounding box center.~%geometry_msgs/Pose2D center~%~%# The size (in pixels) of the bounding box surrounding the object relative~%#   to the pose of its center.~%float64 size_x~%float64 size_y~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ButtonPoseStamped)))
  "Returns full string definition for message of type 'ButtonPoseStamped"
  (cl:format cl:nil "std_msgs/Header header~%string label~%geometry_msgs/Pose pose~%float32 activation~%vision_msgs/BoundingBox2D boundingbox~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: vision_msgs/BoundingBox2D~%# A 2D bounding box that can be rotated about its center.~%# All dimensions are in pixels, but represented using floating-point~%#   values to allow sub-pixel precision. If an exact pixel crop is required~%#   for a rotated bounding box, it can be calculated using Bresenham's line~%#   algorithm.~%~%# The 2D position (in pixels) and orientation of the bounding box center.~%geometry_msgs/Pose2D center~%~%# The size (in pixels) of the bounding box surrounding the object relative~%#   to the pose of its center.~%float64 size_x~%float64 size_y~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ButtonPoseStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'label))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'boundingbox))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ButtonPoseStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'ButtonPoseStamped
    (cl:cons ':header (header msg))
    (cl:cons ':label (label msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':activation (activation msg))
    (cl:cons ':boundingbox (boundingbox msg))
))
