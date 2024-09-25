; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude VSParameter-request.msg.html

(cl:defclass <VSParameter-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil)
   (button_name
    :reader button_name
    :initarg :button_name
    :type cl:string
    :initform ""))
)

(cl:defclass VSParameter-request (<VSParameter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VSParameter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VSParameter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<VSParameter-request> is deprecated: use campusrover_msgs-srv:VSParameter-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <VSParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:enable-val is deprecated.  Use campusrover_msgs-srv:enable instead.")
  (enable m))

(cl:ensure-generic-function 'button_name-val :lambda-list '(m))
(cl:defmethod button_name-val ((m <VSParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:button_name-val is deprecated.  Use campusrover_msgs-srv:button_name instead.")
  (button_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VSParameter-request>) ostream)
  "Serializes a message object of type '<VSParameter-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'button_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'button_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VSParameter-request>) istream)
  "Deserializes a message object of type '<VSParameter-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'button_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'button_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VSParameter-request>)))
  "Returns string type for a service object of type '<VSParameter-request>"
  "campusrover_msgs/VSParameterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VSParameter-request)))
  "Returns string type for a service object of type 'VSParameter-request"
  "campusrover_msgs/VSParameterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VSParameter-request>)))
  "Returns md5sum for a message object of type '<VSParameter-request>"
  "131799e53a81bae950535949b6dfa532")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VSParameter-request)))
  "Returns md5sum for a message object of type 'VSParameter-request"
  "131799e53a81bae950535949b6dfa532")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VSParameter-request>)))
  "Returns full string definition for message of type '<VSParameter-request>"
  (cl:format cl:nil "bool enable~%string button_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VSParameter-request)))
  "Returns full string definition for message of type 'VSParameter-request"
  (cl:format cl:nil "bool enable~%string button_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VSParameter-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'button_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VSParameter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VSParameter-request
    (cl:cons ':enable (enable msg))
    (cl:cons ':button_name (button_name msg))
))
;//! \htmlinclude VSParameter-response.msg.html

(cl:defclass <VSParameter-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VSParameter-response (<VSParameter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VSParameter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VSParameter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<VSParameter-response> is deprecated: use campusrover_msgs-srv:VSParameter-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <VSParameter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:success-val is deprecated.  Use campusrover_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VSParameter-response>) ostream)
  "Serializes a message object of type '<VSParameter-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VSParameter-response>) istream)
  "Deserializes a message object of type '<VSParameter-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VSParameter-response>)))
  "Returns string type for a service object of type '<VSParameter-response>"
  "campusrover_msgs/VSParameterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VSParameter-response)))
  "Returns string type for a service object of type 'VSParameter-response"
  "campusrover_msgs/VSParameterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VSParameter-response>)))
  "Returns md5sum for a message object of type '<VSParameter-response>"
  "131799e53a81bae950535949b6dfa532")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VSParameter-response)))
  "Returns md5sum for a message object of type 'VSParameter-response"
  "131799e53a81bae950535949b6dfa532")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VSParameter-response>)))
  "Returns full string definition for message of type '<VSParameter-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VSParameter-response)))
  "Returns full string definition for message of type 'VSParameter-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VSParameter-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VSParameter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VSParameter-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VSParameter)))
  'VSParameter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VSParameter)))
  'VSParameter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VSParameter)))
  "Returns string type for a service object of type '<VSParameter>"
  "campusrover_msgs/VSParameter")