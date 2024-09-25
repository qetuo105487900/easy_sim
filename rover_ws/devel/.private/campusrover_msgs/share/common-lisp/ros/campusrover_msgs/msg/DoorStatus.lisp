; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-msg)


;//! \htmlinclude DoorStatus.msg.html

(cl:defclass <DoorStatus> (roslisp-msg-protocol:ros-message)
  ((doors_pose
    :reader doors_pose
    :initarg :doors_pose
    :type geometry_msgs-msg:PoseArray
    :initform (cl:make-instance 'geometry_msgs-msg:PoseArray))
   (doors_status
    :reader doors_status
    :initarg :doors_status
    :type (cl:vector std_msgs-msg:String)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:String :initial-element (cl:make-instance 'std_msgs-msg:String))))
)

(cl:defclass DoorStatus (<DoorStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DoorStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DoorStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-msg:<DoorStatus> is deprecated: use campusrover_msgs-msg:DoorStatus instead.")))

(cl:ensure-generic-function 'doors_pose-val :lambda-list '(m))
(cl:defmethod doors_pose-val ((m <DoorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:doors_pose-val is deprecated.  Use campusrover_msgs-msg:doors_pose instead.")
  (doors_pose m))

(cl:ensure-generic-function 'doors_status-val :lambda-list '(m))
(cl:defmethod doors_status-val ((m <DoorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:doors_status-val is deprecated.  Use campusrover_msgs-msg:doors_status instead.")
  (doors_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DoorStatus>) ostream)
  "Serializes a message object of type '<DoorStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'doors_pose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'doors_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'doors_status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DoorStatus>) istream)
  "Deserializes a message object of type '<DoorStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'doors_pose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'doors_status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'doors_status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:String))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DoorStatus>)))
  "Returns string type for a message object of type '<DoorStatus>"
  "campusrover_msgs/DoorStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoorStatus)))
  "Returns string type for a message object of type 'DoorStatus"
  "campusrover_msgs/DoorStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DoorStatus>)))
  "Returns md5sum for a message object of type '<DoorStatus>"
  "392ed9cecb7f2eb557a135d59e4111da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DoorStatus)))
  "Returns md5sum for a message object of type 'DoorStatus"
  "392ed9cecb7f2eb557a135d59e4111da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DoorStatus>)))
  "Returns full string definition for message of type '<DoorStatus>"
  (cl:format cl:nil "geometry_msgs/PoseArray doors_pose~%~%std_msgs/String[] doors_status~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DoorStatus)))
  "Returns full string definition for message of type 'DoorStatus"
  (cl:format cl:nil "geometry_msgs/PoseArray doors_pose~%~%std_msgs/String[] doors_status~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DoorStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'doors_pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'doors_status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DoorStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'DoorStatus
    (cl:cons ':doors_pose (doors_pose msg))
    (cl:cons ':doors_status (doors_status msg))
))
