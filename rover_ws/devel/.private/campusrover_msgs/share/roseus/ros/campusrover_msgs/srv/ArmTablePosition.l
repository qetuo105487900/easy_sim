;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::ArmTablePosition)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'ArmTablePosition (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::ARMTABLEPOSITION")
  (make-package "CAMPUSROVER_MSGS::ARMTABLEPOSITION"))
(unless (find-package "CAMPUSROVER_MSGS::ARMTABLEPOSITIONREQUEST")
  (make-package "CAMPUSROVER_MSGS::ARMTABLEPOSITIONREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::ARMTABLEPOSITIONRESPONSE")
  (make-package "CAMPUSROVER_MSGS::ARMTABLEPOSITIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass campusrover_msgs::ArmTablePositionRequest
  :super ros::object
  :slots (_position ))

(defmethod campusrover_msgs::ArmTablePositionRequest
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _position __position)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;;
   self)
  )

(defclass campusrover_msgs::ArmTablePositionResponse
  :super ros::object
  :slots ())

(defmethod campusrover_msgs::ArmTablePositionResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass campusrover_msgs::ArmTablePosition
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::ArmTablePosition :md5sum-) "e7bb0ef028c744b081acdc57743b11d8")
(setf (get campusrover_msgs::ArmTablePosition :datatype-) "campusrover_msgs/ArmTablePosition")
(setf (get campusrover_msgs::ArmTablePosition :request) campusrover_msgs::ArmTablePositionRequest)
(setf (get campusrover_msgs::ArmTablePosition :response) campusrover_msgs::ArmTablePositionResponse)

(defmethod campusrover_msgs::ArmTablePositionRequest
  (:response () (instance campusrover_msgs::ArmTablePositionResponse :init)))

(setf (get campusrover_msgs::ArmTablePositionRequest :md5sum-) "e7bb0ef028c744b081acdc57743b11d8")
(setf (get campusrover_msgs::ArmTablePositionRequest :datatype-) "campusrover_msgs/ArmTablePositionRequest")
(setf (get campusrover_msgs::ArmTablePositionRequest :definition-)
      "geometry_msgs/Point position

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
")

(setf (get campusrover_msgs::ArmTablePositionResponse :md5sum-) "e7bb0ef028c744b081acdc57743b11d8")
(setf (get campusrover_msgs::ArmTablePositionResponse :datatype-) "campusrover_msgs/ArmTablePositionResponse")
(setf (get campusrover_msgs::ArmTablePositionResponse :definition-)
      "geometry_msgs/Point position

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
")



(provide :campusrover_msgs/ArmTablePosition "e7bb0ef028c744b081acdc57743b11d8")


