; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude RoutingPath-request.msg.html

(cl:defclass <RoutingPath-request> (roslisp-msg-protocol:ros-message)
  ((origin
    :reader origin
    :initarg :origin
    :type cl:string
    :initform "")
   (destination
    :reader destination
    :initarg :destination
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass RoutingPath-request (<RoutingPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoutingPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoutingPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<RoutingPath-request> is deprecated: use campusrover_msgs-srv:RoutingPath-request instead.")))

(cl:ensure-generic-function 'origin-val :lambda-list '(m))
(cl:defmethod origin-val ((m <RoutingPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:origin-val is deprecated.  Use campusrover_msgs-srv:origin instead.")
  (origin m))

(cl:ensure-generic-function 'destination-val :lambda-list '(m))
(cl:defmethod destination-val ((m <RoutingPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:destination-val is deprecated.  Use campusrover_msgs-srv:destination instead.")
  (destination m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoutingPath-request>) ostream)
  "Serializes a message object of type '<RoutingPath-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'origin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'origin))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'destination))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'destination))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoutingPath-request>) istream)
  "Deserializes a message object of type '<RoutingPath-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'origin) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'origin) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'destination) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'destination)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoutingPath-request>)))
  "Returns string type for a service object of type '<RoutingPath-request>"
  "campusrover_msgs/RoutingPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoutingPath-request)))
  "Returns string type for a service object of type 'RoutingPath-request"
  "campusrover_msgs/RoutingPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoutingPath-request>)))
  "Returns md5sum for a message object of type '<RoutingPath-request>"
  "2572309a61917f225d08d462c3a7a191")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoutingPath-request)))
  "Returns md5sum for a message object of type 'RoutingPath-request"
  "2572309a61917f225d08d462c3a7a191")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoutingPath-request>)))
  "Returns full string definition for message of type '<RoutingPath-request>"
  (cl:format cl:nil "string origin~%string[] destination~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoutingPath-request)))
  "Returns full string definition for message of type 'RoutingPath-request"
  (cl:format cl:nil "string origin~%string[] destination~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoutingPath-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'origin))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'destination) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoutingPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RoutingPath-request
    (cl:cons ':origin (origin msg))
    (cl:cons ':destination (destination msg))
))
;//! \htmlinclude RoutingPath-response.msg.html

(cl:defclass <RoutingPath-response> (roslisp-msg-protocol:ros-message)
  ((routing
    :reader routing
    :initarg :routing
    :type (cl:vector nav_msgs-msg:Path)
   :initform (cl:make-array 0 :element-type 'nav_msgs-msg:Path :initial-element (cl:make-instance 'nav_msgs-msg:Path))))
)

(cl:defclass RoutingPath-response (<RoutingPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoutingPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoutingPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<RoutingPath-response> is deprecated: use campusrover_msgs-srv:RoutingPath-response instead.")))

(cl:ensure-generic-function 'routing-val :lambda-list '(m))
(cl:defmethod routing-val ((m <RoutingPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:routing-val is deprecated.  Use campusrover_msgs-srv:routing instead.")
  (routing m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoutingPath-response>) ostream)
  "Serializes a message object of type '<RoutingPath-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'routing))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'routing))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoutingPath-response>) istream)
  "Deserializes a message object of type '<RoutingPath-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'routing) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'routing)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'nav_msgs-msg:Path))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoutingPath-response>)))
  "Returns string type for a service object of type '<RoutingPath-response>"
  "campusrover_msgs/RoutingPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoutingPath-response)))
  "Returns string type for a service object of type 'RoutingPath-response"
  "campusrover_msgs/RoutingPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoutingPath-response>)))
  "Returns md5sum for a message object of type '<RoutingPath-response>"
  "2572309a61917f225d08d462c3a7a191")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoutingPath-response)))
  "Returns md5sum for a message object of type 'RoutingPath-response"
  "2572309a61917f225d08d462c3a7a191")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoutingPath-response>)))
  "Returns full string definition for message of type '<RoutingPath-response>"
  (cl:format cl:nil "nav_msgs/Path[] routing~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoutingPath-response)))
  "Returns full string definition for message of type 'RoutingPath-response"
  (cl:format cl:nil "nav_msgs/Path[] routing~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoutingPath-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'routing) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoutingPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RoutingPath-response
    (cl:cons ':routing (routing msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RoutingPath)))
  'RoutingPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RoutingPath)))
  'RoutingPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoutingPath)))
  "Returns string type for a service object of type '<RoutingPath>"
  "campusrover_msgs/RoutingPath")