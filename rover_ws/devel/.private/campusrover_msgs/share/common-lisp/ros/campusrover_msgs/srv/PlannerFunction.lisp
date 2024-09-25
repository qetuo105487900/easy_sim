; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude PlannerFunction-request.msg.html

(cl:defclass <PlannerFunction-request> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (direction_inverse
    :reader direction_inverse
    :initarg :direction_inverse
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (obstacle_avoidance
    :reader obstacle_avoidance
    :initarg :obstacle_avoidance
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (speed_parameter
    :reader speed_parameter
    :initarg :speed_parameter
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass PlannerFunction-request (<PlannerFunction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlannerFunction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlannerFunction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<PlannerFunction-request> is deprecated: use campusrover_msgs-srv:PlannerFunction-request instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <PlannerFunction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:action-val is deprecated.  Use campusrover_msgs-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'direction_inverse-val :lambda-list '(m))
(cl:defmethod direction_inverse-val ((m <PlannerFunction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:direction_inverse-val is deprecated.  Use campusrover_msgs-srv:direction_inverse instead.")
  (direction_inverse m))

(cl:ensure-generic-function 'obstacle_avoidance-val :lambda-list '(m))
(cl:defmethod obstacle_avoidance-val ((m <PlannerFunction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:obstacle_avoidance-val is deprecated.  Use campusrover_msgs-srv:obstacle_avoidance instead.")
  (obstacle_avoidance m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <PlannerFunction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:mode-val is deprecated.  Use campusrover_msgs-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'speed_parameter-val :lambda-list '(m))
(cl:defmethod speed_parameter-val ((m <PlannerFunction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:speed_parameter-val is deprecated.  Use campusrover_msgs-srv:speed_parameter instead.")
  (speed_parameter m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PlannerFunction-request>)))
    "Constants for message type '<PlannerFunction-request>"
  '((:MODE_GLOBAL_PATH . 1)
    (:MODE_ELEVATOR_PATH . 2)
    (:MODE_BUTTON_PARKING . 3)
    (:MODE_PULLOVER_PATH . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PlannerFunction-request)))
    "Constants for message type 'PlannerFunction-request"
  '((:MODE_GLOBAL_PATH . 1)
    (:MODE_ELEVATOR_PATH . 2)
    (:MODE_BUTTON_PARKING . 3)
    (:MODE_PULLOVER_PATH . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlannerFunction-request>) ostream)
  "Serializes a message object of type '<PlannerFunction-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'direction_inverse) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacle_avoidance) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'speed_parameter) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlannerFunction-request>) istream)
  "Deserializes a message object of type '<PlannerFunction-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'direction_inverse) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacle_avoidance) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'speed_parameter) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlannerFunction-request>)))
  "Returns string type for a service object of type '<PlannerFunction-request>"
  "campusrover_msgs/PlannerFunctionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlannerFunction-request)))
  "Returns string type for a service object of type 'PlannerFunction-request"
  "campusrover_msgs/PlannerFunctionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlannerFunction-request>)))
  "Returns md5sum for a message object of type '<PlannerFunction-request>"
  "c60ec02ce4d0a2a87272560a3a28c93a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlannerFunction-request)))
  "Returns md5sum for a message object of type 'PlannerFunction-request"
  "c60ec02ce4d0a2a87272560a3a28c93a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlannerFunction-request>)))
  "Returns full string definition for message of type '<PlannerFunction-request>"
  (cl:format cl:nil "uint8 MODE_GLOBAL_PATH = 1~%uint8 MODE_ELEVATOR_PATH = 2~%uint8 MODE_BUTTON_PARKING = 3~%uint8 MODE_PULLOVER_PATH = 4~%std_msgs/Bool action~%std_msgs/Bool direction_inverse~%std_msgs/Bool obstacle_avoidance~%uint8 mode~%geometry_msgs/Twist speed_parameter~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlannerFunction-request)))
  "Returns full string definition for message of type 'PlannerFunction-request"
  (cl:format cl:nil "uint8 MODE_GLOBAL_PATH = 1~%uint8 MODE_ELEVATOR_PATH = 2~%uint8 MODE_BUTTON_PARKING = 3~%uint8 MODE_PULLOVER_PATH = 4~%std_msgs/Bool action~%std_msgs/Bool direction_inverse~%std_msgs/Bool obstacle_avoidance~%uint8 mode~%geometry_msgs/Twist speed_parameter~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlannerFunction-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'direction_inverse))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacle_avoidance))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'speed_parameter))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlannerFunction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PlannerFunction-request
    (cl:cons ':action (action msg))
    (cl:cons ':direction_inverse (direction_inverse msg))
    (cl:cons ':obstacle_avoidance (obstacle_avoidance msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':speed_parameter (speed_parameter msg))
))
;//! \htmlinclude PlannerFunction-response.msg.html

(cl:defclass <PlannerFunction-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PlannerFunction-response (<PlannerFunction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlannerFunction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlannerFunction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<PlannerFunction-response> is deprecated: use campusrover_msgs-srv:PlannerFunction-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlannerFunction-response>) ostream)
  "Serializes a message object of type '<PlannerFunction-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlannerFunction-response>) istream)
  "Deserializes a message object of type '<PlannerFunction-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlannerFunction-response>)))
  "Returns string type for a service object of type '<PlannerFunction-response>"
  "campusrover_msgs/PlannerFunctionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlannerFunction-response)))
  "Returns string type for a service object of type 'PlannerFunction-response"
  "campusrover_msgs/PlannerFunctionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlannerFunction-response>)))
  "Returns md5sum for a message object of type '<PlannerFunction-response>"
  "c60ec02ce4d0a2a87272560a3a28c93a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlannerFunction-response)))
  "Returns md5sum for a message object of type 'PlannerFunction-response"
  "c60ec02ce4d0a2a87272560a3a28c93a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlannerFunction-response>)))
  "Returns full string definition for message of type '<PlannerFunction-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlannerFunction-response)))
  "Returns full string definition for message of type 'PlannerFunction-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlannerFunction-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlannerFunction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PlannerFunction-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PlannerFunction)))
  'PlannerFunction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PlannerFunction)))
  'PlannerFunction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlannerFunction)))
  "Returns string type for a service object of type '<PlannerFunction>"
  "campusrover_msgs/PlannerFunction")