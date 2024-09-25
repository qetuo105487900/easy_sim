;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::ButtonRecognize)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'ButtonRecognize (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::BUTTONRECOGNIZE")
  (make-package "CAMPUSROVER_MSGS::BUTTONRECOGNIZE"))
(unless (find-package "CAMPUSROVER_MSGS::BUTTONRECOGNIZEREQUEST")
  (make-package "CAMPUSROVER_MSGS::BUTTONRECOGNIZEREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::BUTTONRECOGNIZERESPONSE")
  (make-package "CAMPUSROVER_MSGS::BUTTONRECOGNIZERESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass campusrover_msgs::ButtonRecognizeRequest
  :super ros::object
  :slots (_enable ))

(defmethod campusrover_msgs::ButtonRecognizeRequest
  (:init
   (&key
    ((:enable __enable) nil)
    )
   (send-super :init)
   (setq _enable __enable)
   self)
  (:enable
   (&optional (__enable :null))
   (if (not (eq __enable :null)) (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass campusrover_msgs::ButtonRecognizeResponse
  :super ros::object
  :slots (_empty ))

(defmethod campusrover_msgs::ButtonRecognizeResponse
  (:init
   (&key
    ((:empty __empty) (instance std_msgs::Empty :init))
    )
   (send-super :init)
   (setq _empty __empty)
   self)
  (:empty
   (&rest __empty)
   (if (keywordp (car __empty))
       (send* _empty __empty)
     (progn
       (if __empty (setq _empty (car __empty)))
       _empty)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Empty _empty
    (send _empty :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Empty _empty
       (send _empty :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Empty _empty
     (send _empty :deserialize buf ptr-) (incf ptr- (send _empty :serialization-length))
   ;;
   self)
  )

(defclass campusrover_msgs::ButtonRecognize
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::ButtonRecognize :md5sum-) "48656acf6cb788f3db03662bf2321a58")
(setf (get campusrover_msgs::ButtonRecognize :datatype-) "campusrover_msgs/ButtonRecognize")
(setf (get campusrover_msgs::ButtonRecognize :request) campusrover_msgs::ButtonRecognizeRequest)
(setf (get campusrover_msgs::ButtonRecognize :response) campusrover_msgs::ButtonRecognizeResponse)

(defmethod campusrover_msgs::ButtonRecognizeRequest
  (:response () (instance campusrover_msgs::ButtonRecognizeResponse :init)))

(setf (get campusrover_msgs::ButtonRecognizeRequest :md5sum-) "48656acf6cb788f3db03662bf2321a58")
(setf (get campusrover_msgs::ButtonRecognizeRequest :datatype-) "campusrover_msgs/ButtonRecognizeRequest")
(setf (get campusrover_msgs::ButtonRecognizeRequest :definition-)
      "bool enable
---
std_msgs/Empty empty

================================================================================
MSG: std_msgs/Empty
")

(setf (get campusrover_msgs::ButtonRecognizeResponse :md5sum-) "48656acf6cb788f3db03662bf2321a58")
(setf (get campusrover_msgs::ButtonRecognizeResponse :datatype-) "campusrover_msgs/ButtonRecognizeResponse")
(setf (get campusrover_msgs::ButtonRecognizeResponse :definition-)
      "bool enable
---
std_msgs/Empty empty

================================================================================
MSG: std_msgs/Empty
")



(provide :campusrover_msgs/ButtonRecognize "48656acf6cb788f3db03662bf2321a58")


