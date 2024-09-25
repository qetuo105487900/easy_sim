; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude PressButton-request.msg.html

(cl:defclass <PressButton-request> (roslisp-msg-protocol:ros-message)
  ((button_type
    :reader button_type
    :initarg :button_type
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass PressButton-request (<PressButton-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PressButton-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PressButton-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<PressButton-request> is deprecated: use campusrover_msgs-srv:PressButton-request instead.")))

(cl:ensure-generic-function 'button_type-val :lambda-list '(m))
(cl:defmethod button_type-val ((m <PressButton-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:button_type-val is deprecated.  Use campusrover_msgs-srv:button_type instead.")
  (button_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PressButton-request>) ostream)
  "Serializes a message object of type '<PressButton-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'button_type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PressButton-request>) istream)
  "Deserializes a message object of type '<PressButton-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'button_type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PressButton-request>)))
  "Returns string type for a service object of type '<PressButton-request>"
  "campusrover_msgs/PressButtonRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PressButton-request)))
  "Returns string type for a service object of type 'PressButton-request"
  "campusrover_msgs/PressButtonRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PressButton-request>)))
  "Returns md5sum for a message object of type '<PressButton-request>"
  "f2108c1711893849d03c12dc680c3be5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PressButton-request)))
  "Returns md5sum for a message object of type 'PressButton-request"
  "f2108c1711893849d03c12dc680c3be5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PressButton-request>)))
  "Returns full string definition for message of type '<PressButton-request>"
  (cl:format cl:nil "std_msgs/String button_type~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PressButton-request)))
  "Returns full string definition for message of type 'PressButton-request"
  (cl:format cl:nil "std_msgs/String button_type~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PressButton-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'button_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PressButton-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PressButton-request
    (cl:cons ':button_type (button_type msg))
))
;//! \htmlinclude PressButton-response.msg.html

(cl:defclass <PressButton-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PressButton-response (<PressButton-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PressButton-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PressButton-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<PressButton-response> is deprecated: use campusrover_msgs-srv:PressButton-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PressButton-response>) ostream)
  "Serializes a message object of type '<PressButton-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PressButton-response>) istream)
  "Deserializes a message object of type '<PressButton-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PressButton-response>)))
  "Returns string type for a service object of type '<PressButton-response>"
  "campusrover_msgs/PressButtonResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PressButton-response)))
  "Returns string type for a service object of type 'PressButton-response"
  "campusrover_msgs/PressButtonResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PressButton-response>)))
  "Returns md5sum for a message object of type '<PressButton-response>"
  "f2108c1711893849d03c12dc680c3be5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PressButton-response)))
  "Returns md5sum for a message object of type 'PressButton-response"
  "f2108c1711893849d03c12dc680c3be5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PressButton-response>)))
  "Returns full string definition for message of type '<PressButton-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PressButton-response)))
  "Returns full string definition for message of type 'PressButton-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PressButton-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PressButton-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PressButton-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PressButton)))
  'PressButton-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PressButton)))
  'PressButton-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PressButton)))
  "Returns string type for a service object of type '<PressButton>"
  "campusrover_msgs/PressButton")