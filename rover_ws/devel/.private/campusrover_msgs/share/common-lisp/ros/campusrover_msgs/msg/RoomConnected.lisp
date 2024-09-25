; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-msg)


;//! \htmlinclude RoomConnected.msg.html

(cl:defclass <RoomConnected> (roslisp-msg-protocol:ros-message)
  ((connection
    :reader connection
    :initarg :connection
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass RoomConnected (<RoomConnected>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoomConnected>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoomConnected)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-msg:<RoomConnected> is deprecated: use campusrover_msgs-msg:RoomConnected instead.")))

(cl:ensure-generic-function 'connection-val :lambda-list '(m))
(cl:defmethod connection-val ((m <RoomConnected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:connection-val is deprecated.  Use campusrover_msgs-msg:connection instead.")
  (connection m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoomConnected>) ostream)
  "Serializes a message object of type '<RoomConnected>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'connection))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'connection))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoomConnected>) istream)
  "Deserializes a message object of type '<RoomConnected>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'connection) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'connection)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoomConnected>)))
  "Returns string type for a message object of type '<RoomConnected>"
  "campusrover_msgs/RoomConnected")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoomConnected)))
  "Returns string type for a message object of type 'RoomConnected"
  "campusrover_msgs/RoomConnected")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoomConnected>)))
  "Returns md5sum for a message object of type '<RoomConnected>"
  "43f469704f4cb14b510f898718cdf6a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoomConnected)))
  "Returns md5sum for a message object of type 'RoomConnected"
  "43f469704f4cb14b510f898718cdf6a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoomConnected>)))
  "Returns full string definition for message of type '<RoomConnected>"
  (cl:format cl:nil "string[] connection~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoomConnected)))
  "Returns full string definition for message of type 'RoomConnected"
  (cl:format cl:nil "string[] connection~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoomConnected>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'connection) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoomConnected>))
  "Converts a ROS message object to a list"
  (cl:list 'RoomConnected
    (cl:cons ':connection (connection msg))
))
