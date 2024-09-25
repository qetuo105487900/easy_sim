; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude ButtonStatus-request.msg.html

(cl:defclass <ButtonStatus-request> (roslisp-msg-protocol:ros-message)
  ((button_status
    :reader button_status
    :initarg :button_status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ButtonStatus-request (<ButtonStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ButtonStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ButtonStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ButtonStatus-request> is deprecated: use campusrover_msgs-srv:ButtonStatus-request instead.")))

(cl:ensure-generic-function 'button_status-val :lambda-list '(m))
(cl:defmethod button_status-val ((m <ButtonStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:button_status-val is deprecated.  Use campusrover_msgs-srv:button_status instead.")
  (button_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ButtonStatus-request>) ostream)
  "Serializes a message object of type '<ButtonStatus-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'button_status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ButtonStatus-request>) istream)
  "Deserializes a message object of type '<ButtonStatus-request>"
    (cl:setf (cl:slot-value msg 'button_status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ButtonStatus-request>)))
  "Returns string type for a service object of type '<ButtonStatus-request>"
  "campusrover_msgs/ButtonStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonStatus-request)))
  "Returns string type for a service object of type 'ButtonStatus-request"
  "campusrover_msgs/ButtonStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ButtonStatus-request>)))
  "Returns md5sum for a message object of type '<ButtonStatus-request>"
  "5eabfc9879043ecc49b3481670b2286f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ButtonStatus-request)))
  "Returns md5sum for a message object of type 'ButtonStatus-request"
  "5eabfc9879043ecc49b3481670b2286f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ButtonStatus-request>)))
  "Returns full string definition for message of type '<ButtonStatus-request>"
  (cl:format cl:nil "bool button_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ButtonStatus-request)))
  "Returns full string definition for message of type 'ButtonStatus-request"
  (cl:format cl:nil "bool button_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ButtonStatus-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ButtonStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ButtonStatus-request
    (cl:cons ':button_status (button_status msg))
))
;//! \htmlinclude ButtonStatus-response.msg.html

(cl:defclass <ButtonStatus-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ButtonStatus-response (<ButtonStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ButtonStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ButtonStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ButtonStatus-response> is deprecated: use campusrover_msgs-srv:ButtonStatus-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ButtonStatus-response>) ostream)
  "Serializes a message object of type '<ButtonStatus-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ButtonStatus-response>) istream)
  "Deserializes a message object of type '<ButtonStatus-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ButtonStatus-response>)))
  "Returns string type for a service object of type '<ButtonStatus-response>"
  "campusrover_msgs/ButtonStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonStatus-response)))
  "Returns string type for a service object of type 'ButtonStatus-response"
  "campusrover_msgs/ButtonStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ButtonStatus-response>)))
  "Returns md5sum for a message object of type '<ButtonStatus-response>"
  "5eabfc9879043ecc49b3481670b2286f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ButtonStatus-response)))
  "Returns md5sum for a message object of type 'ButtonStatus-response"
  "5eabfc9879043ecc49b3481670b2286f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ButtonStatus-response>)))
  "Returns full string definition for message of type '<ButtonStatus-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ButtonStatus-response)))
  "Returns full string definition for message of type 'ButtonStatus-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ButtonStatus-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ButtonStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ButtonStatus-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ButtonStatus)))
  'ButtonStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ButtonStatus)))
  'ButtonStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonStatus)))
  "Returns string type for a service object of type '<ButtonStatus>"
  "campusrover_msgs/ButtonStatus")