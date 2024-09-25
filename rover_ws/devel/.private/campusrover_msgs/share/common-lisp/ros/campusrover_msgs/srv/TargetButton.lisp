; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude TargetButton-request.msg.html

(cl:defclass <TargetButton-request> (roslisp-msg-protocol:ros-message)
  ((target_button
    :reader target_button
    :initarg :target_button
    :type cl:string
    :initform ""))
)

(cl:defclass TargetButton-request (<TargetButton-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TargetButton-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TargetButton-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<TargetButton-request> is deprecated: use campusrover_msgs-srv:TargetButton-request instead.")))

(cl:ensure-generic-function 'target_button-val :lambda-list '(m))
(cl:defmethod target_button-val ((m <TargetButton-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:target_button-val is deprecated.  Use campusrover_msgs-srv:target_button instead.")
  (target_button m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TargetButton-request>) ostream)
  "Serializes a message object of type '<TargetButton-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_button))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_button))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TargetButton-request>) istream)
  "Deserializes a message object of type '<TargetButton-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_button) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_button) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TargetButton-request>)))
  "Returns string type for a service object of type '<TargetButton-request>"
  "campusrover_msgs/TargetButtonRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetButton-request)))
  "Returns string type for a service object of type 'TargetButton-request"
  "campusrover_msgs/TargetButtonRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TargetButton-request>)))
  "Returns md5sum for a message object of type '<TargetButton-request>"
  "1d1f001af806ced13ac6bfa055fecdf2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TargetButton-request)))
  "Returns md5sum for a message object of type 'TargetButton-request"
  "1d1f001af806ced13ac6bfa055fecdf2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TargetButton-request>)))
  "Returns full string definition for message of type '<TargetButton-request>"
  (cl:format cl:nil "string target_button~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TargetButton-request)))
  "Returns full string definition for message of type 'TargetButton-request"
  (cl:format cl:nil "string target_button~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TargetButton-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'target_button))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TargetButton-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TargetButton-request
    (cl:cons ':target_button (target_button msg))
))
;//! \htmlinclude TargetButton-response.msg.html

(cl:defclass <TargetButton-response> (roslisp-msg-protocol:ros-message)
  ((activate
    :reader activate
    :initarg :activate
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TargetButton-response (<TargetButton-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TargetButton-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TargetButton-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<TargetButton-response> is deprecated: use campusrover_msgs-srv:TargetButton-response instead.")))

(cl:ensure-generic-function 'activate-val :lambda-list '(m))
(cl:defmethod activate-val ((m <TargetButton-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:activate-val is deprecated.  Use campusrover_msgs-srv:activate instead.")
  (activate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TargetButton-response>) ostream)
  "Serializes a message object of type '<TargetButton-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'activate) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TargetButton-response>) istream)
  "Deserializes a message object of type '<TargetButton-response>"
    (cl:setf (cl:slot-value msg 'activate) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TargetButton-response>)))
  "Returns string type for a service object of type '<TargetButton-response>"
  "campusrover_msgs/TargetButtonResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetButton-response)))
  "Returns string type for a service object of type 'TargetButton-response"
  "campusrover_msgs/TargetButtonResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TargetButton-response>)))
  "Returns md5sum for a message object of type '<TargetButton-response>"
  "1d1f001af806ced13ac6bfa055fecdf2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TargetButton-response)))
  "Returns md5sum for a message object of type 'TargetButton-response"
  "1d1f001af806ced13ac6bfa055fecdf2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TargetButton-response>)))
  "Returns full string definition for message of type '<TargetButton-response>"
  (cl:format cl:nil "bool activate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TargetButton-response)))
  "Returns full string definition for message of type 'TargetButton-response"
  (cl:format cl:nil "bool activate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TargetButton-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TargetButton-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TargetButton-response
    (cl:cons ':activate (activate msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TargetButton)))
  'TargetButton-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TargetButton)))
  'TargetButton-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetButton)))
  "Returns string type for a service object of type '<TargetButton>"
  "campusrover_msgs/TargetButton")