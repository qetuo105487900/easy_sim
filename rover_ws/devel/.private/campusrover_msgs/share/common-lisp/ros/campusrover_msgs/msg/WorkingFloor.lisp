; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-msg)


;//! \htmlinclude WorkingFloor.msg.html

(cl:defclass <WorkingFloor> (roslisp-msg-protocol:ros-message)
  ((building
    :reader building
    :initarg :building
    :type cl:string
    :initform "")
   (floor
    :reader floor
    :initarg :floor
    :type cl:string
    :initform ""))
)

(cl:defclass WorkingFloor (<WorkingFloor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WorkingFloor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WorkingFloor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-msg:<WorkingFloor> is deprecated: use campusrover_msgs-msg:WorkingFloor instead.")))

(cl:ensure-generic-function 'building-val :lambda-list '(m))
(cl:defmethod building-val ((m <WorkingFloor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:building-val is deprecated.  Use campusrover_msgs-msg:building instead.")
  (building m))

(cl:ensure-generic-function 'floor-val :lambda-list '(m))
(cl:defmethod floor-val ((m <WorkingFloor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:floor-val is deprecated.  Use campusrover_msgs-msg:floor instead.")
  (floor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WorkingFloor>) ostream)
  "Serializes a message object of type '<WorkingFloor>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'building))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'building))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'floor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'floor))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WorkingFloor>) istream)
  "Deserializes a message object of type '<WorkingFloor>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'building) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'building) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'floor) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'floor) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WorkingFloor>)))
  "Returns string type for a message object of type '<WorkingFloor>"
  "campusrover_msgs/WorkingFloor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WorkingFloor)))
  "Returns string type for a message object of type 'WorkingFloor"
  "campusrover_msgs/WorkingFloor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WorkingFloor>)))
  "Returns md5sum for a message object of type '<WorkingFloor>"
  "9b15058aba057dc225e6ed360700b819")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WorkingFloor)))
  "Returns md5sum for a message object of type 'WorkingFloor"
  "9b15058aba057dc225e6ed360700b819")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WorkingFloor>)))
  "Returns full string definition for message of type '<WorkingFloor>"
  (cl:format cl:nil "string building~%string floor~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WorkingFloor)))
  "Returns full string definition for message of type 'WorkingFloor"
  (cl:format cl:nil "string building~%string floor~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WorkingFloor>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'building))
     4 (cl:length (cl:slot-value msg 'floor))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WorkingFloor>))
  "Converts a ROS message object to a list"
  (cl:list 'WorkingFloor
    (cl:cons ':building (building msg))
    (cl:cons ':floor (floor msg))
))
