;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::MPCParameter)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'MPCParameter (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::MPCPARAMETER")
  (make-package "CAMPUSROVER_MSGS::MPCPARAMETER"))

(in-package "ROS")
;;//! \htmlinclude MPCParameter.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass campusrover_msgs::MPCParameter
  :super ros::object
  :slots (_header _child_frame_id _position_x _position_y _position_theta _linear_x _angular_z ))

(defmethod campusrover_msgs::MPCParameter
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:child_frame_id __child_frame_id) "")
    ((:position_x __position_x) 0.0)
    ((:position_y __position_y) 0.0)
    ((:position_theta __position_theta) 0.0)
    ((:linear_x __linear_x) 0.0)
    ((:angular_z __angular_z) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _child_frame_id (string __child_frame_id))
   (setq _position_x (float __position_x))
   (setq _position_y (float __position_y))
   (setq _position_theta (float __position_theta))
   (setq _linear_x (float __linear_x))
   (setq _angular_z (float __angular_z))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:child_frame_id
   (&optional __child_frame_id)
   (if __child_frame_id (setq _child_frame_id __child_frame_id)) _child_frame_id)
  (:position_x
   (&optional __position_x)
   (if __position_x (setq _position_x __position_x)) _position_x)
  (:position_y
   (&optional __position_y)
   (if __position_y (setq _position_y __position_y)) _position_y)
  (:position_theta
   (&optional __position_theta)
   (if __position_theta (setq _position_theta __position_theta)) _position_theta)
  (:linear_x
   (&optional __linear_x)
   (if __linear_x (setq _linear_x __linear_x)) _linear_x)
  (:angular_z
   (&optional __angular_z)
   (if __angular_z (setq _angular_z __angular_z)) _angular_z)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _child_frame_id
    4 (length _child_frame_id)
    ;; float64 _position_x
    8
    ;; float64 _position_y
    8
    ;; float64 _position_theta
    8
    ;; float64 _linear_x
    8
    ;; float64 _angular_z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _child_frame_id
       (write-long (length _child_frame_id) s) (princ _child_frame_id s)
     ;; float64 _position_x
       (sys::poke _position_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _position_y
       (sys::poke _position_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _position_theta
       (sys::poke _position_theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_x
       (sys::poke _linear_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_z
       (sys::poke _angular_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _child_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _child_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _position_x
     (setq _position_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _position_y
     (setq _position_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _position_theta
     (setq _position_theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_x
     (setq _linear_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_z
     (setq _angular_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get campusrover_msgs::MPCParameter :md5sum-) "7042ea7c7a5210398b974d0e1f9047b2")
(setf (get campusrover_msgs::MPCParameter :datatype-) "campusrover_msgs/MPCParameter")
(setf (get campusrover_msgs::MPCParameter :definition-)
      "std_msgs/Header header
string child_frame_id
float64 position_x
float64 position_y
float64 position_theta
float64 linear_x
float64 angular_z

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



(provide :campusrover_msgs/MPCParameter "7042ea7c7a5210398b974d0e1f9047b2")


