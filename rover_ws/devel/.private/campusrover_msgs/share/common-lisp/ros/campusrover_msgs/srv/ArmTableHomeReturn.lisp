; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude ArmTableHomeReturn-request.msg.html

(cl:defclass <ArmTableHomeReturn-request> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ArmTableHomeReturn-request (<ArmTableHomeReturn-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmTableHomeReturn-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmTableHomeReturn-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ArmTableHomeReturn-request> is deprecated: use campusrover_msgs-srv:ArmTableHomeReturn-request instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <ArmTableHomeReturn-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:flag-val is deprecated.  Use campusrover_msgs-srv:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmTableHomeReturn-request>) ostream)
  "Serializes a message object of type '<ArmTableHomeReturn-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'flag) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmTableHomeReturn-request>) istream)
  "Deserializes a message object of type '<ArmTableHomeReturn-request>"
    (cl:setf (cl:slot-value msg 'flag) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmTableHomeReturn-request>)))
  "Returns string type for a service object of type '<ArmTableHomeReturn-request>"
  "campusrover_msgs/ArmTableHomeReturnRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmTableHomeReturn-request)))
  "Returns string type for a service object of type 'ArmTableHomeReturn-request"
  "campusrover_msgs/ArmTableHomeReturnRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmTableHomeReturn-request>)))
  "Returns md5sum for a message object of type '<ArmTableHomeReturn-request>"
  "24842bc754e0f5cc982338eca1269251")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmTableHomeReturn-request)))
  "Returns md5sum for a message object of type 'ArmTableHomeReturn-request"
  "24842bc754e0f5cc982338eca1269251")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmTableHomeReturn-request>)))
  "Returns full string definition for message of type '<ArmTableHomeReturn-request>"
  (cl:format cl:nil "bool flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmTableHomeReturn-request)))
  "Returns full string definition for message of type 'ArmTableHomeReturn-request"
  (cl:format cl:nil "bool flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmTableHomeReturn-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmTableHomeReturn-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmTableHomeReturn-request
    (cl:cons ':flag (flag msg))
))
;//! \htmlinclude ArmTableHomeReturn-response.msg.html

(cl:defclass <ArmTableHomeReturn-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ArmTableHomeReturn-response (<ArmTableHomeReturn-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmTableHomeReturn-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmTableHomeReturn-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ArmTableHomeReturn-response> is deprecated: use campusrover_msgs-srv:ArmTableHomeReturn-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmTableHomeReturn-response>) ostream)
  "Serializes a message object of type '<ArmTableHomeReturn-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmTableHomeReturn-response>) istream)
  "Deserializes a message object of type '<ArmTableHomeReturn-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmTableHomeReturn-response>)))
  "Returns string type for a service object of type '<ArmTableHomeReturn-response>"
  "campusrover_msgs/ArmTableHomeReturnResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmTableHomeReturn-response)))
  "Returns string type for a service object of type 'ArmTableHomeReturn-response"
  "campusrover_msgs/ArmTableHomeReturnResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmTableHomeReturn-response>)))
  "Returns md5sum for a message object of type '<ArmTableHomeReturn-response>"
  "24842bc754e0f5cc982338eca1269251")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmTableHomeReturn-response)))
  "Returns md5sum for a message object of type 'ArmTableHomeReturn-response"
  "24842bc754e0f5cc982338eca1269251")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmTableHomeReturn-response>)))
  "Returns full string definition for message of type '<ArmTableHomeReturn-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmTableHomeReturn-response)))
  "Returns full string definition for message of type 'ArmTableHomeReturn-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmTableHomeReturn-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmTableHomeReturn-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmTableHomeReturn-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ArmTableHomeReturn)))
  'ArmTableHomeReturn-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ArmTableHomeReturn)))
  'ArmTableHomeReturn-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmTableHomeReturn)))
  "Returns string type for a service object of type '<ArmTableHomeReturn>"
  "campusrover_msgs/ArmTableHomeReturn")