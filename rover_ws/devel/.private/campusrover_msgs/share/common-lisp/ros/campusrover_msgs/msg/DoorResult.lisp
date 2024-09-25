; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-msg)


;//! \htmlinclude DoorResult.msg.html

(cl:defclass <DoorResult> (roslisp-msg-protocol:ros-message)
  ((left_door_status
    :reader left_door_status
    :initarg :left_door_status
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (rate_bottom_left
    :reader rate_bottom_left
    :initarg :rate_bottom_left
    :type cl:float
    :initform 0.0)
   (rate_door_left
    :reader rate_door_left
    :initarg :rate_door_left
    :type cl:float
    :initform 0.0)
   (rate_middle_left
    :reader rate_middle_left
    :initarg :rate_middle_left
    :type cl:float
    :initform 0.0)
   (right_door_status
    :reader right_door_status
    :initarg :right_door_status
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (rate_bottom_right
    :reader rate_bottom_right
    :initarg :rate_bottom_right
    :type cl:float
    :initform 0.0)
   (rate_door_right
    :reader rate_door_right
    :initarg :rate_door_right
    :type cl:float
    :initform 0.0)
   (rate_middle_right
    :reader rate_middle_right
    :initarg :rate_middle_right
    :type cl:float
    :initform 0.0)
   (locate
    :reader locate
    :initarg :locate
    :type cl:string
    :initform ""))
)

(cl:defclass DoorResult (<DoorResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DoorResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DoorResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-msg:<DoorResult> is deprecated: use campusrover_msgs-msg:DoorResult instead.")))

(cl:ensure-generic-function 'left_door_status-val :lambda-list '(m))
(cl:defmethod left_door_status-val ((m <DoorResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:left_door_status-val is deprecated.  Use campusrover_msgs-msg:left_door_status instead.")
  (left_door_status m))

(cl:ensure-generic-function 'rate_bottom_left-val :lambda-list '(m))
(cl:defmethod rate_bottom_left-val ((m <DoorResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:rate_bottom_left-val is deprecated.  Use campusrover_msgs-msg:rate_bottom_left instead.")
  (rate_bottom_left m))

(cl:ensure-generic-function 'rate_door_left-val :lambda-list '(m))
(cl:defmethod rate_door_left-val ((m <DoorResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:rate_door_left-val is deprecated.  Use campusrover_msgs-msg:rate_door_left instead.")
  (rate_door_left m))

(cl:ensure-generic-function 'rate_middle_left-val :lambda-list '(m))
(cl:defmethod rate_middle_left-val ((m <DoorResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:rate_middle_left-val is deprecated.  Use campusrover_msgs-msg:rate_middle_left instead.")
  (rate_middle_left m))

(cl:ensure-generic-function 'right_door_status-val :lambda-list '(m))
(cl:defmethod right_door_status-val ((m <DoorResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:right_door_status-val is deprecated.  Use campusrover_msgs-msg:right_door_status instead.")
  (right_door_status m))

(cl:ensure-generic-function 'rate_bottom_right-val :lambda-list '(m))
(cl:defmethod rate_bottom_right-val ((m <DoorResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:rate_bottom_right-val is deprecated.  Use campusrover_msgs-msg:rate_bottom_right instead.")
  (rate_bottom_right m))

(cl:ensure-generic-function 'rate_door_right-val :lambda-list '(m))
(cl:defmethod rate_door_right-val ((m <DoorResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:rate_door_right-val is deprecated.  Use campusrover_msgs-msg:rate_door_right instead.")
  (rate_door_right m))

(cl:ensure-generic-function 'rate_middle_right-val :lambda-list '(m))
(cl:defmethod rate_middle_right-val ((m <DoorResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:rate_middle_right-val is deprecated.  Use campusrover_msgs-msg:rate_middle_right instead.")
  (rate_middle_right m))

(cl:ensure-generic-function 'locate-val :lambda-list '(m))
(cl:defmethod locate-val ((m <DoorResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:locate-val is deprecated.  Use campusrover_msgs-msg:locate instead.")
  (locate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DoorResult>) ostream)
  "Serializes a message object of type '<DoorResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_door_status) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rate_bottom_left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rate_door_left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rate_middle_left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_door_status) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rate_bottom_right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rate_door_right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rate_middle_right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'locate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'locate))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DoorResult>) istream)
  "Deserializes a message object of type '<DoorResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_door_status) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rate_bottom_left) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rate_door_left) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rate_middle_left) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_door_status) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rate_bottom_right) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rate_door_right) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rate_middle_right) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'locate) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'locate) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DoorResult>)))
  "Returns string type for a message object of type '<DoorResult>"
  "campusrover_msgs/DoorResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoorResult)))
  "Returns string type for a message object of type 'DoorResult"
  "campusrover_msgs/DoorResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DoorResult>)))
  "Returns md5sum for a message object of type '<DoorResult>"
  "6c07e76e4878ab6c525aa5c9ac930982")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DoorResult)))
  "Returns md5sum for a message object of type 'DoorResult"
  "6c07e76e4878ab6c525aa5c9ac930982")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DoorResult>)))
  "Returns full string definition for message of type '<DoorResult>"
  (cl:format cl:nil "std_msgs/Header left_door_status~%float32 rate_bottom_left~%float32 rate_door_left~%float32 rate_middle_left~%~%std_msgs/Header right_door_status~%float32 rate_bottom_right~%float32 rate_door_right~%float32 rate_middle_right~%~%string locate~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DoorResult)))
  "Returns full string definition for message of type 'DoorResult"
  (cl:format cl:nil "std_msgs/Header left_door_status~%float32 rate_bottom_left~%float32 rate_door_left~%float32 rate_middle_left~%~%std_msgs/Header right_door_status~%float32 rate_bottom_right~%float32 rate_door_right~%float32 rate_middle_right~%~%string locate~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DoorResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_door_status))
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_door_status))
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'locate))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DoorResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DoorResult
    (cl:cons ':left_door_status (left_door_status msg))
    (cl:cons ':rate_bottom_left (rate_bottom_left msg))
    (cl:cons ':rate_door_left (rate_door_left msg))
    (cl:cons ':rate_middle_left (rate_middle_left msg))
    (cl:cons ':right_door_status (right_door_status msg))
    (cl:cons ':rate_bottom_right (rate_bottom_right msg))
    (cl:cons ':rate_door_right (rate_door_right msg))
    (cl:cons ':rate_middle_right (rate_middle_right msg))
    (cl:cons ':locate (locate msg))
))
