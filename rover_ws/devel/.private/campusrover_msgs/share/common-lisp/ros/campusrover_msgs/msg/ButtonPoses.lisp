; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-msg)


;//! \htmlinclude ButtonPoses.msg.html

(cl:defclass <ButtonPoses> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (button_poses
    :reader button_poses
    :initarg :button_poses
    :type (cl:vector campusrover_msgs-msg:ButtonPose)
   :initform (cl:make-array 0 :element-type 'campusrover_msgs-msg:ButtonPose :initial-element (cl:make-instance 'campusrover_msgs-msg:ButtonPose))))
)

(cl:defclass ButtonPoses (<ButtonPoses>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ButtonPoses>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ButtonPoses)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-msg:<ButtonPoses> is deprecated: use campusrover_msgs-msg:ButtonPoses instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ButtonPoses>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:header-val is deprecated.  Use campusrover_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'button_poses-val :lambda-list '(m))
(cl:defmethod button_poses-val ((m <ButtonPoses>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:button_poses-val is deprecated.  Use campusrover_msgs-msg:button_poses instead.")
  (button_poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ButtonPoses>) ostream)
  "Serializes a message object of type '<ButtonPoses>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'button_poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'button_poses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ButtonPoses>) istream)
  "Deserializes a message object of type '<ButtonPoses>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'button_poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'button_poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'campusrover_msgs-msg:ButtonPose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ButtonPoses>)))
  "Returns string type for a message object of type '<ButtonPoses>"
  "campusrover_msgs/ButtonPoses")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonPoses)))
  "Returns string type for a message object of type 'ButtonPoses"
  "campusrover_msgs/ButtonPoses")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ButtonPoses>)))
  "Returns md5sum for a message object of type '<ButtonPoses>"
  "01d1633c8e2cd27ca2e62eb14d3836b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ButtonPoses)))
  "Returns md5sum for a message object of type 'ButtonPoses"
  "01d1633c8e2cd27ca2e62eb14d3836b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ButtonPoses>)))
  "Returns full string definition for message of type '<ButtonPoses>"
  (cl:format cl:nil "std_msgs/Header header~%campusrover_msgs/ButtonPose[] button_poses~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: campusrover_msgs/ButtonPose~%string label~%geometry_msgs/Pose pose~%float32 activation~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ButtonPoses)))
  "Returns full string definition for message of type 'ButtonPoses"
  (cl:format cl:nil "std_msgs/Header header~%campusrover_msgs/ButtonPose[] button_poses~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: campusrover_msgs/ButtonPose~%string label~%geometry_msgs/Pose pose~%float32 activation~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ButtonPoses>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'button_poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ButtonPoses>))
  "Converts a ROS message object to a list"
  (cl:list 'ButtonPoses
    (cl:cons ':header (header msg))
    (cl:cons ':button_poses (button_poses msg))
))
