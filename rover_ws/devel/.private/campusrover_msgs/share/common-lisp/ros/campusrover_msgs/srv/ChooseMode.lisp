; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude ChooseMode-request.msg.html

(cl:defclass <ChooseMode-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ChooseMode-request (<ChooseMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChooseMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChooseMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ChooseMode-request> is deprecated: use campusrover_msgs-srv:ChooseMode-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <ChooseMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:mode-val is deprecated.  Use campusrover_msgs-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChooseMode-request>) ostream)
  "Serializes a message object of type '<ChooseMode-request>"
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChooseMode-request>) istream)
  "Deserializes a message object of type '<ChooseMode-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChooseMode-request>)))
  "Returns string type for a service object of type '<ChooseMode-request>"
  "campusrover_msgs/ChooseModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChooseMode-request)))
  "Returns string type for a service object of type 'ChooseMode-request"
  "campusrover_msgs/ChooseModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChooseMode-request>)))
  "Returns md5sum for a message object of type '<ChooseMode-request>"
  "5da578ca824a6682cf704b593bb1a59e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChooseMode-request)))
  "Returns md5sum for a message object of type 'ChooseMode-request"
  "5da578ca824a6682cf704b593bb1a59e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChooseMode-request>)))
  "Returns full string definition for message of type '<ChooseMode-request>"
  (cl:format cl:nil "int8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChooseMode-request)))
  "Returns full string definition for message of type 'ChooseMode-request"
  (cl:format cl:nil "int8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChooseMode-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChooseMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChooseMode-request
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude ChooseMode-response.msg.html

(cl:defclass <ChooseMode-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ChooseMode-response (<ChooseMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChooseMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChooseMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ChooseMode-response> is deprecated: use campusrover_msgs-srv:ChooseMode-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ChooseMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:success-val is deprecated.  Use campusrover_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChooseMode-response>) ostream)
  "Serializes a message object of type '<ChooseMode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChooseMode-response>) istream)
  "Deserializes a message object of type '<ChooseMode-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChooseMode-response>)))
  "Returns string type for a service object of type '<ChooseMode-response>"
  "campusrover_msgs/ChooseModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChooseMode-response)))
  "Returns string type for a service object of type 'ChooseMode-response"
  "campusrover_msgs/ChooseModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChooseMode-response>)))
  "Returns md5sum for a message object of type '<ChooseMode-response>"
  "5da578ca824a6682cf704b593bb1a59e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChooseMode-response)))
  "Returns md5sum for a message object of type 'ChooseMode-response"
  "5da578ca824a6682cf704b593bb1a59e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChooseMode-response>)))
  "Returns full string definition for message of type '<ChooseMode-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChooseMode-response)))
  "Returns full string definition for message of type 'ChooseMode-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChooseMode-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChooseMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChooseMode-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChooseMode)))
  'ChooseMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChooseMode)))
  'ChooseMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChooseMode)))
  "Returns string type for a service object of type '<ChooseMode>"
  "campusrover_msgs/ChooseMode")