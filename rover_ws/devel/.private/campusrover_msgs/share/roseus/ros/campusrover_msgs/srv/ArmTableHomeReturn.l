;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::ArmTableHomeReturn)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'ArmTableHomeReturn (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::ARMTABLEHOMERETURN")
  (make-package "CAMPUSROVER_MSGS::ARMTABLEHOMERETURN"))
(unless (find-package "CAMPUSROVER_MSGS::ARMTABLEHOMERETURNREQUEST")
  (make-package "CAMPUSROVER_MSGS::ARMTABLEHOMERETURNREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::ARMTABLEHOMERETURNRESPONSE")
  (make-package "CAMPUSROVER_MSGS::ARMTABLEHOMERETURNRESPONSE"))

(in-package "ROS")





(defclass campusrover_msgs::ArmTableHomeReturnRequest
  :super ros::object
  :slots (_flag ))

(defmethod campusrover_msgs::ArmTableHomeReturnRequest
  (:init
   (&key
    ((:flag __flag) nil)
    )
   (send-super :init)
   (setq _flag __flag)
   self)
  (:flag
   (&optional (__flag :null))
   (if (not (eq __flag :null)) (setq _flag __flag)) _flag)
  (:serialization-length
   ()
   (+
    ;; bool _flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _flag
       (if _flag (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _flag
     (setq _flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass campusrover_msgs::ArmTableHomeReturnResponse
  :super ros::object
  :slots ())

(defmethod campusrover_msgs::ArmTableHomeReturnResponse
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

(defclass campusrover_msgs::ArmTableHomeReturn
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::ArmTableHomeReturn :md5sum-) "24842bc754e0f5cc982338eca1269251")
(setf (get campusrover_msgs::ArmTableHomeReturn :datatype-) "campusrover_msgs/ArmTableHomeReturn")
(setf (get campusrover_msgs::ArmTableHomeReturn :request) campusrover_msgs::ArmTableHomeReturnRequest)
(setf (get campusrover_msgs::ArmTableHomeReturn :response) campusrover_msgs::ArmTableHomeReturnResponse)

(defmethod campusrover_msgs::ArmTableHomeReturnRequest
  (:response () (instance campusrover_msgs::ArmTableHomeReturnResponse :init)))

(setf (get campusrover_msgs::ArmTableHomeReturnRequest :md5sum-) "24842bc754e0f5cc982338eca1269251")
(setf (get campusrover_msgs::ArmTableHomeReturnRequest :datatype-) "campusrover_msgs/ArmTableHomeReturnRequest")
(setf (get campusrover_msgs::ArmTableHomeReturnRequest :definition-)
      "bool flag
---
")

(setf (get campusrover_msgs::ArmTableHomeReturnResponse :md5sum-) "24842bc754e0f5cc982338eca1269251")
(setf (get campusrover_msgs::ArmTableHomeReturnResponse :datatype-) "campusrover_msgs/ArmTableHomeReturnResponse")
(setf (get campusrover_msgs::ArmTableHomeReturnResponse :definition-)
      "bool flag
---
")



(provide :campusrover_msgs/ArmTableHomeReturn "24842bc754e0f5cc982338eca1269251")


