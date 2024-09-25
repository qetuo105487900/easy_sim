; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude ArmTablePosition-request.msg.html

(cl:defclass <ArmTablePosition-request> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass ArmTablePosition-request (<ArmTablePosition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmTablePosition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmTablePosition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ArmTablePosition-request> is deprecated: use campusrover_msgs-srv:ArmTablePosition-request instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ArmTablePosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:position-val is deprecated.  Use campusrover_msgs-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmTablePosition-request>) ostream)
  "Serializes a message object of type '<ArmTablePosition-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmTablePosition-request>) istream)
  "Deserializes a message object of type '<ArmTablePosition-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmTablePosition-request>)))
  "Returns string type for a service object of type '<ArmTablePosition-request>"
  "campusrover_msgs/ArmTablePositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmTablePosition-request)))
  "Returns string type for a service object of type 'ArmTablePosition-request"
  "campusrover_msgs/ArmTablePositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmTablePosition-request>)))
  "Returns md5sum for a message object of type '<ArmTablePosition-request>"
  "e7bb0ef028c744b081acdc57743b11d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmTablePosition-request)))
  "Returns md5sum for a message object of type 'ArmTablePosition-request"
  "e7bb0ef028c744b081acdc57743b11d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmTablePosition-request>)))
  "Returns full string definition for message of type '<ArmTablePosition-request>"
  (cl:format cl:nil "geometry_msgs/Point position~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmTablePosition-request)))
  "Returns full string definition for message of type 'ArmTablePosition-request"
  (cl:format cl:nil "geometry_msgs/Point position~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmTablePosition-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmTablePosition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmTablePosition-request
    (cl:cons ':position (position msg))
))
;//! \htmlinclude ArmTablePosition-response.msg.html

(cl:defclass <ArmTablePosition-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ArmTablePosition-response (<ArmTablePosition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmTablePosition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmTablePosition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ArmTablePosition-response> is deprecated: use campusrover_msgs-srv:ArmTablePosition-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmTablePosition-response>) ostream)
  "Serializes a message object of type '<ArmTablePosition-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmTablePosition-response>) istream)
  "Deserializes a message object of type '<ArmTablePosition-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmTablePosition-response>)))
  "Returns string type for a service object of type '<ArmTablePosition-response>"
  "campusrover_msgs/ArmTablePositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmTablePosition-response)))
  "Returns string type for a service object of type 'ArmTablePosition-response"
  "campusrover_msgs/ArmTablePositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmTablePosition-response>)))
  "Returns md5sum for a message object of type '<ArmTablePosition-response>"
  "e7bb0ef028c744b081acdc57743b11d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmTablePosition-response)))
  "Returns md5sum for a message object of type 'ArmTablePosition-response"
  "e7bb0ef028c744b081acdc57743b11d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmTablePosition-response>)))
  "Returns full string definition for message of type '<ArmTablePosition-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmTablePosition-response)))
  "Returns full string definition for message of type 'ArmTablePosition-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmTablePosition-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmTablePosition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmTablePosition-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ArmTablePosition)))
  'ArmTablePosition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ArmTablePosition)))
  'ArmTablePosition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmTablePosition)))
  "Returns string type for a service object of type '<ArmTablePosition>"
  "campusrover_msgs/ArmTablePosition")