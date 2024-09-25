; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-msg)


;//! \htmlinclude TrackedObstacleArray.msg.html

(cl:defclass <TrackedObstacleArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (obstacles
    :reader obstacles
    :initarg :obstacles
    :type (cl:vector campusrover_msgs-msg:TrackedObstacle)
   :initform (cl:make-array 0 :element-type 'campusrover_msgs-msg:TrackedObstacle :initial-element (cl:make-instance 'campusrover_msgs-msg:TrackedObstacle))))
)

(cl:defclass TrackedObstacleArray (<TrackedObstacleArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackedObstacleArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackedObstacleArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-msg:<TrackedObstacleArray> is deprecated: use campusrover_msgs-msg:TrackedObstacleArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrackedObstacleArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:header-val is deprecated.  Use campusrover_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'obstacles-val :lambda-list '(m))
(cl:defmethod obstacles-val ((m <TrackedObstacleArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:obstacles-val is deprecated.  Use campusrover_msgs-msg:obstacles instead.")
  (obstacles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackedObstacleArray>) ostream)
  "Serializes a message object of type '<TrackedObstacleArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackedObstacleArray>) istream)
  "Deserializes a message object of type '<TrackedObstacleArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'campusrover_msgs-msg:TrackedObstacle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackedObstacleArray>)))
  "Returns string type for a message object of type '<TrackedObstacleArray>"
  "campusrover_msgs/TrackedObstacleArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackedObstacleArray)))
  "Returns string type for a message object of type 'TrackedObstacleArray"
  "campusrover_msgs/TrackedObstacleArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackedObstacleArray>)))
  "Returns md5sum for a message object of type '<TrackedObstacleArray>"
  "9b4a0e1c63af778bd3ddd8fe92cac32b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackedObstacleArray)))
  "Returns md5sum for a message object of type 'TrackedObstacleArray"
  "9b4a0e1c63af778bd3ddd8fe92cac32b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackedObstacleArray>)))
  "Returns full string definition for message of type '<TrackedObstacleArray>"
  (cl:format cl:nil "std_msgs/Header header~%campusrover_msgs/TrackedObstacle[] obstacles~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: campusrover_msgs/TrackedObstacle~%std_msgs/Header header~%uint32 id~%uint16 label~%uint16 LABEL_PERSON = 1~%uint16 LABEL_BICYCLE = 2~%uint16 LABEL_CAR = 3~%uint16 LABEL_MOTORCYCLE = 4~%geometry_msgs/Pose pose~%geometry_msgs/Vector3 dimensions~%geometry_msgs/Twist velocity~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackedObstacleArray)))
  "Returns full string definition for message of type 'TrackedObstacleArray"
  (cl:format cl:nil "std_msgs/Header header~%campusrover_msgs/TrackedObstacle[] obstacles~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: campusrover_msgs/TrackedObstacle~%std_msgs/Header header~%uint32 id~%uint16 label~%uint16 LABEL_PERSON = 1~%uint16 LABEL_BICYCLE = 2~%uint16 LABEL_CAR = 3~%uint16 LABEL_MOTORCYCLE = 4~%geometry_msgs/Pose pose~%geometry_msgs/Vector3 dimensions~%geometry_msgs/Twist velocity~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackedObstacleArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackedObstacleArray>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackedObstacleArray
    (cl:cons ':header (header msg))
    (cl:cons ':obstacles (obstacles msg))
))
