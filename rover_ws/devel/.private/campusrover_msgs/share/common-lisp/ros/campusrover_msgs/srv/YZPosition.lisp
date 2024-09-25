; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude YZPosition-request.msg.html

(cl:defclass <YZPosition-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass YZPosition-request (<YZPosition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YZPosition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YZPosition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<YZPosition-request> is deprecated: use campusrover_msgs-srv:YZPosition-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <YZPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:name-val is deprecated.  Use campusrover_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YZPosition-request>) ostream)
  "Serializes a message object of type '<YZPosition-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YZPosition-request>) istream)
  "Deserializes a message object of type '<YZPosition-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YZPosition-request>)))
  "Returns string type for a service object of type '<YZPosition-request>"
  "campusrover_msgs/YZPositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YZPosition-request)))
  "Returns string type for a service object of type 'YZPosition-request"
  "campusrover_msgs/YZPositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YZPosition-request>)))
  "Returns md5sum for a message object of type '<YZPosition-request>"
  "ee8eaed8410219043713f6a333344a7c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YZPosition-request)))
  "Returns md5sum for a message object of type 'YZPosition-request"
  "ee8eaed8410219043713f6a333344a7c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YZPosition-request>)))
  "Returns full string definition for message of type '<YZPosition-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YZPosition-request)))
  "Returns full string definition for message of type 'YZPosition-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YZPosition-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YZPosition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'YZPosition-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude YZPosition-response.msg.html

(cl:defclass <YZPosition-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass YZPosition-response (<YZPosition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YZPosition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YZPosition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<YZPosition-response> is deprecated: use campusrover_msgs-srv:YZPosition-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <YZPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:success-val is deprecated.  Use campusrover_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <YZPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:point-val is deprecated.  Use campusrover_msgs-srv:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YZPosition-response>) ostream)
  "Serializes a message object of type '<YZPosition-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YZPosition-response>) istream)
  "Deserializes a message object of type '<YZPosition-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YZPosition-response>)))
  "Returns string type for a service object of type '<YZPosition-response>"
  "campusrover_msgs/YZPositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YZPosition-response)))
  "Returns string type for a service object of type 'YZPosition-response"
  "campusrover_msgs/YZPositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YZPosition-response>)))
  "Returns md5sum for a message object of type '<YZPosition-response>"
  "ee8eaed8410219043713f6a333344a7c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YZPosition-response)))
  "Returns md5sum for a message object of type 'YZPosition-response"
  "ee8eaed8410219043713f6a333344a7c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YZPosition-response>)))
  "Returns full string definition for message of type '<YZPosition-response>"
  (cl:format cl:nil "bool success~%geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YZPosition-response)))
  "Returns full string definition for message of type 'YZPosition-response"
  (cl:format cl:nil "bool success~%geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YZPosition-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YZPosition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'YZPosition-response
    (cl:cons ':success (success msg))
    (cl:cons ':point (point msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'YZPosition)))
  'YZPosition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'YZPosition)))
  'YZPosition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YZPosition)))
  "Returns string type for a service object of type '<YZPosition>"
  "campusrover_msgs/YZPosition")