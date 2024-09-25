; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude ElevatorControlInterface-request.msg.html

(cl:defclass <ElevatorControlInterface-request> (roslisp-msg-protocol:ros-message)
  ((enable_multi
    :reader enable_multi
    :initarg :enable_multi
    :type cl:boolean
    :initform cl:nil)
   (elevator_id
    :reader elevator_id
    :initarg :elevator_id
    :type cl:string
    :initform "")
   (building
    :reader building
    :initarg :building
    :type cl:string
    :initform "")
   (init_floor
    :reader init_floor
    :initarg :init_floor
    :type cl:fixnum
    :initform 0)
   (target_floor
    :reader target_floor
    :initarg :target_floor
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ElevatorControlInterface-request (<ElevatorControlInterface-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElevatorControlInterface-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElevatorControlInterface-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ElevatorControlInterface-request> is deprecated: use campusrover_msgs-srv:ElevatorControlInterface-request instead.")))

(cl:ensure-generic-function 'enable_multi-val :lambda-list '(m))
(cl:defmethod enable_multi-val ((m <ElevatorControlInterface-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:enable_multi-val is deprecated.  Use campusrover_msgs-srv:enable_multi instead.")
  (enable_multi m))

(cl:ensure-generic-function 'elevator_id-val :lambda-list '(m))
(cl:defmethod elevator_id-val ((m <ElevatorControlInterface-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:elevator_id-val is deprecated.  Use campusrover_msgs-srv:elevator_id instead.")
  (elevator_id m))

(cl:ensure-generic-function 'building-val :lambda-list '(m))
(cl:defmethod building-val ((m <ElevatorControlInterface-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:building-val is deprecated.  Use campusrover_msgs-srv:building instead.")
  (building m))

(cl:ensure-generic-function 'init_floor-val :lambda-list '(m))
(cl:defmethod init_floor-val ((m <ElevatorControlInterface-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:init_floor-val is deprecated.  Use campusrover_msgs-srv:init_floor instead.")
  (init_floor m))

(cl:ensure-generic-function 'target_floor-val :lambda-list '(m))
(cl:defmethod target_floor-val ((m <ElevatorControlInterface-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:target_floor-val is deprecated.  Use campusrover_msgs-srv:target_floor instead.")
  (target_floor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElevatorControlInterface-request>) ostream)
  "Serializes a message object of type '<ElevatorControlInterface-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_multi) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'elevator_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'elevator_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'building))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'building))
  (cl:let* ((signed (cl:slot-value msg 'init_floor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'target_floor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElevatorControlInterface-request>) istream)
  "Deserializes a message object of type '<ElevatorControlInterface-request>"
    (cl:setf (cl:slot-value msg 'enable_multi) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'elevator_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'elevator_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'building) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'building) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'init_floor) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_floor) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElevatorControlInterface-request>)))
  "Returns string type for a service object of type '<ElevatorControlInterface-request>"
  "campusrover_msgs/ElevatorControlInterfaceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElevatorControlInterface-request)))
  "Returns string type for a service object of type 'ElevatorControlInterface-request"
  "campusrover_msgs/ElevatorControlInterfaceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElevatorControlInterface-request>)))
  "Returns md5sum for a message object of type '<ElevatorControlInterface-request>"
  "921e2fec69ab3d7333541f6289522f53")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElevatorControlInterface-request)))
  "Returns md5sum for a message object of type 'ElevatorControlInterface-request"
  "921e2fec69ab3d7333541f6289522f53")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElevatorControlInterface-request>)))
  "Returns full string definition for message of type '<ElevatorControlInterface-request>"
  (cl:format cl:nil "bool enable_multi~%string elevator_id~%string building~%int8 init_floor~%int8 target_floor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElevatorControlInterface-request)))
  "Returns full string definition for message of type 'ElevatorControlInterface-request"
  (cl:format cl:nil "bool enable_multi~%string elevator_id~%string building~%int8 init_floor~%int8 target_floor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElevatorControlInterface-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'elevator_id))
     4 (cl:length (cl:slot-value msg 'building))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElevatorControlInterface-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ElevatorControlInterface-request
    (cl:cons ':enable_multi (enable_multi msg))
    (cl:cons ':elevator_id (elevator_id msg))
    (cl:cons ':building (building msg))
    (cl:cons ':init_floor (init_floor msg))
    (cl:cons ':target_floor (target_floor msg))
))
;//! \htmlinclude ElevatorControlInterface-response.msg.html

(cl:defclass <ElevatorControlInterface-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ElevatorControlInterface-response (<ElevatorControlInterface-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElevatorControlInterface-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElevatorControlInterface-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ElevatorControlInterface-response> is deprecated: use campusrover_msgs-srv:ElevatorControlInterface-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElevatorControlInterface-response>) ostream)
  "Serializes a message object of type '<ElevatorControlInterface-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElevatorControlInterface-response>) istream)
  "Deserializes a message object of type '<ElevatorControlInterface-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElevatorControlInterface-response>)))
  "Returns string type for a service object of type '<ElevatorControlInterface-response>"
  "campusrover_msgs/ElevatorControlInterfaceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElevatorControlInterface-response)))
  "Returns string type for a service object of type 'ElevatorControlInterface-response"
  "campusrover_msgs/ElevatorControlInterfaceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElevatorControlInterface-response>)))
  "Returns md5sum for a message object of type '<ElevatorControlInterface-response>"
  "921e2fec69ab3d7333541f6289522f53")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElevatorControlInterface-response)))
  "Returns md5sum for a message object of type 'ElevatorControlInterface-response"
  "921e2fec69ab3d7333541f6289522f53")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElevatorControlInterface-response>)))
  "Returns full string definition for message of type '<ElevatorControlInterface-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElevatorControlInterface-response)))
  "Returns full string definition for message of type 'ElevatorControlInterface-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElevatorControlInterface-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElevatorControlInterface-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ElevatorControlInterface-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ElevatorControlInterface)))
  'ElevatorControlInterface-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ElevatorControlInterface)))
  'ElevatorControlInterface-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElevatorControlInterface)))
  "Returns string type for a service object of type '<ElevatorControlInterface>"
  "campusrover_msgs/ElevatorControlInterface")