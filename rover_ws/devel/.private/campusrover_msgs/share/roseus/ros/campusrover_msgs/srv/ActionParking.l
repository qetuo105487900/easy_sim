;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::ActionParking)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'ActionParking (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::ACTIONPARKING")
  (make-package "CAMPUSROVER_MSGS::ACTIONPARKING"))
(unless (find-package "CAMPUSROVER_MSGS::ACTIONPARKINGREQUEST")
  (make-package "CAMPUSROVER_MSGS::ACTIONPARKINGREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::ACTIONPARKINGRESPONSE")
  (make-package "CAMPUSROVER_MSGS::ACTIONPARKINGRESPONSE"))

(in-package "ROS")





(intern "*CONTROL_MODE_DEFAULT*" (find-package "CAMPUSROVER_MSGS::ACTIONPARKINGREQUEST"))
(shadow '*CONTROL_MODE_DEFAULT* (find-package "CAMPUSROVER_MSGS::ACTIONPARKINGREQUEST"))
(defconstant campusrover_msgs::ActionParkingRequest::*CONTROL_MODE_DEFAULT* 0)
(intern "*CONTROL_MODE_PID*" (find-package "CAMPUSROVER_MSGS::ACTIONPARKINGREQUEST"))
(shadow '*CONTROL_MODE_PID* (find-package "CAMPUSROVER_MSGS::ACTIONPARKINGREQUEST"))
(defconstant campusrover_msgs::ActionParkingRequest::*CONTROL_MODE_PID* 1)
(intern "*CONTROL_MODE_REVERSE*" (find-package "CAMPUSROVER_MSGS::ACTIONPARKINGREQUEST"))
(shadow '*CONTROL_MODE_REVERSE* (find-package "CAMPUSROVER_MSGS::ACTIONPARKINGREQUEST"))
(defconstant campusrover_msgs::ActionParkingRequest::*CONTROL_MODE_REVERSE* 2)

(defun campusrover_msgs::ActionParkingRequest-to-symbol (const)
  (cond
        ((= const 0) 'campusrover_msgs::ActionParkingRequest::*CONTROL_MODE_DEFAULT*)
        ((= const 1) 'campusrover_msgs::ActionParkingRequest::*CONTROL_MODE_PID*)
        ((= const 2) 'campusrover_msgs::ActionParkingRequest::*CONTROL_MODE_REVERSE*)
        (t nil)))

(defclass campusrover_msgs::ActionParkingRequest
  :super ros::object
  :slots (_control_mode _max_linear_vel _max_angular_vel ))

(defmethod campusrover_msgs::ActionParkingRequest
  (:init
   (&key
    ((:control_mode __control_mode) 0)
    ((:max_linear_vel __max_linear_vel) 0.0)
    ((:max_angular_vel __max_angular_vel) 0.0)
    )
   (send-super :init)
   (setq _control_mode (round __control_mode))
   (setq _max_linear_vel (float __max_linear_vel))
   (setq _max_angular_vel (float __max_angular_vel))
   self)
  (:control_mode
   (&optional __control_mode)
   (if __control_mode (setq _control_mode __control_mode)) _control_mode)
  (:max_linear_vel
   (&optional __max_linear_vel)
   (if __max_linear_vel (setq _max_linear_vel __max_linear_vel)) _max_linear_vel)
  (:max_angular_vel
   (&optional __max_angular_vel)
   (if __max_angular_vel (setq _max_angular_vel __max_angular_vel)) _max_angular_vel)
  (:serialization-length
   ()
   (+
    ;; uint8 _control_mode
    1
    ;; float32 _max_linear_vel
    4
    ;; float32 _max_angular_vel
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _control_mode
       (write-byte _control_mode s)
     ;; float32 _max_linear_vel
       (sys::poke _max_linear_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_angular_vel
       (sys::poke _max_angular_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _control_mode
     (setq _control_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _max_linear_vel
     (setq _max_linear_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_angular_vel
     (setq _max_angular_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass campusrover_msgs::ActionParkingResponse
  :super ros::object
  :slots (_msg ))

(defmethod campusrover_msgs::ActionParkingResponse
  (:init
   (&key
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _msg (string __msg))
   self)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass campusrover_msgs::ActionParking
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::ActionParking :md5sum-) "b2141ab3a90aab97223754872a3f8193")
(setf (get campusrover_msgs::ActionParking :datatype-) "campusrover_msgs/ActionParking")
(setf (get campusrover_msgs::ActionParking :request) campusrover_msgs::ActionParkingRequest)
(setf (get campusrover_msgs::ActionParking :response) campusrover_msgs::ActionParkingResponse)

(defmethod campusrover_msgs::ActionParkingRequest
  (:response () (instance campusrover_msgs::ActionParkingResponse :init)))

(setf (get campusrover_msgs::ActionParkingRequest :md5sum-) "b2141ab3a90aab97223754872a3f8193")
(setf (get campusrover_msgs::ActionParkingRequest :datatype-) "campusrover_msgs/ActionParkingRequest")
(setf (get campusrover_msgs::ActionParkingRequest :definition-)
      "uint8 CONTROL_MODE_DEFAULT=0
uint8 CONTROL_MODE_PID=1
uint8 CONTROL_MODE_REVERSE=2
uint8 control_mode
float32 max_linear_vel
float32 max_angular_vel
---
string msg
")

(setf (get campusrover_msgs::ActionParkingResponse :md5sum-) "b2141ab3a90aab97223754872a3f8193")
(setf (get campusrover_msgs::ActionParkingResponse :datatype-) "campusrover_msgs/ActionParkingResponse")
(setf (get campusrover_msgs::ActionParkingResponse :definition-)
      "uint8 CONTROL_MODE_DEFAULT=0
uint8 CONTROL_MODE_PID=1
uint8 CONTROL_MODE_REVERSE=2
uint8 control_mode
float32 max_linear_vel
float32 max_angular_vel
---
string msg
")



(provide :campusrover_msgs/ActionParking "b2141ab3a90aab97223754872a3f8193")


