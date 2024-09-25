; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude ButtonRecognize-request.msg.html

(cl:defclass <ButtonRecognize-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ButtonRecognize-request (<ButtonRecognize-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ButtonRecognize-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ButtonRecognize-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ButtonRecognize-request> is deprecated: use campusrover_msgs-srv:ButtonRecognize-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <ButtonRecognize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:enable-val is deprecated.  Use campusrover_msgs-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ButtonRecognize-request>) ostream)
  "Serializes a message object of type '<ButtonRecognize-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ButtonRecognize-request>) istream)
  "Deserializes a message object of type '<ButtonRecognize-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ButtonRecognize-request>)))
  "Returns string type for a service object of type '<ButtonRecognize-request>"
  "campusrover_msgs/ButtonRecognizeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonRecognize-request)))
  "Returns string type for a service object of type 'ButtonRecognize-request"
  "campusrover_msgs/ButtonRecognizeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ButtonRecognize-request>)))
  "Returns md5sum for a message object of type '<ButtonRecognize-request>"
  "48656acf6cb788f3db03662bf2321a58")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ButtonRecognize-request)))
  "Returns md5sum for a message object of type 'ButtonRecognize-request"
  "48656acf6cb788f3db03662bf2321a58")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ButtonRecognize-request>)))
  "Returns full string definition for message of type '<ButtonRecognize-request>"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ButtonRecognize-request)))
  "Returns full string definition for message of type 'ButtonRecognize-request"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ButtonRecognize-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ButtonRecognize-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ButtonRecognize-request
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude ButtonRecognize-response.msg.html

(cl:defclass <ButtonRecognize-response> (roslisp-msg-protocol:ros-message)
  ((empty
    :reader empty
    :initarg :empty
    :type std_msgs-msg:Empty
    :initform (cl:make-instance 'std_msgs-msg:Empty)))
)

(cl:defclass ButtonRecognize-response (<ButtonRecognize-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ButtonRecognize-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ButtonRecognize-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ButtonRecognize-response> is deprecated: use campusrover_msgs-srv:ButtonRecognize-response instead.")))

(cl:ensure-generic-function 'empty-val :lambda-list '(m))
(cl:defmethod empty-val ((m <ButtonRecognize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:empty-val is deprecated.  Use campusrover_msgs-srv:empty instead.")
  (empty m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ButtonRecognize-response>) ostream)
  "Serializes a message object of type '<ButtonRecognize-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'empty) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ButtonRecognize-response>) istream)
  "Deserializes a message object of type '<ButtonRecognize-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'empty) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ButtonRecognize-response>)))
  "Returns string type for a service object of type '<ButtonRecognize-response>"
  "campusrover_msgs/ButtonRecognizeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonRecognize-response)))
  "Returns string type for a service object of type 'ButtonRecognize-response"
  "campusrover_msgs/ButtonRecognizeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ButtonRecognize-response>)))
  "Returns md5sum for a message object of type '<ButtonRecognize-response>"
  "48656acf6cb788f3db03662bf2321a58")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ButtonRecognize-response)))
  "Returns md5sum for a message object of type 'ButtonRecognize-response"
  "48656acf6cb788f3db03662bf2321a58")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ButtonRecognize-response>)))
  "Returns full string definition for message of type '<ButtonRecognize-response>"
  (cl:format cl:nil "std_msgs/Empty empty~%~%================================================================================~%MSG: std_msgs/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ButtonRecognize-response)))
  "Returns full string definition for message of type 'ButtonRecognize-response"
  (cl:format cl:nil "std_msgs/Empty empty~%~%================================================================================~%MSG: std_msgs/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ButtonRecognize-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'empty))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ButtonRecognize-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ButtonRecognize-response
    (cl:cons ':empty (empty msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ButtonRecognize)))
  'ButtonRecognize-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ButtonRecognize)))
  'ButtonRecognize-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonRecognize)))
  "Returns string type for a service object of type '<ButtonRecognize>"
  "campusrover_msgs/ButtonRecognize")