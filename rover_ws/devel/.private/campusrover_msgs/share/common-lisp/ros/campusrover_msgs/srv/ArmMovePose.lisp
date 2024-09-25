; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude ArmMovePose-request.msg.html

(cl:defclass <ArmMovePose-request> (roslisp-msg-protocol:ros-message)
  ((pose_name
    :reader pose_name
    :initarg :pose_name
    :type cl:string
    :initform ""))
)

(cl:defclass ArmMovePose-request (<ArmMovePose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmMovePose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmMovePose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ArmMovePose-request> is deprecated: use campusrover_msgs-srv:ArmMovePose-request instead.")))

(cl:ensure-generic-function 'pose_name-val :lambda-list '(m))
(cl:defmethod pose_name-val ((m <ArmMovePose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:pose_name-val is deprecated.  Use campusrover_msgs-srv:pose_name instead.")
  (pose_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmMovePose-request>) ostream)
  "Serializes a message object of type '<ArmMovePose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pose_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pose_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmMovePose-request>) istream)
  "Deserializes a message object of type '<ArmMovePose-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pose_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pose_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmMovePose-request>)))
  "Returns string type for a service object of type '<ArmMovePose-request>"
  "campusrover_msgs/ArmMovePoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmMovePose-request)))
  "Returns string type for a service object of type 'ArmMovePose-request"
  "campusrover_msgs/ArmMovePoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmMovePose-request>)))
  "Returns md5sum for a message object of type '<ArmMovePose-request>"
  "e6184073e8e665fb2bf0be194fc36541")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmMovePose-request)))
  "Returns md5sum for a message object of type 'ArmMovePose-request"
  "e6184073e8e665fb2bf0be194fc36541")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmMovePose-request>)))
  "Returns full string definition for message of type '<ArmMovePose-request>"
  (cl:format cl:nil "string pose_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmMovePose-request)))
  "Returns full string definition for message of type 'ArmMovePose-request"
  (cl:format cl:nil "string pose_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmMovePose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'pose_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmMovePose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmMovePose-request
    (cl:cons ':pose_name (pose_name msg))
))
;//! \htmlinclude ArmMovePose-response.msg.html

(cl:defclass <ArmMovePose-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ArmMovePose-response (<ArmMovePose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmMovePose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmMovePose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ArmMovePose-response> is deprecated: use campusrover_msgs-srv:ArmMovePose-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmMovePose-response>) ostream)
  "Serializes a message object of type '<ArmMovePose-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmMovePose-response>) istream)
  "Deserializes a message object of type '<ArmMovePose-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmMovePose-response>)))
  "Returns string type for a service object of type '<ArmMovePose-response>"
  "campusrover_msgs/ArmMovePoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmMovePose-response)))
  "Returns string type for a service object of type 'ArmMovePose-response"
  "campusrover_msgs/ArmMovePoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmMovePose-response>)))
  "Returns md5sum for a message object of type '<ArmMovePose-response>"
  "e6184073e8e665fb2bf0be194fc36541")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmMovePose-response)))
  "Returns md5sum for a message object of type 'ArmMovePose-response"
  "e6184073e8e665fb2bf0be194fc36541")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmMovePose-response>)))
  "Returns full string definition for message of type '<ArmMovePose-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmMovePose-response)))
  "Returns full string definition for message of type 'ArmMovePose-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmMovePose-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmMovePose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmMovePose-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ArmMovePose)))
  'ArmMovePose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ArmMovePose)))
  'ArmMovePose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmMovePose)))
  "Returns string type for a service object of type '<ArmMovePose>"
  "campusrover_msgs/ArmMovePose")