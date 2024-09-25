;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::ButtonPose)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'ButtonPose (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::BUTTONPOSE")
  (make-package "CAMPUSROVER_MSGS::BUTTONPOSE"))

(in-package "ROS")
;;//! \htmlinclude ButtonPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass campusrover_msgs::ButtonPose
  :super ros::object
  :slots (_label _pose _activation ))

(defmethod campusrover_msgs::ButtonPose
  (:init
   (&key
    ((:label __label) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:activation __activation) 0.0)
    )
   (send-super :init)
   (setq _label (string __label))
   (setq _pose __pose)
   (setq _activation (float __activation))
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:activation
   (&optional __activation)
   (if __activation (setq _activation __activation)) _activation)
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; float32 _activation
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; float32 _activation
       (sys::poke _activation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float32 _activation
     (setq _activation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get campusrover_msgs::ButtonPose :md5sum-) "daca3be73334a64027cdf1e3ddf112de")
(setf (get campusrover_msgs::ButtonPose :datatype-) "campusrover_msgs/ButtonPose")
(setf (get campusrover_msgs::ButtonPose :definition-)
      "string label
geometry_msgs/Pose pose
float32 activation
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :campusrover_msgs/ButtonPose "daca3be73334a64027cdf1e3ddf112de")


