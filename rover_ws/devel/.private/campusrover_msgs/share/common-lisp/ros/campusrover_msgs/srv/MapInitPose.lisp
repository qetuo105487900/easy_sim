; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude MapInitPose-request.msg.html

(cl:defclass <MapInitPose-request> (roslisp-msg-protocol:ros-message)
  ((building
    :reader building
    :initarg :building
    :type cl:string
    :initform "")
   (floor
    :reader floor
    :initarg :floor
    :type cl:string
    :initform "")
   (init_point
    :reader init_point
    :initarg :init_point
    :type cl:string
    :initform ""))
)

(cl:defclass MapInitPose-request (<MapInitPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapInitPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapInitPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<MapInitPose-request> is deprecated: use campusrover_msgs-srv:MapInitPose-request instead.")))

(cl:ensure-generic-function 'building-val :lambda-list '(m))
(cl:defmethod building-val ((m <MapInitPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:building-val is deprecated.  Use campusrover_msgs-srv:building instead.")
  (building m))

(cl:ensure-generic-function 'floor-val :lambda-list '(m))
(cl:defmethod floor-val ((m <MapInitPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:floor-val is deprecated.  Use campusrover_msgs-srv:floor instead.")
  (floor m))

(cl:ensure-generic-function 'init_point-val :lambda-list '(m))
(cl:defmethod init_point-val ((m <MapInitPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:init_point-val is deprecated.  Use campusrover_msgs-srv:init_point instead.")
  (init_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapInitPose-request>) ostream)
  "Serializes a message object of type '<MapInitPose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'building))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'building))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'floor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'floor))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'init_point))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'init_point))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapInitPose-request>) istream)
  "Deserializes a message object of type '<MapInitPose-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'building) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'building) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'floor) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'floor) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'init_point) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'init_point) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapInitPose-request>)))
  "Returns string type for a service object of type '<MapInitPose-request>"
  "campusrover_msgs/MapInitPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapInitPose-request)))
  "Returns string type for a service object of type 'MapInitPose-request"
  "campusrover_msgs/MapInitPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapInitPose-request>)))
  "Returns md5sum for a message object of type '<MapInitPose-request>"
  "9e35deb61797247ebf906a6ce49e2644")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapInitPose-request)))
  "Returns md5sum for a message object of type 'MapInitPose-request"
  "9e35deb61797247ebf906a6ce49e2644")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapInitPose-request>)))
  "Returns full string definition for message of type '<MapInitPose-request>"
  (cl:format cl:nil "string building~%string floor~%string init_point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapInitPose-request)))
  "Returns full string definition for message of type 'MapInitPose-request"
  (cl:format cl:nil "string building~%string floor~%string init_point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapInitPose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'building))
     4 (cl:length (cl:slot-value msg 'floor))
     4 (cl:length (cl:slot-value msg 'init_point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapInitPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MapInitPose-request
    (cl:cons ':building (building msg))
    (cl:cons ':floor (floor msg))
    (cl:cons ':init_point (init_point msg))
))
;//! \htmlinclude MapInitPose-response.msg.html

(cl:defclass <MapInitPose-response> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass MapInitPose-response (<MapInitPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapInitPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapInitPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<MapInitPose-response> is deprecated: use campusrover_msgs-srv:MapInitPose-response instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <MapInitPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:pose-val is deprecated.  Use campusrover_msgs-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapInitPose-response>) ostream)
  "Serializes a message object of type '<MapInitPose-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapInitPose-response>) istream)
  "Deserializes a message object of type '<MapInitPose-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapInitPose-response>)))
  "Returns string type for a service object of type '<MapInitPose-response>"
  "campusrover_msgs/MapInitPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapInitPose-response)))
  "Returns string type for a service object of type 'MapInitPose-response"
  "campusrover_msgs/MapInitPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapInitPose-response>)))
  "Returns md5sum for a message object of type '<MapInitPose-response>"
  "9e35deb61797247ebf906a6ce49e2644")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapInitPose-response)))
  "Returns md5sum for a message object of type 'MapInitPose-response"
  "9e35deb61797247ebf906a6ce49e2644")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapInitPose-response>)))
  "Returns full string definition for message of type '<MapInitPose-response>"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapInitPose-response)))
  "Returns full string definition for message of type 'MapInitPose-response"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapInitPose-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapInitPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MapInitPose-response
    (cl:cons ':pose (pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MapInitPose)))
  'MapInitPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MapInitPose)))
  'MapInitPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapInitPose)))
  "Returns string type for a service object of type '<MapInitPose>"
  "campusrover_msgs/MapInitPose")