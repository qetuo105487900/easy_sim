;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::BubbleMPC)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'BubbleMPC (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::BUBBLEMPC")
  (make-package "CAMPUSROVER_MSGS::BUBBLEMPC"))
(unless (find-package "CAMPUSROVER_MSGS::BUBBLEMPCREQUEST")
  (make-package "CAMPUSROVER_MSGS::BUBBLEMPCREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::BUBBLEMPCRESPONSE")
  (make-package "CAMPUSROVER_MSGS::BUBBLEMPCRESPONSE"))

(in-package "ROS")





(defclass campusrover_msgs::BubbleMPCRequest
  :super ros::object
  :slots (_enable _robot_radius _away_dis ))

(defmethod campusrover_msgs::BubbleMPCRequest
  (:init
   (&key
    ((:enable __enable) nil)
    ((:robot_radius __robot_radius) 0.0)
    ((:away_dis __away_dis) 0.0)
    )
   (send-super :init)
   (setq _enable __enable)
   (setq _robot_radius (float __robot_radius))
   (setq _away_dis (float __away_dis))
   self)
  (:enable
   (&optional (__enable :null))
   (if (not (eq __enable :null)) (setq _enable __enable)) _enable)
  (:robot_radius
   (&optional __robot_radius)
   (if __robot_radius (setq _robot_radius __robot_radius)) _robot_radius)
  (:away_dis
   (&optional __away_dis)
   (if __away_dis (setq _away_dis __away_dis)) _away_dis)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ;; float32 _robot_radius
    4
    ;; float32 _away_dis
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;; float32 _robot_radius
       (sys::poke _robot_radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _away_dis
       (sys::poke _away_dis (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _robot_radius
     (setq _robot_radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _away_dis
     (setq _away_dis (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass campusrover_msgs::BubbleMPCResponse
  :super ros::object
  :slots (_msg ))

(defmethod campusrover_msgs::BubbleMPCResponse
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

(defclass campusrover_msgs::BubbleMPC
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::BubbleMPC :md5sum-) "5673ff572d37b8731f5b0a01e168ccd0")
(setf (get campusrover_msgs::BubbleMPC :datatype-) "campusrover_msgs/BubbleMPC")
(setf (get campusrover_msgs::BubbleMPC :request) campusrover_msgs::BubbleMPCRequest)
(setf (get campusrover_msgs::BubbleMPC :response) campusrover_msgs::BubbleMPCResponse)

(defmethod campusrover_msgs::BubbleMPCRequest
  (:response () (instance campusrover_msgs::BubbleMPCResponse :init)))

(setf (get campusrover_msgs::BubbleMPCRequest :md5sum-) "5673ff572d37b8731f5b0a01e168ccd0")
(setf (get campusrover_msgs::BubbleMPCRequest :datatype-) "campusrover_msgs/BubbleMPCRequest")
(setf (get campusrover_msgs::BubbleMPCRequest :definition-)
      "bool enable
float32 robot_radius
float32 away_dis
---
string msg
")

(setf (get campusrover_msgs::BubbleMPCResponse :md5sum-) "5673ff572d37b8731f5b0a01e168ccd0")
(setf (get campusrover_msgs::BubbleMPCResponse :datatype-) "campusrover_msgs/BubbleMPCResponse")
(setf (get campusrover_msgs::BubbleMPCResponse :definition-)
      "bool enable
float32 robot_radius
float32 away_dis
---
string msg
")



(provide :campusrover_msgs/BubbleMPC "5673ff572d37b8731f5b0a01e168ccd0")


