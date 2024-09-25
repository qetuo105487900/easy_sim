; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-msg)


;//! \htmlinclude InDemoStatus.msg.html

(cl:defclass <InDemoStatus> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (controller
    :reader controller
    :initarg :controller
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (target_pose_data
    :reader target_pose_data
    :initarg :target_pose_data
    :type campusrover_msgs-msg:PoseWithId
    :initform (cl:make-instance 'campusrover_msgs-msg:PoseWithId))
   (current_pose_data
    :reader current_pose_data
    :initarg :current_pose_data
    :type campusrover_msgs-msg:PoseWithId
    :initform (cl:make-instance 'campusrover_msgs-msg:PoseWithId))
   (mid_target_pose_data
    :reader mid_target_pose_data
    :initarg :mid_target_pose_data
    :type campusrover_msgs-msg:PoseWithId
    :initform (cl:make-instance 'campusrover_msgs-msg:PoseWithId)))
)

(cl:defclass InDemoStatus (<InDemoStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InDemoStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InDemoStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-msg:<InDemoStatus> is deprecated: use campusrover_msgs-msg:InDemoStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <InDemoStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:status-val is deprecated.  Use campusrover_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'controller-val :lambda-list '(m))
(cl:defmethod controller-val ((m <InDemoStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:controller-val is deprecated.  Use campusrover_msgs-msg:controller instead.")
  (controller m))

(cl:ensure-generic-function 'target_pose_data-val :lambda-list '(m))
(cl:defmethod target_pose_data-val ((m <InDemoStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:target_pose_data-val is deprecated.  Use campusrover_msgs-msg:target_pose_data instead.")
  (target_pose_data m))

(cl:ensure-generic-function 'current_pose_data-val :lambda-list '(m))
(cl:defmethod current_pose_data-val ((m <InDemoStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:current_pose_data-val is deprecated.  Use campusrover_msgs-msg:current_pose_data instead.")
  (current_pose_data m))

(cl:ensure-generic-function 'mid_target_pose_data-val :lambda-list '(m))
(cl:defmethod mid_target_pose_data-val ((m <InDemoStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:mid_target_pose_data-val is deprecated.  Use campusrover_msgs-msg:mid_target_pose_data instead.")
  (mid_target_pose_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InDemoStatus>) ostream)
  "Serializes a message object of type '<InDemoStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'controller) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pose_data) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_pose_data) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mid_target_pose_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InDemoStatus>) istream)
  "Deserializes a message object of type '<InDemoStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'controller) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pose_data) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_pose_data) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mid_target_pose_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InDemoStatus>)))
  "Returns string type for a message object of type '<InDemoStatus>"
  "campusrover_msgs/InDemoStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InDemoStatus)))
  "Returns string type for a message object of type 'InDemoStatus"
  "campusrover_msgs/InDemoStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InDemoStatus>)))
  "Returns md5sum for a message object of type '<InDemoStatus>"
  "34ab88de0bd0120458bb8839561e2f23")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InDemoStatus)))
  "Returns md5sum for a message object of type 'InDemoStatus"
  "34ab88de0bd0120458bb8839561e2f23")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InDemoStatus>)))
  "Returns full string definition for message of type '<InDemoStatus>"
  (cl:format cl:nil "std_msgs/String status~%std_msgs/String controller~%campusrover_msgs/PoseWithId target_pose_data~%campusrover_msgs/PoseWithId current_pose_data~%campusrover_msgs/PoseWithId mid_target_pose_data~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: campusrover_msgs/PoseWithId~%std_msgs/String id~%std_msgs/String type~%std_msgs/Int16 floor~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: std_msgs/Int16~%int16 data~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InDemoStatus)))
  "Returns full string definition for message of type 'InDemoStatus"
  (cl:format cl:nil "std_msgs/String status~%std_msgs/String controller~%campusrover_msgs/PoseWithId target_pose_data~%campusrover_msgs/PoseWithId current_pose_data~%campusrover_msgs/PoseWithId mid_target_pose_data~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: campusrover_msgs/PoseWithId~%std_msgs/String id~%std_msgs/String type~%std_msgs/Int16 floor~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: std_msgs/Int16~%int16 data~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InDemoStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'controller))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pose_data))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_pose_data))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mid_target_pose_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InDemoStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'InDemoStatus
    (cl:cons ':status (status msg))
    (cl:cons ':controller (controller msg))
    (cl:cons ':target_pose_data (target_pose_data msg))
    (cl:cons ':current_pose_data (current_pose_data msg))
    (cl:cons ':mid_target_pose_data (mid_target_pose_data msg))
))
