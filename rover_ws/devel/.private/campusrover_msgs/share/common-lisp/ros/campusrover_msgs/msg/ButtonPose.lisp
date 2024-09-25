; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-msg)


;//! \htmlinclude ButtonPose.msg.html

(cl:defclass <ButtonPose> (roslisp-msg-protocol:ros-message)
  ((label
    :reader label
    :initarg :label
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (activation
    :reader activation
    :initarg :activation
    :type cl:float
    :initform 0.0))
)

(cl:defclass ButtonPose (<ButtonPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ButtonPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ButtonPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-msg:<ButtonPose> is deprecated: use campusrover_msgs-msg:ButtonPose instead.")))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <ButtonPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:label-val is deprecated.  Use campusrover_msgs-msg:label instead.")
  (label m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <ButtonPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:pose-val is deprecated.  Use campusrover_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'activation-val :lambda-list '(m))
(cl:defmethod activation-val ((m <ButtonPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:activation-val is deprecated.  Use campusrover_msgs-msg:activation instead.")
  (activation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ButtonPose>) ostream)
  "Serializes a message object of type '<ButtonPose>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'activation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ButtonPose>) istream)
  "Deserializes a message object of type '<ButtonPose>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'activation) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ButtonPose>)))
  "Returns string type for a message object of type '<ButtonPose>"
  "campusrover_msgs/ButtonPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonPose)))
  "Returns string type for a message object of type 'ButtonPose"
  "campusrover_msgs/ButtonPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ButtonPose>)))
  "Returns md5sum for a message object of type '<ButtonPose>"
  "daca3be73334a64027cdf1e3ddf112de")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ButtonPose)))
  "Returns md5sum for a message object of type 'ButtonPose"
  "daca3be73334a64027cdf1e3ddf112de")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ButtonPose>)))
  "Returns full string definition for message of type '<ButtonPose>"
  (cl:format cl:nil "string label~%geometry_msgs/Pose pose~%float32 activation~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ButtonPose)))
  "Returns full string definition for message of type 'ButtonPose"
  (cl:format cl:nil "string label~%geometry_msgs/Pose pose~%float32 activation~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ButtonPose>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'label))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ButtonPose>))
  "Converts a ROS message object to a list"
  (cl:list 'ButtonPose
    (cl:cons ':label (label msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':activation (activation msg))
))
