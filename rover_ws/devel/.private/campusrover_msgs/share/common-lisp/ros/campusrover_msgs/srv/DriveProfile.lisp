; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude DriveProfile-request.msg.html

(cl:defclass <DriveProfile-request> (roslisp-msg-protocol:ros-message)
  ((drive_profile
    :reader drive_profile
    :initarg :drive_profile
    :type cl:fixnum
    :initform 0)
   (acc_max
    :reader acc_max
    :initarg :acc_max
    :type cl:float
    :initform 0.0)
   (acc_step
    :reader acc_step
    :initarg :acc_step
    :type cl:float
    :initform 0.0)
   (dec_max
    :reader dec_max
    :initarg :dec_max
    :type cl:float
    :initform 0.0)
   (dec_step
    :reader dec_step
    :initarg :dec_step
    :type cl:float
    :initform 0.0)
   (vel_tolerance
    :reader vel_tolerance
    :initarg :vel_tolerance
    :type cl:float
    :initform 0.0)
   (profile_omega_max
    :reader profile_omega_max
    :initarg :profile_omega_max
    :type cl:float
    :initform 0.0)
   (profile_omega_step
    :reader profile_omega_step
    :initarg :profile_omega_step
    :type cl:float
    :initform 0.0)
   (omega_tolerance
    :reader omega_tolerance
    :initarg :omega_tolerance
    :type cl:float
    :initform 0.0)
   (max_speed
    :reader max_speed
    :initarg :max_speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass DriveProfile-request (<DriveProfile-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriveProfile-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriveProfile-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<DriveProfile-request> is deprecated: use campusrover_msgs-srv:DriveProfile-request instead.")))

(cl:ensure-generic-function 'drive_profile-val :lambda-list '(m))
(cl:defmethod drive_profile-val ((m <DriveProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:drive_profile-val is deprecated.  Use campusrover_msgs-srv:drive_profile instead.")
  (drive_profile m))

(cl:ensure-generic-function 'acc_max-val :lambda-list '(m))
(cl:defmethod acc_max-val ((m <DriveProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:acc_max-val is deprecated.  Use campusrover_msgs-srv:acc_max instead.")
  (acc_max m))

(cl:ensure-generic-function 'acc_step-val :lambda-list '(m))
(cl:defmethod acc_step-val ((m <DriveProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:acc_step-val is deprecated.  Use campusrover_msgs-srv:acc_step instead.")
  (acc_step m))

(cl:ensure-generic-function 'dec_max-val :lambda-list '(m))
(cl:defmethod dec_max-val ((m <DriveProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:dec_max-val is deprecated.  Use campusrover_msgs-srv:dec_max instead.")
  (dec_max m))

(cl:ensure-generic-function 'dec_step-val :lambda-list '(m))
(cl:defmethod dec_step-val ((m <DriveProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:dec_step-val is deprecated.  Use campusrover_msgs-srv:dec_step instead.")
  (dec_step m))

(cl:ensure-generic-function 'vel_tolerance-val :lambda-list '(m))
(cl:defmethod vel_tolerance-val ((m <DriveProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:vel_tolerance-val is deprecated.  Use campusrover_msgs-srv:vel_tolerance instead.")
  (vel_tolerance m))

(cl:ensure-generic-function 'profile_omega_max-val :lambda-list '(m))
(cl:defmethod profile_omega_max-val ((m <DriveProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:profile_omega_max-val is deprecated.  Use campusrover_msgs-srv:profile_omega_max instead.")
  (profile_omega_max m))

(cl:ensure-generic-function 'profile_omega_step-val :lambda-list '(m))
(cl:defmethod profile_omega_step-val ((m <DriveProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:profile_omega_step-val is deprecated.  Use campusrover_msgs-srv:profile_omega_step instead.")
  (profile_omega_step m))

(cl:ensure-generic-function 'omega_tolerance-val :lambda-list '(m))
(cl:defmethod omega_tolerance-val ((m <DriveProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:omega_tolerance-val is deprecated.  Use campusrover_msgs-srv:omega_tolerance instead.")
  (omega_tolerance m))

(cl:ensure-generic-function 'max_speed-val :lambda-list '(m))
(cl:defmethod max_speed-val ((m <DriveProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:max_speed-val is deprecated.  Use campusrover_msgs-srv:max_speed instead.")
  (max_speed m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DriveProfile-request>)))
    "Constants for message type '<DriveProfile-request>"
  '((:DRIVE_PROFILE_NOUSE . 0)
    (:DRIVE_PROFILE_DEFAULT . 1)
    (:DRIVE_PROFILE_SET . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DriveProfile-request)))
    "Constants for message type 'DriveProfile-request"
  '((:DRIVE_PROFILE_NOUSE . 0)
    (:DRIVE_PROFILE_DEFAULT . 1)
    (:DRIVE_PROFILE_SET . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriveProfile-request>) ostream)
  "Serializes a message object of type '<DriveProfile-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drive_profile)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'acc_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'acc_step))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dec_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dec_step))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vel_tolerance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'profile_omega_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'profile_omega_step))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'omega_tolerance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriveProfile-request>) istream)
  "Deserializes a message object of type '<DriveProfile-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drive_profile)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc_max) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc_step) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dec_max) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dec_step) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_tolerance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'profile_omega_max) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'profile_omega_step) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'omega_tolerance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_speed) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriveProfile-request>)))
  "Returns string type for a service object of type '<DriveProfile-request>"
  "campusrover_msgs/DriveProfileRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriveProfile-request)))
  "Returns string type for a service object of type 'DriveProfile-request"
  "campusrover_msgs/DriveProfileRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriveProfile-request>)))
  "Returns md5sum for a message object of type '<DriveProfile-request>"
  "5377416382979c45089c79712b283109")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriveProfile-request)))
  "Returns md5sum for a message object of type 'DriveProfile-request"
  "5377416382979c45089c79712b283109")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriveProfile-request>)))
  "Returns full string definition for message of type '<DriveProfile-request>"
  (cl:format cl:nil "uint8 DRIVE_PROFILE_NOUSE = 0~%uint8 DRIVE_PROFILE_DEFAULT = 1~%uint8 DRIVE_PROFILE_SET = 2~%uint8 drive_profile~%~%float64 acc_max ~%float64 acc_step~%float64 dec_max~%float64 dec_step~%float64 vel_tolerance~%float64 profile_omega_max~%float64 profile_omega_step~%float64 omega_tolerance~%float64 max_speed~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriveProfile-request)))
  "Returns full string definition for message of type 'DriveProfile-request"
  (cl:format cl:nil "uint8 DRIVE_PROFILE_NOUSE = 0~%uint8 DRIVE_PROFILE_DEFAULT = 1~%uint8 DRIVE_PROFILE_SET = 2~%uint8 drive_profile~%~%float64 acc_max ~%float64 acc_step~%float64 dec_max~%float64 dec_step~%float64 vel_tolerance~%float64 profile_omega_max~%float64 profile_omega_step~%float64 omega_tolerance~%float64 max_speed~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriveProfile-request>))
  (cl:+ 0
     1
     8
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriveProfile-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DriveProfile-request
    (cl:cons ':drive_profile (drive_profile msg))
    (cl:cons ':acc_max (acc_max msg))
    (cl:cons ':acc_step (acc_step msg))
    (cl:cons ':dec_max (dec_max msg))
    (cl:cons ':dec_step (dec_step msg))
    (cl:cons ':vel_tolerance (vel_tolerance msg))
    (cl:cons ':profile_omega_max (profile_omega_max msg))
    (cl:cons ':profile_omega_step (profile_omega_step msg))
    (cl:cons ':omega_tolerance (omega_tolerance msg))
    (cl:cons ':max_speed (max_speed msg))
))
;//! \htmlinclude DriveProfile-response.msg.html

(cl:defclass <DriveProfile-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DriveProfile-response (<DriveProfile-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriveProfile-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriveProfile-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<DriveProfile-response> is deprecated: use campusrover_msgs-srv:DriveProfile-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriveProfile-response>) ostream)
  "Serializes a message object of type '<DriveProfile-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriveProfile-response>) istream)
  "Deserializes a message object of type '<DriveProfile-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriveProfile-response>)))
  "Returns string type for a service object of type '<DriveProfile-response>"
  "campusrover_msgs/DriveProfileResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriveProfile-response)))
  "Returns string type for a service object of type 'DriveProfile-response"
  "campusrover_msgs/DriveProfileResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriveProfile-response>)))
  "Returns md5sum for a message object of type '<DriveProfile-response>"
  "5377416382979c45089c79712b283109")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriveProfile-response)))
  "Returns md5sum for a message object of type 'DriveProfile-response"
  "5377416382979c45089c79712b283109")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriveProfile-response>)))
  "Returns full string definition for message of type '<DriveProfile-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriveProfile-response)))
  "Returns full string definition for message of type 'DriveProfile-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriveProfile-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriveProfile-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DriveProfile-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DriveProfile)))
  'DriveProfile-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DriveProfile)))
  'DriveProfile-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriveProfile)))
  "Returns string type for a service object of type '<DriveProfile>"
  "campusrover_msgs/DriveProfile")