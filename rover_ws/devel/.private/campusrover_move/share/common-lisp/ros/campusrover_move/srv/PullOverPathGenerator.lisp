; Auto-generated. Do not edit!


(cl:in-package campusrover_move-srv)


;//! \htmlinclude PullOverPathGenerator-request.msg.html

(cl:defclass <PullOverPathGenerator-request> (roslisp-msg-protocol:ros-message)
  ((pullover_forward_dis
    :reader pullover_forward_dis
    :initarg :pullover_forward_dis
    :type cl:float
    :initform 0.0)
   (pullover_shift_dis
    :reader pullover_shift_dis
    :initarg :pullover_shift_dis
    :type cl:float
    :initform 0.0)
   (reference_path
    :reader reference_path
    :initarg :reference_path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path)))
)

(cl:defclass PullOverPathGenerator-request (<PullOverPathGenerator-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PullOverPathGenerator-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PullOverPathGenerator-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_move-srv:<PullOverPathGenerator-request> is deprecated: use campusrover_move-srv:PullOverPathGenerator-request instead.")))

(cl:ensure-generic-function 'pullover_forward_dis-val :lambda-list '(m))
(cl:defmethod pullover_forward_dis-val ((m <PullOverPathGenerator-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_move-srv:pullover_forward_dis-val is deprecated.  Use campusrover_move-srv:pullover_forward_dis instead.")
  (pullover_forward_dis m))

(cl:ensure-generic-function 'pullover_shift_dis-val :lambda-list '(m))
(cl:defmethod pullover_shift_dis-val ((m <PullOverPathGenerator-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_move-srv:pullover_shift_dis-val is deprecated.  Use campusrover_move-srv:pullover_shift_dis instead.")
  (pullover_shift_dis m))

(cl:ensure-generic-function 'reference_path-val :lambda-list '(m))
(cl:defmethod reference_path-val ((m <PullOverPathGenerator-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_move-srv:reference_path-val is deprecated.  Use campusrover_move-srv:reference_path instead.")
  (reference_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PullOverPathGenerator-request>) ostream)
  "Serializes a message object of type '<PullOverPathGenerator-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pullover_forward_dis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pullover_shift_dis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reference_path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PullOverPathGenerator-request>) istream)
  "Deserializes a message object of type '<PullOverPathGenerator-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pullover_forward_dis) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pullover_shift_dis) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reference_path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PullOverPathGenerator-request>)))
  "Returns string type for a service object of type '<PullOverPathGenerator-request>"
  "campusrover_move/PullOverPathGeneratorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PullOverPathGenerator-request)))
  "Returns string type for a service object of type 'PullOverPathGenerator-request"
  "campusrover_move/PullOverPathGeneratorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PullOverPathGenerator-request>)))
  "Returns md5sum for a message object of type '<PullOverPathGenerator-request>"
  "dfefa0153fd3fa662715dead8fa03ae7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PullOverPathGenerator-request)))
  "Returns md5sum for a message object of type 'PullOverPathGenerator-request"
  "dfefa0153fd3fa662715dead8fa03ae7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PullOverPathGenerator-request>)))
  "Returns full string definition for message of type '<PullOverPathGenerator-request>"
  (cl:format cl:nil "float32 pullover_forward_dis~%float32 pullover_shift_dis~%nav_msgs/Path reference_path~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PullOverPathGenerator-request)))
  "Returns full string definition for message of type 'PullOverPathGenerator-request"
  (cl:format cl:nil "float32 pullover_forward_dis~%float32 pullover_shift_dis~%nav_msgs/Path reference_path~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PullOverPathGenerator-request>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reference_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PullOverPathGenerator-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PullOverPathGenerator-request
    (cl:cons ':pullover_forward_dis (pullover_forward_dis msg))
    (cl:cons ':pullover_shift_dis (pullover_shift_dis msg))
    (cl:cons ':reference_path (reference_path msg))
))
;//! \htmlinclude PullOverPathGenerator-response.msg.html

(cl:defclass <PullOverPathGenerator-response> (roslisp-msg-protocol:ros-message)
  ((pullover_path
    :reader pullover_path
    :initarg :pullover_path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path)))
)

(cl:defclass PullOverPathGenerator-response (<PullOverPathGenerator-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PullOverPathGenerator-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PullOverPathGenerator-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_move-srv:<PullOverPathGenerator-response> is deprecated: use campusrover_move-srv:PullOverPathGenerator-response instead.")))

(cl:ensure-generic-function 'pullover_path-val :lambda-list '(m))
(cl:defmethod pullover_path-val ((m <PullOverPathGenerator-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_move-srv:pullover_path-val is deprecated.  Use campusrover_move-srv:pullover_path instead.")
  (pullover_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PullOverPathGenerator-response>) ostream)
  "Serializes a message object of type '<PullOverPathGenerator-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pullover_path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PullOverPathGenerator-response>) istream)
  "Deserializes a message object of type '<PullOverPathGenerator-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pullover_path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PullOverPathGenerator-response>)))
  "Returns string type for a service object of type '<PullOverPathGenerator-response>"
  "campusrover_move/PullOverPathGeneratorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PullOverPathGenerator-response)))
  "Returns string type for a service object of type 'PullOverPathGenerator-response"
  "campusrover_move/PullOverPathGeneratorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PullOverPathGenerator-response>)))
  "Returns md5sum for a message object of type '<PullOverPathGenerator-response>"
  "dfefa0153fd3fa662715dead8fa03ae7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PullOverPathGenerator-response)))
  "Returns md5sum for a message object of type 'PullOverPathGenerator-response"
  "dfefa0153fd3fa662715dead8fa03ae7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PullOverPathGenerator-response>)))
  "Returns full string definition for message of type '<PullOverPathGenerator-response>"
  (cl:format cl:nil "nav_msgs/Path pullover_path~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PullOverPathGenerator-response)))
  "Returns full string definition for message of type 'PullOverPathGenerator-response"
  (cl:format cl:nil "nav_msgs/Path pullover_path~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PullOverPathGenerator-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pullover_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PullOverPathGenerator-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PullOverPathGenerator-response
    (cl:cons ':pullover_path (pullover_path msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PullOverPathGenerator)))
  'PullOverPathGenerator-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PullOverPathGenerator)))
  'PullOverPathGenerator-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PullOverPathGenerator)))
  "Returns string type for a service object of type '<PullOverPathGenerator>"
  "campusrover_move/PullOverPathGenerator")