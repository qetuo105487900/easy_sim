; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude ArmAction-request.msg.html

(cl:defclass <ArmAction-request> (roslisp-msg-protocol:ros-message)
  ((button_pose
    :reader button_pose
    :initarg :button_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass ArmAction-request (<ArmAction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmAction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmAction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ArmAction-request> is deprecated: use campusrover_msgs-srv:ArmAction-request instead.")))

(cl:ensure-generic-function 'button_pose-val :lambda-list '(m))
(cl:defmethod button_pose-val ((m <ArmAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:button_pose-val is deprecated.  Use campusrover_msgs-srv:button_pose instead.")
  (button_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmAction-request>) ostream)
  "Serializes a message object of type '<ArmAction-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'button_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmAction-request>) istream)
  "Deserializes a message object of type '<ArmAction-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'button_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmAction-request>)))
  "Returns string type for a service object of type '<ArmAction-request>"
  "campusrover_msgs/ArmActionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmAction-request)))
  "Returns string type for a service object of type 'ArmAction-request"
  "campusrover_msgs/ArmActionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmAction-request>)))
  "Returns md5sum for a message object of type '<ArmAction-request>"
  "512c6f416d6851352390c756a87cd4c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmAction-request)))
  "Returns md5sum for a message object of type 'ArmAction-request"
  "512c6f416d6851352390c756a87cd4c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmAction-request>)))
  "Returns full string definition for message of type '<ArmAction-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped button_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmAction-request)))
  "Returns full string definition for message of type 'ArmAction-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped button_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmAction-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'button_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmAction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmAction-request
    (cl:cons ':button_pose (button_pose msg))
))
;//! \htmlinclude ArmAction-response.msg.html

(cl:defclass <ArmAction-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ArmAction-response (<ArmAction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmAction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmAction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ArmAction-response> is deprecated: use campusrover_msgs-srv:ArmAction-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmAction-response>) ostream)
  "Serializes a message object of type '<ArmAction-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmAction-response>) istream)
  "Deserializes a message object of type '<ArmAction-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmAction-response>)))
  "Returns string type for a service object of type '<ArmAction-response>"
  "campusrover_msgs/ArmActionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmAction-response)))
  "Returns string type for a service object of type 'ArmAction-response"
  "campusrover_msgs/ArmActionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmAction-response>)))
  "Returns md5sum for a message object of type '<ArmAction-response>"
  "512c6f416d6851352390c756a87cd4c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmAction-response)))
  "Returns md5sum for a message object of type 'ArmAction-response"
  "512c6f416d6851352390c756a87cd4c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmAction-response>)))
  "Returns full string definition for message of type '<ArmAction-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmAction-response)))
  "Returns full string definition for message of type 'ArmAction-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmAction-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmAction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmAction-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ArmAction)))
  'ArmAction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ArmAction)))
  'ArmAction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmAction)))
  "Returns string type for a service object of type '<ArmAction>"
  "campusrover_msgs/ArmAction")