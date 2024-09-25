;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::Trip)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'Trip (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::TRIP")
  (make-package "CAMPUSROVER_MSGS::TRIP"))

(in-package "ROS")
;;//! \htmlinclude Trip.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass campusrover_msgs::Trip
  :super ros::object
  :slots (_header _rooms ))

(defmethod campusrover_msgs::Trip
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:rooms __rooms) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _rooms __rooms)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:rooms
   (&optional __rooms)
   (if __rooms (setq _rooms __rooms)) _rooms)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _rooms
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _rooms)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _rooms
     (write-long (length _rooms) s)
     (dolist (elem _rooms)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _rooms
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rooms (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _rooms i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get campusrover_msgs::Trip :md5sum-) "a44c255730edceb23ee31f1a1cfc5fc1")
(setf (get campusrover_msgs::Trip :datatype-) "campusrover_msgs/Trip")
(setf (get campusrover_msgs::Trip :definition-)
      "std_msgs/Header header
string[] rooms
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

")



(provide :campusrover_msgs/Trip "a44c255730edceb23ee31f1a1cfc5fc1")


