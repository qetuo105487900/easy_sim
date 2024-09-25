; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude ElevatorInfoReader-request.msg.html

(cl:defclass <ElevatorInfoReader-request> (roslisp-msg-protocol:ros-message)
  ((building
    :reader building
    :initarg :building
    :type cl:string
    :initform "")
   (elevator_id
    :reader elevator_id
    :initarg :elevator_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ElevatorInfoReader-request (<ElevatorInfoReader-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElevatorInfoReader-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElevatorInfoReader-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ElevatorInfoReader-request> is deprecated: use campusrover_msgs-srv:ElevatorInfoReader-request instead.")))

(cl:ensure-generic-function 'building-val :lambda-list '(m))
(cl:defmethod building-val ((m <ElevatorInfoReader-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:building-val is deprecated.  Use campusrover_msgs-srv:building instead.")
  (building m))

(cl:ensure-generic-function 'elevator_id-val :lambda-list '(m))
(cl:defmethod elevator_id-val ((m <ElevatorInfoReader-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:elevator_id-val is deprecated.  Use campusrover_msgs-srv:elevator_id instead.")
  (elevator_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElevatorInfoReader-request>) ostream)
  "Serializes a message object of type '<ElevatorInfoReader-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'building))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'building))
  (cl:let* ((signed (cl:slot-value msg 'elevator_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElevatorInfoReader-request>) istream)
  "Deserializes a message object of type '<ElevatorInfoReader-request>"
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
      (cl:setf (cl:slot-value msg 'elevator_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElevatorInfoReader-request>)))
  "Returns string type for a service object of type '<ElevatorInfoReader-request>"
  "campusrover_msgs/ElevatorInfoReaderRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElevatorInfoReader-request)))
  "Returns string type for a service object of type 'ElevatorInfoReader-request"
  "campusrover_msgs/ElevatorInfoReaderRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElevatorInfoReader-request>)))
  "Returns md5sum for a message object of type '<ElevatorInfoReader-request>"
  "5b0fce0ae6e42e7d4a2cd3e0f8048504")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElevatorInfoReader-request)))
  "Returns md5sum for a message object of type 'ElevatorInfoReader-request"
  "5b0fce0ae6e42e7d4a2cd3e0f8048504")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElevatorInfoReader-request>)))
  "Returns full string definition for message of type '<ElevatorInfoReader-request>"
  (cl:format cl:nil "string building~%int8 elevator_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElevatorInfoReader-request)))
  "Returns full string definition for message of type 'ElevatorInfoReader-request"
  (cl:format cl:nil "string building~%int8 elevator_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElevatorInfoReader-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'building))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElevatorInfoReader-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ElevatorInfoReader-request
    (cl:cons ':building (building msg))
    (cl:cons ':elevator_id (elevator_id msg))
))
;//! \htmlinclude ElevatorInfoReader-response.msg.html

(cl:defclass <ElevatorInfoReader-response> (roslisp-msg-protocol:ros-message)
  ((elevator_infos
    :reader elevator_infos
    :initarg :elevator_infos
    :type campusrover_msgs-msg:ElevatorInfoArray
    :initform (cl:make-instance 'campusrover_msgs-msg:ElevatorInfoArray)))
)

(cl:defclass ElevatorInfoReader-response (<ElevatorInfoReader-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElevatorInfoReader-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElevatorInfoReader-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ElevatorInfoReader-response> is deprecated: use campusrover_msgs-srv:ElevatorInfoReader-response instead.")))

(cl:ensure-generic-function 'elevator_infos-val :lambda-list '(m))
(cl:defmethod elevator_infos-val ((m <ElevatorInfoReader-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:elevator_infos-val is deprecated.  Use campusrover_msgs-srv:elevator_infos instead.")
  (elevator_infos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElevatorInfoReader-response>) ostream)
  "Serializes a message object of type '<ElevatorInfoReader-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'elevator_infos) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElevatorInfoReader-response>) istream)
  "Deserializes a message object of type '<ElevatorInfoReader-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'elevator_infos) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElevatorInfoReader-response>)))
  "Returns string type for a service object of type '<ElevatorInfoReader-response>"
  "campusrover_msgs/ElevatorInfoReaderResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElevatorInfoReader-response)))
  "Returns string type for a service object of type 'ElevatorInfoReader-response"
  "campusrover_msgs/ElevatorInfoReaderResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElevatorInfoReader-response>)))
  "Returns md5sum for a message object of type '<ElevatorInfoReader-response>"
  "5b0fce0ae6e42e7d4a2cd3e0f8048504")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElevatorInfoReader-response)))
  "Returns md5sum for a message object of type 'ElevatorInfoReader-response"
  "5b0fce0ae6e42e7d4a2cd3e0f8048504")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElevatorInfoReader-response>)))
  "Returns full string definition for message of type '<ElevatorInfoReader-response>"
  (cl:format cl:nil "ElevatorInfoArray elevator_infos~%~%================================================================================~%MSG: campusrover_msgs/ElevatorInfoArray~%campusrover_msgs/ElevatorInfo[] elevator_infos~%================================================================================~%MSG: campusrover_msgs/ElevatorInfo~%string building~%int64 id~%geometry_msgs/Point elevator_size ~%geometry_msgs/Point elevator_door_size ~%geometry_msgs/Pose outside_button_position ~%geometry_msgs/Pose inside_button_position ~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElevatorInfoReader-response)))
  "Returns full string definition for message of type 'ElevatorInfoReader-response"
  (cl:format cl:nil "ElevatorInfoArray elevator_infos~%~%================================================================================~%MSG: campusrover_msgs/ElevatorInfoArray~%campusrover_msgs/ElevatorInfo[] elevator_infos~%================================================================================~%MSG: campusrover_msgs/ElevatorInfo~%string building~%int64 id~%geometry_msgs/Point elevator_size ~%geometry_msgs/Point elevator_door_size ~%geometry_msgs/Pose outside_button_position ~%geometry_msgs/Pose inside_button_position ~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElevatorInfoReader-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'elevator_infos))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElevatorInfoReader-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ElevatorInfoReader-response
    (cl:cons ':elevator_infos (elevator_infos msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ElevatorInfoReader)))
  'ElevatorInfoReader-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ElevatorInfoReader)))
  'ElevatorInfoReader-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElevatorInfoReader)))
  "Returns string type for a service object of type '<ElevatorInfoReader>"
  "campusrover_msgs/ElevatorInfoReader")