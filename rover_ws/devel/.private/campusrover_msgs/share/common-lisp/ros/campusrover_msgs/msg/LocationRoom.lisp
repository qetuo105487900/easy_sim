; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-msg)


;//! \htmlinclude LocationRoom.msg.html

(cl:defclass <LocationRoom> (roslisp-msg-protocol:ros-message)
  ((building
    :reader building
    :initarg :building
    :type cl:string
    :initform "")
   (floor
    :reader floor
    :initarg :floor
    :type cl:string
    :initform "")
   (room
    :reader room
    :initarg :room
    :type cl:string
    :initform ""))
)

(cl:defclass LocationRoom (<LocationRoom>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocationRoom>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocationRoom)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-msg:<LocationRoom> is deprecated: use campusrover_msgs-msg:LocationRoom instead.")))

(cl:ensure-generic-function 'building-val :lambda-list '(m))
(cl:defmethod building-val ((m <LocationRoom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:building-val is deprecated.  Use campusrover_msgs-msg:building instead.")
  (building m))

(cl:ensure-generic-function 'floor-val :lambda-list '(m))
(cl:defmethod floor-val ((m <LocationRoom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:floor-val is deprecated.  Use campusrover_msgs-msg:floor instead.")
  (floor m))

(cl:ensure-generic-function 'room-val :lambda-list '(m))
(cl:defmethod room-val ((m <LocationRoom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:room-val is deprecated.  Use campusrover_msgs-msg:room instead.")
  (room m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocationRoom>) ostream)
  "Serializes a message object of type '<LocationRoom>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'room))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'room))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocationRoom>) istream)
  "Deserializes a message object of type '<LocationRoom>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'room) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'room) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocationRoom>)))
  "Returns string type for a message object of type '<LocationRoom>"
  "campusrover_msgs/LocationRoom")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocationRoom)))
  "Returns string type for a message object of type 'LocationRoom"
  "campusrover_msgs/LocationRoom")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocationRoom>)))
  "Returns md5sum for a message object of type '<LocationRoom>"
  "5f74223b9b035206d07897cf693b1688")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocationRoom)))
  "Returns md5sum for a message object of type 'LocationRoom"
  "5f74223b9b035206d07897cf693b1688")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocationRoom>)))
  "Returns full string definition for message of type '<LocationRoom>"
  (cl:format cl:nil "string building~%string floor~%string room~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocationRoom)))
  "Returns full string definition for message of type 'LocationRoom"
  (cl:format cl:nil "string building~%string floor~%string room~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocationRoom>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'building))
     4 (cl:length (cl:slot-value msg 'floor))
     4 (cl:length (cl:slot-value msg 'room))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocationRoom>))
  "Converts a ROS message object to a list"
  (cl:list 'LocationRoom
    (cl:cons ':building (building msg))
    (cl:cons ':floor (floor msg))
    (cl:cons ':room (room msg))
))
