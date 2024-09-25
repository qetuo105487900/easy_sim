;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::InitFloor)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'InitFloor (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::INITFLOOR")
  (make-package "CAMPUSROVER_MSGS::INITFLOOR"))
(unless (find-package "CAMPUSROVER_MSGS::INITFLOORREQUEST")
  (make-package "CAMPUSROVER_MSGS::INITFLOORREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::INITFLOORRESPONSE")
  (make-package "CAMPUSROVER_MSGS::INITFLOORRESPONSE"))

(in-package "ROS")





(defclass campusrover_msgs::InitFloorRequest
  :super ros::object
  :slots (_init_floor ))

(defmethod campusrover_msgs::InitFloorRequest
  (:init
   (&key
    ((:init_floor __init_floor) 0)
    )
   (send-super :init)
   (setq _init_floor (round __init_floor))
   self)
  (:init_floor
   (&optional __init_floor)
   (if __init_floor (setq _init_floor __init_floor)) _init_floor)
  (:serialization-length
   ()
   (+
    ;; int8 _init_floor
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _init_floor
       (write-byte _init_floor s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _init_floor
     (setq _init_floor (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _init_floor 127) (setq _init_floor (- _init_floor 256)))
   ;;
   self)
  )

(defclass campusrover_msgs::InitFloorResponse
  :super ros::object
  :slots ())

(defmethod campusrover_msgs::InitFloorResponse
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

(defclass campusrover_msgs::InitFloor
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::InitFloor :md5sum-) "ff7605597ae53414f57ec4bc282ae9d3")
(setf (get campusrover_msgs::InitFloor :datatype-) "campusrover_msgs/InitFloor")
(setf (get campusrover_msgs::InitFloor :request) campusrover_msgs::InitFloorRequest)
(setf (get campusrover_msgs::InitFloor :response) campusrover_msgs::InitFloorResponse)

(defmethod campusrover_msgs::InitFloorRequest
  (:response () (instance campusrover_msgs::InitFloorResponse :init)))

(setf (get campusrover_msgs::InitFloorRequest :md5sum-) "ff7605597ae53414f57ec4bc282ae9d3")
(setf (get campusrover_msgs::InitFloorRequest :datatype-) "campusrover_msgs/InitFloorRequest")
(setf (get campusrover_msgs::InitFloorRequest :definition-)
      "int8 init_floor
---
")

(setf (get campusrover_msgs::InitFloorResponse :md5sum-) "ff7605597ae53414f57ec4bc282ae9d3")
(setf (get campusrover_msgs::InitFloorResponse :datatype-) "campusrover_msgs/InitFloorResponse")
(setf (get campusrover_msgs::InitFloorResponse :definition-)
      "int8 init_floor
---
")



(provide :campusrover_msgs/InitFloor "ff7605597ae53414f57ec4bc282ae9d3")


