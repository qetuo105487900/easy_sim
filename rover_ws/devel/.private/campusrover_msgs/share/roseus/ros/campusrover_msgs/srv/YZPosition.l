;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::YZPosition)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'YZPosition (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::YZPOSITION")
  (make-package "CAMPUSROVER_MSGS::YZPOSITION"))
(unless (find-package "CAMPUSROVER_MSGS::YZPOSITIONREQUEST")
  (make-package "CAMPUSROVER_MSGS::YZPOSITIONREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::YZPOSITIONRESPONSE")
  (make-package "CAMPUSROVER_MSGS::YZPOSITIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass campusrover_msgs::YZPositionRequest
  :super ros::object
  :slots (_name ))

(defmethod campusrover_msgs::YZPositionRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass campusrover_msgs::YZPositionResponse
  :super ros::object
  :slots (_success _point ))

(defmethod campusrover_msgs::YZPositionResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:point __point) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _point __point)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; geometry_msgs/Point _point
    (send _point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Point _point
       (send _point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Point _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;;
   self)
  )

(defclass campusrover_msgs::YZPosition
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::YZPosition :md5sum-) "ee8eaed8410219043713f6a333344a7c")
(setf (get campusrover_msgs::YZPosition :datatype-) "campusrover_msgs/YZPosition")
(setf (get campusrover_msgs::YZPosition :request) campusrover_msgs::YZPositionRequest)
(setf (get campusrover_msgs::YZPosition :response) campusrover_msgs::YZPositionResponse)

(defmethod campusrover_msgs::YZPositionRequest
  (:response () (instance campusrover_msgs::YZPositionResponse :init)))

(setf (get campusrover_msgs::YZPositionRequest :md5sum-) "ee8eaed8410219043713f6a333344a7c")
(setf (get campusrover_msgs::YZPositionRequest :datatype-) "campusrover_msgs/YZPositionRequest")
(setf (get campusrover_msgs::YZPositionRequest :definition-)
      "string name
---
bool success
geometry_msgs/Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get campusrover_msgs::YZPositionResponse :md5sum-) "ee8eaed8410219043713f6a333344a7c")
(setf (get campusrover_msgs::YZPositionResponse :datatype-) "campusrover_msgs/YZPositionResponse")
(setf (get campusrover_msgs::YZPositionResponse :definition-)
      "string name
---
bool success
geometry_msgs/Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :campusrover_msgs/YZPosition "ee8eaed8410219043713f6a333344a7c")


