; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude MapClosestLocation-request.msg.html

(cl:defclass <MapClosestLocation-request> (roslisp-msg-protocol:ros-message)
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
   (robot_pose
    :reader robot_pose
    :initarg :robot_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass MapClosestLocation-request (<MapClosestLocation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapClosestLocation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapClosestLocation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<MapClosestLocation-request> is deprecated: use campusrover_msgs-srv:MapClosestLocation-request instead.")))

(cl:ensure-generic-function 'building-val :lambda-list '(m))
(cl:defmethod building-val ((m <MapClosestLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:building-val is deprecated.  Use campusrover_msgs-srv:building instead.")
  (building m))

(cl:ensure-generic-function 'floor-val :lambda-list '(m))
(cl:defmethod floor-val ((m <MapClosestLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:floor-val is deprecated.  Use campusrover_msgs-srv:floor instead.")
  (floor m))

(cl:ensure-generic-function 'robot_pose-val :lambda-list '(m))
(cl:defmethod robot_pose-val ((m <MapClosestLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:robot_pose-val is deprecated.  Use campusrover_msgs-srv:robot_pose instead.")
  (robot_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapClosestLocation-request>) ostream)
  "Serializes a message object of type '<MapClosestLocation-request>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapClosestLocation-request>) istream)
  "Deserializes a message object of type '<MapClosestLocation-request>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapClosestLocation-request>)))
  "Returns string type for a service object of type '<MapClosestLocation-request>"
  "campusrover_msgs/MapClosestLocationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapClosestLocation-request)))
  "Returns string type for a service object of type 'MapClosestLocation-request"
  "campusrover_msgs/MapClosestLocationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapClosestLocation-request>)))
  "Returns md5sum for a message object of type '<MapClosestLocation-request>"
  "958ccb3e3caf31c023d2c553e7c87d27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapClosestLocation-request)))
  "Returns md5sum for a message object of type 'MapClosestLocation-request"
  "958ccb3e3caf31c023d2c553e7c87d27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapClosestLocation-request>)))
  "Returns full string definition for message of type '<MapClosestLocation-request>"
  (cl:format cl:nil "string building~%string floor~%geometry_msgs/PoseStamped robot_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapClosestLocation-request)))
  "Returns full string definition for message of type 'MapClosestLocation-request"
  (cl:format cl:nil "string building~%string floor~%geometry_msgs/PoseStamped robot_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapClosestLocation-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'building))
     4 (cl:length (cl:slot-value msg 'floor))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapClosestLocation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MapClosestLocation-request
    (cl:cons ':building (building msg))
    (cl:cons ':floor (floor msg))
    (cl:cons ':robot_pose (robot_pose msg))
))
;//! \htmlinclude MapClosestLocation-response.msg.html

(cl:defclass <MapClosestLocation-response> (roslisp-msg-protocol:ros-message)
  ((closest_point
    :reader closest_point
    :initarg :closest_point
    :type cl:string
    :initform ""))
)

(cl:defclass MapClosestLocation-response (<MapClosestLocation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapClosestLocation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapClosestLocation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<MapClosestLocation-response> is deprecated: use campusrover_msgs-srv:MapClosestLocation-response instead.")))

(cl:ensure-generic-function 'closest_point-val :lambda-list '(m))
(cl:defmethod closest_point-val ((m <MapClosestLocation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:closest_point-val is deprecated.  Use campusrover_msgs-srv:closest_point instead.")
  (closest_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapClosestLocation-response>) ostream)
  "Serializes a message object of type '<MapClosestLocation-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'closest_point))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'closest_point))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapClosestLocation-response>) istream)
  "Deserializes a message object of type '<MapClosestLocation-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'closest_point) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'closest_point) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapClosestLocation-response>)))
  "Returns string type for a service object of type '<MapClosestLocation-response>"
  "campusrover_msgs/MapClosestLocationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapClosestLocation-response)))
  "Returns string type for a service object of type 'MapClosestLocation-response"
  "campusrover_msgs/MapClosestLocationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapClosestLocation-response>)))
  "Returns md5sum for a message object of type '<MapClosestLocation-response>"
  "958ccb3e3caf31c023d2c553e7c87d27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapClosestLocation-response)))
  "Returns md5sum for a message object of type 'MapClosestLocation-response"
  "958ccb3e3caf31c023d2c553e7c87d27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapClosestLocation-response>)))
  "Returns full string definition for message of type '<MapClosestLocation-response>"
  (cl:format cl:nil "string closest_point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapClosestLocation-response)))
  "Returns full string definition for message of type 'MapClosestLocation-response"
  (cl:format cl:nil "string closest_point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapClosestLocation-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'closest_point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapClosestLocation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MapClosestLocation-response
    (cl:cons ':closest_point (closest_point msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MapClosestLocation)))
  'MapClosestLocation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MapClosestLocation)))
  'MapClosestLocation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapClosestLocation)))
  "Returns string type for a service object of type '<MapClosestLocation>"
  "campusrover_msgs/MapClosestLocation")