; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude MapLoadInfo-request.msg.html

(cl:defclass <MapLoadInfo-request> (roslisp-msg-protocol:ros-message)
  ((building
    :reader building
    :initarg :building
    :type cl:string
    :initform "")
   (floor
    :reader floor
    :initarg :floor
    :type cl:string
    :initform ""))
)

(cl:defclass MapLoadInfo-request (<MapLoadInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapLoadInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapLoadInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<MapLoadInfo-request> is deprecated: use campusrover_msgs-srv:MapLoadInfo-request instead.")))

(cl:ensure-generic-function 'building-val :lambda-list '(m))
(cl:defmethod building-val ((m <MapLoadInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:building-val is deprecated.  Use campusrover_msgs-srv:building instead.")
  (building m))

(cl:ensure-generic-function 'floor-val :lambda-list '(m))
(cl:defmethod floor-val ((m <MapLoadInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:floor-val is deprecated.  Use campusrover_msgs-srv:floor instead.")
  (floor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapLoadInfo-request>) ostream)
  "Serializes a message object of type '<MapLoadInfo-request>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapLoadInfo-request>) istream)
  "Deserializes a message object of type '<MapLoadInfo-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapLoadInfo-request>)))
  "Returns string type for a service object of type '<MapLoadInfo-request>"
  "campusrover_msgs/MapLoadInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapLoadInfo-request)))
  "Returns string type for a service object of type 'MapLoadInfo-request"
  "campusrover_msgs/MapLoadInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapLoadInfo-request>)))
  "Returns md5sum for a message object of type '<MapLoadInfo-request>"
  "93a21f63b64b29785779efda16301551")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapLoadInfo-request)))
  "Returns md5sum for a message object of type 'MapLoadInfo-request"
  "93a21f63b64b29785779efda16301551")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapLoadInfo-request>)))
  "Returns full string definition for message of type '<MapLoadInfo-request>"
  (cl:format cl:nil "string building~%string floor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapLoadInfo-request)))
  "Returns full string definition for message of type 'MapLoadInfo-request"
  (cl:format cl:nil "string building~%string floor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapLoadInfo-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'building))
     4 (cl:length (cl:slot-value msg 'floor))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapLoadInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MapLoadInfo-request
    (cl:cons ':building (building msg))
    (cl:cons ':floor (floor msg))
))
;//! \htmlinclude MapLoadInfo-response.msg.html

(cl:defclass <MapLoadInfo-response> (roslisp-msg-protocol:ros-message)
  ((tf
    :reader tf
    :initarg :tf
    :type geometry_msgs-msg:TransformStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TransformStamped)))
)

(cl:defclass MapLoadInfo-response (<MapLoadInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapLoadInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapLoadInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<MapLoadInfo-response> is deprecated: use campusrover_msgs-srv:MapLoadInfo-response instead.")))

(cl:ensure-generic-function 'tf-val :lambda-list '(m))
(cl:defmethod tf-val ((m <MapLoadInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:tf-val is deprecated.  Use campusrover_msgs-srv:tf instead.")
  (tf m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapLoadInfo-response>) ostream)
  "Serializes a message object of type '<MapLoadInfo-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tf) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapLoadInfo-response>) istream)
  "Deserializes a message object of type '<MapLoadInfo-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tf) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapLoadInfo-response>)))
  "Returns string type for a service object of type '<MapLoadInfo-response>"
  "campusrover_msgs/MapLoadInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapLoadInfo-response)))
  "Returns string type for a service object of type 'MapLoadInfo-response"
  "campusrover_msgs/MapLoadInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapLoadInfo-response>)))
  "Returns md5sum for a message object of type '<MapLoadInfo-response>"
  "93a21f63b64b29785779efda16301551")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapLoadInfo-response)))
  "Returns md5sum for a message object of type 'MapLoadInfo-response"
  "93a21f63b64b29785779efda16301551")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapLoadInfo-response>)))
  "Returns full string definition for message of type '<MapLoadInfo-response>"
  (cl:format cl:nil "geometry_msgs/TransformStamped tf~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapLoadInfo-response)))
  "Returns full string definition for message of type 'MapLoadInfo-response"
  (cl:format cl:nil "geometry_msgs/TransformStamped tf~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapLoadInfo-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tf))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapLoadInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MapLoadInfo-response
    (cl:cons ':tf (tf msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MapLoadInfo)))
  'MapLoadInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MapLoadInfo)))
  'MapLoadInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapLoadInfo)))
  "Returns string type for a service object of type '<MapLoadInfo>"
  "campusrover_msgs/MapLoadInfo")