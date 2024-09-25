; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude InitFloor-request.msg.html

(cl:defclass <InitFloor-request> (roslisp-msg-protocol:ros-message)
  ((init_floor
    :reader init_floor
    :initarg :init_floor
    :type cl:fixnum
    :initform 0))
)

(cl:defclass InitFloor-request (<InitFloor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InitFloor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InitFloor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<InitFloor-request> is deprecated: use campusrover_msgs-srv:InitFloor-request instead.")))

(cl:ensure-generic-function 'init_floor-val :lambda-list '(m))
(cl:defmethod init_floor-val ((m <InitFloor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:init_floor-val is deprecated.  Use campusrover_msgs-srv:init_floor instead.")
  (init_floor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InitFloor-request>) ostream)
  "Serializes a message object of type '<InitFloor-request>"
  (cl:let* ((signed (cl:slot-value msg 'init_floor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InitFloor-request>) istream)
  "Deserializes a message object of type '<InitFloor-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'init_floor) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InitFloor-request>)))
  "Returns string type for a service object of type '<InitFloor-request>"
  "campusrover_msgs/InitFloorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitFloor-request)))
  "Returns string type for a service object of type 'InitFloor-request"
  "campusrover_msgs/InitFloorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InitFloor-request>)))
  "Returns md5sum for a message object of type '<InitFloor-request>"
  "ff7605597ae53414f57ec4bc282ae9d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InitFloor-request)))
  "Returns md5sum for a message object of type 'InitFloor-request"
  "ff7605597ae53414f57ec4bc282ae9d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InitFloor-request>)))
  "Returns full string definition for message of type '<InitFloor-request>"
  (cl:format cl:nil "int8 init_floor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InitFloor-request)))
  "Returns full string definition for message of type 'InitFloor-request"
  (cl:format cl:nil "int8 init_floor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InitFloor-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InitFloor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'InitFloor-request
    (cl:cons ':init_floor (init_floor msg))
))
;//! \htmlinclude InitFloor-response.msg.html

(cl:defclass <InitFloor-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass InitFloor-response (<InitFloor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InitFloor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InitFloor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<InitFloor-response> is deprecated: use campusrover_msgs-srv:InitFloor-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InitFloor-response>) ostream)
  "Serializes a message object of type '<InitFloor-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InitFloor-response>) istream)
  "Deserializes a message object of type '<InitFloor-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InitFloor-response>)))
  "Returns string type for a service object of type '<InitFloor-response>"
  "campusrover_msgs/InitFloorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitFloor-response)))
  "Returns string type for a service object of type 'InitFloor-response"
  "campusrover_msgs/InitFloorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InitFloor-response>)))
  "Returns md5sum for a message object of type '<InitFloor-response>"
  "ff7605597ae53414f57ec4bc282ae9d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InitFloor-response)))
  "Returns md5sum for a message object of type 'InitFloor-response"
  "ff7605597ae53414f57ec4bc282ae9d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InitFloor-response>)))
  "Returns full string definition for message of type '<InitFloor-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InitFloor-response)))
  "Returns full string definition for message of type 'InitFloor-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InitFloor-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InitFloor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'InitFloor-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'InitFloor)))
  'InitFloor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'InitFloor)))
  'InitFloor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitFloor)))
  "Returns string type for a service object of type '<InitFloor>"
  "campusrover_msgs/InitFloor")