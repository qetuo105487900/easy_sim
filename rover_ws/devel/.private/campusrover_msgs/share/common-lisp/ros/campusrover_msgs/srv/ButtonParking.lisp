; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude ButtonParking-request.msg.html

(cl:defclass <ButtonParking-request> (roslisp-msg-protocol:ros-message)
  ((parking_dis
    :reader parking_dis
    :initarg :parking_dis
    :type cl:float
    :initform 0.0))
)

(cl:defclass ButtonParking-request (<ButtonParking-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ButtonParking-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ButtonParking-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ButtonParking-request> is deprecated: use campusrover_msgs-srv:ButtonParking-request instead.")))

(cl:ensure-generic-function 'parking_dis-val :lambda-list '(m))
(cl:defmethod parking_dis-val ((m <ButtonParking-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:parking_dis-val is deprecated.  Use campusrover_msgs-srv:parking_dis instead.")
  (parking_dis m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ButtonParking-request>) ostream)
  "Serializes a message object of type '<ButtonParking-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'parking_dis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ButtonParking-request>) istream)
  "Deserializes a message object of type '<ButtonParking-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'parking_dis) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ButtonParking-request>)))
  "Returns string type for a service object of type '<ButtonParking-request>"
  "campusrover_msgs/ButtonParkingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonParking-request)))
  "Returns string type for a service object of type 'ButtonParking-request"
  "campusrover_msgs/ButtonParkingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ButtonParking-request>)))
  "Returns md5sum for a message object of type '<ButtonParking-request>"
  "fcf6feb26f63e7e05f9ddc618069eaed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ButtonParking-request)))
  "Returns md5sum for a message object of type 'ButtonParking-request"
  "fcf6feb26f63e7e05f9ddc618069eaed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ButtonParking-request>)))
  "Returns full string definition for message of type '<ButtonParking-request>"
  (cl:format cl:nil "float32 parking_dis~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ButtonParking-request)))
  "Returns full string definition for message of type 'ButtonParking-request"
  (cl:format cl:nil "float32 parking_dis~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ButtonParking-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ButtonParking-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ButtonParking-request
    (cl:cons ':parking_dis (parking_dis msg))
))
;//! \htmlinclude ButtonParking-response.msg.html

(cl:defclass <ButtonParking-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ButtonParking-response (<ButtonParking-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ButtonParking-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ButtonParking-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ButtonParking-response> is deprecated: use campusrover_msgs-srv:ButtonParking-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ButtonParking-response>) ostream)
  "Serializes a message object of type '<ButtonParking-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ButtonParking-response>) istream)
  "Deserializes a message object of type '<ButtonParking-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ButtonParking-response>)))
  "Returns string type for a service object of type '<ButtonParking-response>"
  "campusrover_msgs/ButtonParkingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonParking-response)))
  "Returns string type for a service object of type 'ButtonParking-response"
  "campusrover_msgs/ButtonParkingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ButtonParking-response>)))
  "Returns md5sum for a message object of type '<ButtonParking-response>"
  "fcf6feb26f63e7e05f9ddc618069eaed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ButtonParking-response)))
  "Returns md5sum for a message object of type 'ButtonParking-response"
  "fcf6feb26f63e7e05f9ddc618069eaed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ButtonParking-response>)))
  "Returns full string definition for message of type '<ButtonParking-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ButtonParking-response)))
  "Returns full string definition for message of type 'ButtonParking-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ButtonParking-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ButtonParking-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ButtonParking-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ButtonParking)))
  'ButtonParking-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ButtonParking)))
  'ButtonParking-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonParking)))
  "Returns string type for a service object of type '<ButtonParking>"
  "campusrover_msgs/ButtonParking")