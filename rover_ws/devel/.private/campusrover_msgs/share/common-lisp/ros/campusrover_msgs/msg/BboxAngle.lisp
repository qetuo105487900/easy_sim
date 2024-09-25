; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-msg)


;//! \htmlinclude BboxAngle.msg.html

(cl:defclass <BboxAngle> (roslisp-msg-protocol:ros-message)
  ((label
    :reader label
    :initarg :label
    :type cl:fixnum
    :initform 0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass BboxAngle (<BboxAngle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BboxAngle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BboxAngle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-msg:<BboxAngle> is deprecated: use campusrover_msgs-msg:BboxAngle instead.")))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <BboxAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:label-val is deprecated.  Use campusrover_msgs-msg:label instead.")
  (label m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <BboxAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:angle-val is deprecated.  Use campusrover_msgs-msg:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BboxAngle>)))
    "Constants for message type '<BboxAngle>"
  '((:LABEL_PERSON . 1)
    (:LABEL_BICYCLE . 2)
    (:LABEL_CAR . 3)
    (:LABEL_MOTORCYCLE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BboxAngle)))
    "Constants for message type 'BboxAngle"
  '((:LABEL_PERSON . 1)
    (:LABEL_BICYCLE . 2)
    (:LABEL_CAR . 3)
    (:LABEL_MOTORCYCLE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BboxAngle>) ostream)
  "Serializes a message object of type '<BboxAngle>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'label)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'label)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BboxAngle>) istream)
  "Deserializes a message object of type '<BboxAngle>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'label)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'label)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BboxAngle>)))
  "Returns string type for a message object of type '<BboxAngle>"
  "campusrover_msgs/BboxAngle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BboxAngle)))
  "Returns string type for a message object of type 'BboxAngle"
  "campusrover_msgs/BboxAngle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BboxAngle>)))
  "Returns md5sum for a message object of type '<BboxAngle>"
  "2aa10b01275d72e1527a3a634bcf02a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BboxAngle)))
  "Returns md5sum for a message object of type 'BboxAngle"
  "2aa10b01275d72e1527a3a634bcf02a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BboxAngle>)))
  "Returns full string definition for message of type '<BboxAngle>"
  (cl:format cl:nil "uint16 LABEL_PERSON = 1~%uint16 LABEL_BICYCLE = 2~%uint16 LABEL_CAR = 3~%uint16 LABEL_MOTORCYCLE = 4~%~%uint16 label~%float64 angle~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BboxAngle)))
  "Returns full string definition for message of type 'BboxAngle"
  (cl:format cl:nil "uint16 LABEL_PERSON = 1~%uint16 LABEL_BICYCLE = 2~%uint16 LABEL_CAR = 3~%uint16 LABEL_MOTORCYCLE = 4~%~%uint16 label~%float64 angle~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BboxAngle>))
  (cl:+ 0
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BboxAngle>))
  "Converts a ROS message object to a list"
  (cl:list 'BboxAngle
    (cl:cons ':label (label msg))
    (cl:cons ':angle (angle msg))
))
