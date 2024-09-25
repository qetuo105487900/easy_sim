;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::BboxAngleArray)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'BboxAngleArray (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::BBOXANGLEARRAY")
  (make-package "CAMPUSROVER_MSGS::BBOXANGLEARRAY"))

(in-package "ROS")
;;//! \htmlinclude BboxAngleArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass campusrover_msgs::BboxAngleArray
  :super ros::object
  :slots (_header _obstacles ))

(defmethod campusrover_msgs::BboxAngleArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:obstacles __obstacles) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _obstacles __obstacles)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:obstacles
   (&rest __obstacles)
   (if (keywordp (car __obstacles))
       (send* _obstacles __obstacles)
     (progn
       (if __obstacles (setq _obstacles (car __obstacles)))
       _obstacles)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; campusrover_msgs/BboxAngle[] _obstacles
    (apply #'+ (send-all _obstacles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; campusrover_msgs/BboxAngle[] _obstacles
     (write-long (length _obstacles) s)
     (dolist (elem _obstacles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; campusrover_msgs/BboxAngle[] _obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles (let (r) (dotimes (i n) (push (instance campusrover_msgs::BboxAngle :init) r)) r))
     (dolist (elem- _obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get campusrover_msgs::BboxAngleArray :md5sum-) "3a0e3d5a07a213c74374e8d4daa7221e")
(setf (get campusrover_msgs::BboxAngleArray :datatype-) "campusrover_msgs/BboxAngleArray")
(setf (get campusrover_msgs::BboxAngleArray :definition-)
      "std_msgs/Header header
campusrover_msgs/BboxAngle[] obstacles
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: campusrover_msgs/BboxAngle
uint16 LABEL_PERSON = 1
uint16 LABEL_BICYCLE = 2
uint16 LABEL_CAR = 3
uint16 LABEL_MOTORCYCLE = 4

uint16 label
float64 angle
")



(provide :campusrover_msgs/BboxAngleArray "3a0e3d5a07a213c74374e8d4daa7221e")


