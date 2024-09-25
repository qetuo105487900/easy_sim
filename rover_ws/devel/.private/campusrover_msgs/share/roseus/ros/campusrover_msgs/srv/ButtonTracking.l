;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::ButtonTracking)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'ButtonTracking (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::BUTTONTRACKING")
  (make-package "CAMPUSROVER_MSGS::BUTTONTRACKING"))
(unless (find-package "CAMPUSROVER_MSGS::BUTTONTRACKINGREQUEST")
  (make-package "CAMPUSROVER_MSGS::BUTTONTRACKINGREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::BUTTONTRACKINGRESPONSE")
  (make-package "CAMPUSROVER_MSGS::BUTTONTRACKINGRESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass campusrover_msgs::ButtonTrackingRequest
  :super ros::object
  :slots (_enable _button_name ))

(defmethod campusrover_msgs::ButtonTrackingRequest
  (:init
   (&key
    ((:enable __enable) nil)
    ((:button_name __button_name) "")
    )
   (send-super :init)
   (setq _enable __enable)
   (setq _button_name (string __button_name))
   self)
  (:enable
   (&optional (__enable :null))
   (if (not (eq __enable :null)) (setq _enable __enable)) _enable)
  (:button_name
   (&optional __button_name)
   (if __button_name (setq _button_name __button_name)) _button_name)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ;; string _button_name
    4 (length _button_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;; string _button_name
       (write-long (length _button_name) s) (princ _button_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _button_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _button_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass campusrover_msgs::ButtonTrackingResponse
  :super ros::object
  :slots (_empty ))

(defmethod campusrover_msgs::ButtonTrackingResponse
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

(defclass campusrover_msgs::ButtonTracking
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::ButtonTracking :md5sum-) "61b485ea07ed1b39485bf792e13eef24")
(setf (get campusrover_msgs::ButtonTracking :datatype-) "campusrover_msgs/ButtonTracking")
(setf (get campusrover_msgs::ButtonTracking :request) campusrover_msgs::ButtonTrackingRequest)
(setf (get campusrover_msgs::ButtonTracking :response) campusrover_msgs::ButtonTrackingResponse)

(defmethod campusrover_msgs::ButtonTrackingRequest
  (:response () (instance campusrover_msgs::ButtonTrackingResponse :init)))

(setf (get campusrover_msgs::ButtonTrackingRequest :md5sum-) "61b485ea07ed1b39485bf792e13eef24")
(setf (get campusrover_msgs::ButtonTrackingRequest :datatype-) "campusrover_msgs/ButtonTrackingRequest")
(setf (get campusrover_msgs::ButtonTrackingRequest :definition-)
      "bool enable
string button_name
---
std_msgs/Empty empty

================================================================================
MSG: std_msgs/Empty
")

(setf (get campusrover_msgs::ButtonTrackingResponse :md5sum-) "61b485ea07ed1b39485bf792e13eef24")
(setf (get campusrover_msgs::ButtonTrackingResponse :datatype-) "campusrover_msgs/ButtonTrackingResponse")
(setf (get campusrover_msgs::ButtonTrackingResponse :definition-)
      "bool enable
string button_name
---
std_msgs/Empty empty

================================================================================
MSG: std_msgs/Empty
")



(provide :campusrover_msgs/ButtonTracking "61b485ea07ed1b39485bf792e13eef24")


