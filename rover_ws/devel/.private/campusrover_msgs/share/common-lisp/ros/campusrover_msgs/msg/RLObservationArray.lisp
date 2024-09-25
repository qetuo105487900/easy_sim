; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-msg)


;//! \htmlinclude RLObservationArray.msg.html

(cl:defclass <RLObservationArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (observation
    :reader observation
    :initarg :observation
    :type (cl:vector campusrover_msgs-msg:RLObservation)
   :initform (cl:make-array 0 :element-type 'campusrover_msgs-msg:RLObservation :initial-element (cl:make-instance 'campusrover_msgs-msg:RLObservation))))
)

(cl:defclass RLObservationArray (<RLObservationArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RLObservationArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RLObservationArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-msg:<RLObservationArray> is deprecated: use campusrover_msgs-msg:RLObservationArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RLObservationArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:header-val is deprecated.  Use campusrover_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'observation-val :lambda-list '(m))
(cl:defmethod observation-val ((m <RLObservationArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:observation-val is deprecated.  Use campusrover_msgs-msg:observation instead.")
  (observation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RLObservationArray>) ostream)
  "Serializes a message object of type '<RLObservationArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'observation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'observation))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RLObservationArray>) istream)
  "Deserializes a message object of type '<RLObservationArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'observation) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'observation)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'campusrover_msgs-msg:RLObservation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RLObservationArray>)))
  "Returns string type for a message object of type '<RLObservationArray>"
  "campusrover_msgs/RLObservationArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RLObservationArray)))
  "Returns string type for a message object of type 'RLObservationArray"
  "campusrover_msgs/RLObservationArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RLObservationArray>)))
  "Returns md5sum for a message object of type '<RLObservationArray>"
  "1b9bc5aef578d2bb524b67bcebb72c92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RLObservationArray)))
  "Returns md5sum for a message object of type 'RLObservationArray"
  "1b9bc5aef578d2bb524b67bcebb72c92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RLObservationArray>)))
  "Returns full string definition for message of type '<RLObservationArray>"
  (cl:format cl:nil "std_msgs/Header header~%campusrover_msgs/RLObservation[] observation~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: campusrover_msgs/RLObservation~%std_msgs/Header header~%float32[] observation_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RLObservationArray)))
  "Returns full string definition for message of type 'RLObservationArray"
  (cl:format cl:nil "std_msgs/Header header~%campusrover_msgs/RLObservation[] observation~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: campusrover_msgs/RLObservation~%std_msgs/Header header~%float32[] observation_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RLObservationArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'observation) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RLObservationArray>))
  "Converts a ROS message object to a list"
  (cl:list 'RLObservationArray
    (cl:cons ':header (header msg))
    (cl:cons ':observation (observation msg))
))
