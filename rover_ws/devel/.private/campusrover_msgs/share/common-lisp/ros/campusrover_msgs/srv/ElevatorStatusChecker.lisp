; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude ElevatorStatusChecker-request.msg.html

(cl:defclass <ElevatorStatusChecker-request> (roslisp-msg-protocol:ros-message)
  ((node_name
    :reader node_name
    :initarg :node_name
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (status
    :reader status
    :initarg :status
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass ElevatorStatusChecker-request (<ElevatorStatusChecker-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElevatorStatusChecker-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElevatorStatusChecker-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ElevatorStatusChecker-request> is deprecated: use campusrover_msgs-srv:ElevatorStatusChecker-request instead.")))

(cl:ensure-generic-function 'node_name-val :lambda-list '(m))
(cl:defmethod node_name-val ((m <ElevatorStatusChecker-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:node_name-val is deprecated.  Use campusrover_msgs-srv:node_name instead.")
  (node_name m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ElevatorStatusChecker-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:status-val is deprecated.  Use campusrover_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElevatorStatusChecker-request>) ostream)
  "Serializes a message object of type '<ElevatorStatusChecker-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'node_name) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElevatorStatusChecker-request>) istream)
  "Deserializes a message object of type '<ElevatorStatusChecker-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'node_name) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElevatorStatusChecker-request>)))
  "Returns string type for a service object of type '<ElevatorStatusChecker-request>"
  "campusrover_msgs/ElevatorStatusCheckerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElevatorStatusChecker-request)))
  "Returns string type for a service object of type 'ElevatorStatusChecker-request"
  "campusrover_msgs/ElevatorStatusCheckerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElevatorStatusChecker-request>)))
  "Returns md5sum for a message object of type '<ElevatorStatusChecker-request>"
  "10f198604c5b4593b82d50b6435659cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElevatorStatusChecker-request)))
  "Returns md5sum for a message object of type 'ElevatorStatusChecker-request"
  "10f198604c5b4593b82d50b6435659cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElevatorStatusChecker-request>)))
  "Returns full string definition for message of type '<ElevatorStatusChecker-request>"
  (cl:format cl:nil "std_msgs/String node_name~%std_msgs/Bool status~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElevatorStatusChecker-request)))
  "Returns full string definition for message of type 'ElevatorStatusChecker-request"
  (cl:format cl:nil "std_msgs/String node_name~%std_msgs/Bool status~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElevatorStatusChecker-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'node_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElevatorStatusChecker-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ElevatorStatusChecker-request
    (cl:cons ':node_name (node_name msg))
    (cl:cons ':status (status msg))
))
;//! \htmlinclude ElevatorStatusChecker-response.msg.html

(cl:defclass <ElevatorStatusChecker-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ElevatorStatusChecker-response (<ElevatorStatusChecker-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElevatorStatusChecker-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElevatorStatusChecker-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ElevatorStatusChecker-response> is deprecated: use campusrover_msgs-srv:ElevatorStatusChecker-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElevatorStatusChecker-response>) ostream)
  "Serializes a message object of type '<ElevatorStatusChecker-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElevatorStatusChecker-response>) istream)
  "Deserializes a message object of type '<ElevatorStatusChecker-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElevatorStatusChecker-response>)))
  "Returns string type for a service object of type '<ElevatorStatusChecker-response>"
  "campusrover_msgs/ElevatorStatusCheckerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElevatorStatusChecker-response)))
  "Returns string type for a service object of type 'ElevatorStatusChecker-response"
  "campusrover_msgs/ElevatorStatusCheckerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElevatorStatusChecker-response>)))
  "Returns md5sum for a message object of type '<ElevatorStatusChecker-response>"
  "10f198604c5b4593b82d50b6435659cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElevatorStatusChecker-response)))
  "Returns md5sum for a message object of type 'ElevatorStatusChecker-response"
  "10f198604c5b4593b82d50b6435659cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElevatorStatusChecker-response>)))
  "Returns full string definition for message of type '<ElevatorStatusChecker-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElevatorStatusChecker-response)))
  "Returns full string definition for message of type 'ElevatorStatusChecker-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElevatorStatusChecker-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElevatorStatusChecker-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ElevatorStatusChecker-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ElevatorStatusChecker)))
  'ElevatorStatusChecker-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ElevatorStatusChecker)))
  'ElevatorStatusChecker-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElevatorStatusChecker)))
  "Returns string type for a service object of type '<ElevatorStatusChecker>"
  "campusrover_msgs/ElevatorStatusChecker")