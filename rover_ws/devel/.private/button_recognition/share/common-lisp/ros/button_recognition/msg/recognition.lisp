; Auto-generated. Do not edit!


(cl:in-package button_recognition-msg)


;//! \htmlinclude recognition.msg.html

(cl:defclass <recognition> (roslisp-msg-protocol:ros-message)
  ((y_min
    :reader y_min
    :initarg :y_min
    :type cl:integer
    :initform 0)
   (x_min
    :reader x_min
    :initarg :x_min
    :type cl:integer
    :initform 0)
   (y_max
    :reader y_max
    :initarg :y_max
    :type cl:integer
    :initform 0)
   (x_max
    :reader x_max
    :initarg :x_max
    :type cl:integer
    :initform 0)
   (categ
    :reader categ
    :initarg :categ
    :type cl:integer
    :initform 0)
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (activate_score
    :reader activate_score
    :initarg :activate_score
    :type cl:float
    :initform 0.0)
   (belief
    :reader belief
    :initarg :belief
    :type cl:float
    :initform 0.0)
   (text
    :reader text
    :initarg :text
    :type cl:string
    :initform ""))
)

(cl:defclass recognition (<recognition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <recognition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'recognition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name button_recognition-msg:<recognition> is deprecated: use button_recognition-msg:recognition instead.")))

(cl:ensure-generic-function 'y_min-val :lambda-list '(m))
(cl:defmethod y_min-val ((m <recognition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader button_recognition-msg:y_min-val is deprecated.  Use button_recognition-msg:y_min instead.")
  (y_min m))

(cl:ensure-generic-function 'x_min-val :lambda-list '(m))
(cl:defmethod x_min-val ((m <recognition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader button_recognition-msg:x_min-val is deprecated.  Use button_recognition-msg:x_min instead.")
  (x_min m))

(cl:ensure-generic-function 'y_max-val :lambda-list '(m))
(cl:defmethod y_max-val ((m <recognition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader button_recognition-msg:y_max-val is deprecated.  Use button_recognition-msg:y_max instead.")
  (y_max m))

(cl:ensure-generic-function 'x_max-val :lambda-list '(m))
(cl:defmethod x_max-val ((m <recognition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader button_recognition-msg:x_max-val is deprecated.  Use button_recognition-msg:x_max instead.")
  (x_max m))

(cl:ensure-generic-function 'categ-val :lambda-list '(m))
(cl:defmethod categ-val ((m <recognition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader button_recognition-msg:categ-val is deprecated.  Use button_recognition-msg:categ instead.")
  (categ m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <recognition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader button_recognition-msg:score-val is deprecated.  Use button_recognition-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'activate_score-val :lambda-list '(m))
(cl:defmethod activate_score-val ((m <recognition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader button_recognition-msg:activate_score-val is deprecated.  Use button_recognition-msg:activate_score instead.")
  (activate_score m))

(cl:ensure-generic-function 'belief-val :lambda-list '(m))
(cl:defmethod belief-val ((m <recognition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader button_recognition-msg:belief-val is deprecated.  Use button_recognition-msg:belief instead.")
  (belief m))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <recognition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader button_recognition-msg:text-val is deprecated.  Use button_recognition-msg:text instead.")
  (text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <recognition>) ostream)
  "Serializes a message object of type '<recognition>"
  (cl:let* ((signed (cl:slot-value msg 'y_min)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'x_min)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y_max)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'x_max)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'categ)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'activate_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'belief))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <recognition>) istream)
  "Deserializes a message object of type '<recognition>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y_min) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x_min) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y_max) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x_max) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'categ) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'activate_score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'belief) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<recognition>)))
  "Returns string type for a message object of type '<recognition>"
  "button_recognition/recognition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'recognition)))
  "Returns string type for a message object of type 'recognition"
  "button_recognition/recognition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<recognition>)))
  "Returns md5sum for a message object of type '<recognition>"
  "46ce2b8843cab8e05556ebbba9c830ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'recognition)))
  "Returns md5sum for a message object of type 'recognition"
  "46ce2b8843cab8e05556ebbba9c830ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<recognition>)))
  "Returns full string definition for message of type '<recognition>"
  (cl:format cl:nil "int32 y_min~%int32 x_min~%int32 y_max~%int32 x_max~%int32 categ~%float32 score~%float32 activate_score~%float32 belief~%string text~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'recognition)))
  "Returns full string definition for message of type 'recognition"
  (cl:format cl:nil "int32 y_min~%int32 x_min~%int32 y_max~%int32 x_max~%int32 categ~%float32 score~%float32 activate_score~%float32 belief~%string text~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <recognition>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <recognition>))
  "Converts a ROS message object to a list"
  (cl:list 'recognition
    (cl:cons ':y_min (y_min msg))
    (cl:cons ':x_min (x_min msg))
    (cl:cons ':y_max (y_max msg))
    (cl:cons ':x_max (x_max msg))
    (cl:cons ':categ (categ msg))
    (cl:cons ':score (score msg))
    (cl:cons ':activate_score (activate_score msg))
    (cl:cons ':belief (belief msg))
    (cl:cons ':text (text msg))
))
