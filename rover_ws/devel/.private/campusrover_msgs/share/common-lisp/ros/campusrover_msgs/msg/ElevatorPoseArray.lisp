; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-msg)


;//! \htmlinclude ElevatorPoseArray.msg.html

(cl:defclass <ElevatorPoseArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (poses
    :reader poses
    :initarg :poses
    :type (cl:vector campusrover_msgs-msg:ElevatorPose)
   :initform (cl:make-array 0 :element-type 'campusrover_msgs-msg:ElevatorPose :initial-element (cl:make-instance 'campusrover_msgs-msg:ElevatorPose))))
)

(cl:defclass ElevatorPoseArray (<ElevatorPoseArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElevatorPoseArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElevatorPoseArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-msg:<ElevatorPoseArray> is deprecated: use campusrover_msgs-msg:ElevatorPoseArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ElevatorPoseArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:header-val is deprecated.  Use campusrover_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'poses-val :lambda-list '(m))
(cl:defmethod poses-val ((m <ElevatorPoseArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:poses-val is deprecated.  Use campusrover_msgs-msg:poses instead.")
  (poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElevatorPoseArray>) ostream)
  "Serializes a message object of type '<ElevatorPoseArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElevatorPoseArray>) istream)
  "Deserializes a message object of type '<ElevatorPoseArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'campusrover_msgs-msg:ElevatorPose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElevatorPoseArray>)))
  "Returns string type for a message object of type '<ElevatorPoseArray>"
  "campusrover_msgs/ElevatorPoseArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElevatorPoseArray)))
  "Returns string type for a message object of type 'ElevatorPoseArray"
  "campusrover_msgs/ElevatorPoseArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElevatorPoseArray>)))
  "Returns md5sum for a message object of type '<ElevatorPoseArray>"
  "a3102af7ddd81e4c982d4b2294dd8845")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElevatorPoseArray)))
  "Returns md5sum for a message object of type 'ElevatorPoseArray"
  "a3102af7ddd81e4c982d4b2294dd8845")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElevatorPoseArray>)))
  "Returns full string definition for message of type '<ElevatorPoseArray>"
  (cl:format cl:nil "std_msgs/Header header~%campusrover_msgs/ElevatorPose[] poses~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: campusrover_msgs/ElevatorPose~%std_msgs/Header header~%uint32 id~%string name~%float64 depth~%float64 door_width~%geometry_msgs/Pose pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElevatorPoseArray)))
  "Returns full string definition for message of type 'ElevatorPoseArray"
  (cl:format cl:nil "std_msgs/Header header~%campusrover_msgs/ElevatorPose[] poses~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: campusrover_msgs/ElevatorPose~%std_msgs/Header header~%uint32 id~%string name~%float64 depth~%float64 door_width~%geometry_msgs/Pose pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElevatorPoseArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElevatorPoseArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ElevatorPoseArray
    (cl:cons ':header (header msg))
    (cl:cons ':poses (poses msg))
))
