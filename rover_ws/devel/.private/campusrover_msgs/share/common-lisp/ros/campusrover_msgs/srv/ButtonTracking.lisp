; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude ButtonTracking-request.msg.html

(cl:defclass <ButtonTracking-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ButtonTracking-request (<ButtonTracking-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ButtonTracking-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ButtonTracking-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ButtonTracking-request> is deprecated: use campusrover_msgs-srv:ButtonTracking-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <ButtonTracking-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:enable-val is deprecated.  Use campusrover_msgs-srv:enable instead.")
  (enable m))

(cl:ensure-generic-function 'button_name-val :lambda-list '(m))
(cl:defmethod button_name-val ((m <ButtonTracking-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:button_name-val is deprecated.  Use campusrover_msgs-srv:button_name instead.")
  (button_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ButtonTracking-request>) ostream)
  "Serializes a message object of type '<ButtonTracking-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'button_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'button_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ButtonTracking-request>) istream)
  "Deserializes a message object of type '<ButtonTracking-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ButtonTracking-request>)))
  "Returns string type for a service object of type '<ButtonTracking-request>"
  "campusrover_msgs/ButtonTrackingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonTracking-request)))
  "Returns string type for a service object of type 'ButtonTracking-request"
  "campusrover_msgs/ButtonTrackingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ButtonTracking-request>)))
  "Returns md5sum for a message object of type '<ButtonTracking-request>"
  "61b485ea07ed1b39485bf792e13eef24")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ButtonTracking-request)))
  "Returns md5sum for a message object of type 'ButtonTracking-request"
  "61b485ea07ed1b39485bf792e13eef24")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ButtonTracking-request>)))
  "Returns full string definition for message of type '<ButtonTracking-request>"
  (cl:format cl:nil "bool enable~%string button_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ButtonTracking-request)))
  "Returns full string definition for message of type 'ButtonTracking-request"
  (cl:format cl:nil "bool enable~%string button_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ButtonTracking-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'button_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ButtonTracking-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ButtonTracking-request
    (cl:cons ':enable (enable msg))
    (cl:cons ':button_name (button_name msg))
))
;//! \htmlinclude ButtonTracking-response.msg.html

(cl:defclass <ButtonTracking-response> (roslisp-msg-protocol:ros-message)
  ((empty
    :reader empty
    :initarg :empty
    :type std_msgs-msg:Empty
    :initform (cl:make-instance 'std_msgs-msg:Empty)))
)

(cl:defclass ButtonTracking-response (<ButtonTracking-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ButtonTracking-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ButtonTracking-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ButtonTracking-response> is deprecated: use campusrover_msgs-srv:ButtonTracking-response instead.")))

(cl:ensure-generic-function 'empty-val :lambda-list '(m))
(cl:defmethod empty-val ((m <ButtonTracking-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:empty-val is deprecated.  Use campusrover_msgs-srv:empty instead.")
  (empty m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ButtonTracking-response>) ostream)
  "Serializes a message object of type '<ButtonTracking-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'empty) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ButtonTracking-response>) istream)
  "Deserializes a message object of type '<ButtonTracking-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'empty) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ButtonTracking-response>)))
  "Returns string type for a service object of type '<ButtonTracking-response>"
  "campusrover_msgs/ButtonTrackingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonTracking-response)))
  "Returns string type for a service object of type 'ButtonTracking-response"
  "campusrover_msgs/ButtonTrackingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ButtonTracking-response>)))
  "Returns md5sum for a message object of type '<ButtonTracking-response>"
  "61b485ea07ed1b39485bf792e13eef24")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ButtonTracking-response)))
  "Returns md5sum for a message object of type 'ButtonTracking-response"
  "61b485ea07ed1b39485bf792e13eef24")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ButtonTracking-response>)))
  "Returns full string definition for message of type '<ButtonTracking-response>"
  (cl:format cl:nil "std_msgs/Empty empty~%~%================================================================================~%MSG: std_msgs/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ButtonTracking-response)))
  "Returns full string definition for message of type 'ButtonTracking-response"
  (cl:format cl:nil "std_msgs/Empty empty~%~%================================================================================~%MSG: std_msgs/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ButtonTracking-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'empty))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ButtonTracking-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ButtonTracking-response
    (cl:cons ':empty (empty msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ButtonTracking)))
  'ButtonTracking-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ButtonTracking)))
  'ButtonTracking-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonTracking)))
  "Returns string type for a service object of type '<ButtonTracking>"
  "campusrover_msgs/ButtonTracking")