; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude MapPointPose-request.msg.html

(cl:defclass <MapPointPose-request> (roslisp-msg-protocol:ros-message)
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
   (point
    :reader point
    :initarg :point
    :type cl:string
    :initform ""))
)

(cl:defclass MapPointPose-request (<MapPointPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapPointPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapPointPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<MapPointPose-request> is deprecated: use campusrover_msgs-srv:MapPointPose-request instead.")))

(cl:ensure-generic-function 'building-val :lambda-list '(m))
(cl:defmethod building-val ((m <MapPointPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:building-val is deprecated.  Use campusrover_msgs-srv:building instead.")
  (building m))

(cl:ensure-generic-function 'floor-val :lambda-list '(m))
(cl:defmethod floor-val ((m <MapPointPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:floor-val is deprecated.  Use campusrover_msgs-srv:floor instead.")
  (floor m))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <MapPointPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:point-val is deprecated.  Use campusrover_msgs-srv:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapPointPose-request>) ostream)
  "Serializes a message object of type '<MapPointPose-request>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'point))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'point))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapPointPose-request>) istream)
  "Deserializes a message object of type '<MapPointPose-request>"
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
      (cl:setf (cl:slot-value msg 'point) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'point) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapPointPose-request>)))
  "Returns string type for a service object of type '<MapPointPose-request>"
  "campusrover_msgs/MapPointPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapPointPose-request)))
  "Returns string type for a service object of type 'MapPointPose-request"
  "campusrover_msgs/MapPointPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapPointPose-request>)))
  "Returns md5sum for a message object of type '<MapPointPose-request>"
  "9fe5216ac464279e66a2d885233c843b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapPointPose-request)))
  "Returns md5sum for a message object of type 'MapPointPose-request"
  "9fe5216ac464279e66a2d885233c843b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapPointPose-request>)))
  "Returns full string definition for message of type '<MapPointPose-request>"
  (cl:format cl:nil "string building~%string floor~%string point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapPointPose-request)))
  "Returns full string definition for message of type 'MapPointPose-request"
  (cl:format cl:nil "string building~%string floor~%string point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapPointPose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'building))
     4 (cl:length (cl:slot-value msg 'floor))
     4 (cl:length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapPointPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MapPointPose-request
    (cl:cons ':building (building msg))
    (cl:cons ':floor (floor msg))
    (cl:cons ':point (point msg))
))
;//! \htmlinclude MapPointPose-response.msg.html

(cl:defclass <MapPointPose-response> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass MapPointPose-response (<MapPointPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapPointPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapPointPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<MapPointPose-response> is deprecated: use campusrover_msgs-srv:MapPointPose-response instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <MapPointPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:pose-val is deprecated.  Use campusrover_msgs-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapPointPose-response>) ostream)
  "Serializes a message object of type '<MapPointPose-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapPointPose-response>) istream)
  "Deserializes a message object of type '<MapPointPose-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapPointPose-response>)))
  "Returns string type for a service object of type '<MapPointPose-response>"
  "campusrover_msgs/MapPointPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapPointPose-response)))
  "Returns string type for a service object of type 'MapPointPose-response"
  "campusrover_msgs/MapPointPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapPointPose-response>)))
  "Returns md5sum for a message object of type '<MapPointPose-response>"
  "9fe5216ac464279e66a2d885233c843b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapPointPose-response)))
  "Returns md5sum for a message object of type 'MapPointPose-response"
  "9fe5216ac464279e66a2d885233c843b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapPointPose-response>)))
  "Returns full string definition for message of type '<MapPointPose-response>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapPointPose-response)))
  "Returns full string definition for message of type 'MapPointPose-response"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapPointPose-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapPointPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MapPointPose-response
    (cl:cons ':pose (pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MapPointPose)))
  'MapPointPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MapPointPose)))
  'MapPointPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapPointPose)))
  "Returns string type for a service object of type '<MapPointPose>"
  "campusrover_msgs/MapPointPose")