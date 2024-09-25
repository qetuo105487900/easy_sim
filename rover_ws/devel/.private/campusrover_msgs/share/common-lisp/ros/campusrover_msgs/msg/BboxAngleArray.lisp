; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-msg)


;//! \htmlinclude BboxAngleArray.msg.html

(cl:defclass <BboxAngleArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (obstacles
    :reader obstacles
    :initarg :obstacles
    :type (cl:vector campusrover_msgs-msg:BboxAngle)
   :initform (cl:make-array 0 :element-type 'campusrover_msgs-msg:BboxAngle :initial-element (cl:make-instance 'campusrover_msgs-msg:BboxAngle))))
)

(cl:defclass BboxAngleArray (<BboxAngleArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BboxAngleArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BboxAngleArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-msg:<BboxAngleArray> is deprecated: use campusrover_msgs-msg:BboxAngleArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BboxAngleArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:header-val is deprecated.  Use campusrover_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'obstacles-val :lambda-list '(m))
(cl:defmethod obstacles-val ((m <BboxAngleArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:obstacles-val is deprecated.  Use campusrover_msgs-msg:obstacles instead.")
  (obstacles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BboxAngleArray>) ostream)
  "Serializes a message object of type '<BboxAngleArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BboxAngleArray>) istream)
  "Deserializes a message object of type '<BboxAngleArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'campusrover_msgs-msg:BboxAngle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BboxAngleArray>)))
  "Returns string type for a message object of type '<BboxAngleArray>"
  "campusrover_msgs/BboxAngleArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BboxAngleArray)))
  "Returns string type for a message object of type 'BboxAngleArray"
  "campusrover_msgs/BboxAngleArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BboxAngleArray>)))
  "Returns md5sum for a message object of type '<BboxAngleArray>"
  "3a0e3d5a07a213c74374e8d4daa7221e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BboxAngleArray)))
  "Returns md5sum for a message object of type 'BboxAngleArray"
  "3a0e3d5a07a213c74374e8d4daa7221e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BboxAngleArray>)))
  "Returns full string definition for message of type '<BboxAngleArray>"
  (cl:format cl:nil "std_msgs/Header header~%campusrover_msgs/BboxAngle[] obstacles~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: campusrover_msgs/BboxAngle~%uint16 LABEL_PERSON = 1~%uint16 LABEL_BICYCLE = 2~%uint16 LABEL_CAR = 3~%uint16 LABEL_MOTORCYCLE = 4~%~%uint16 label~%float64 angle~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BboxAngleArray)))
  "Returns full string definition for message of type 'BboxAngleArray"
  (cl:format cl:nil "std_msgs/Header header~%campusrover_msgs/BboxAngle[] obstacles~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: campusrover_msgs/BboxAngle~%uint16 LABEL_PERSON = 1~%uint16 LABEL_BICYCLE = 2~%uint16 LABEL_CAR = 3~%uint16 LABEL_MOTORCYCLE = 4~%~%uint16 label~%float64 angle~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BboxAngleArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BboxAngleArray>))
  "Converts a ROS message object to a list"
  (cl:list 'BboxAngleArray
    (cl:cons ':header (header msg))
    (cl:cons ':obstacles (obstacles msg))
))
