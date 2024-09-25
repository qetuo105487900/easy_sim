;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::VSParameter)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'VSParameter (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::VSPARAMETER")
  (make-package "CAMPUSROVER_MSGS::VSPARAMETER"))
(unless (find-package "CAMPUSROVER_MSGS::VSPARAMETERREQUEST")
  (make-package "CAMPUSROVER_MSGS::VSPARAMETERREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::VSPARAMETERRESPONSE")
  (make-package "CAMPUSROVER_MSGS::VSPARAMETERRESPONSE"))

(in-package "ROS")





(defclass campusrover_msgs::VSParameterRequest
  :super ros::object
  :slots (_enable _button_name ))

(defmethod campusrover_msgs::VSParameterRequest
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

(defclass campusrover_msgs::VSParameterResponse
  :super ros::object
  :slots (_success ))

(defmethod campusrover_msgs::VSParameterResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass campusrover_msgs::VSParameter
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::VSParameter :md5sum-) "131799e53a81bae950535949b6dfa532")
(setf (get campusrover_msgs::VSParameter :datatype-) "campusrover_msgs/VSParameter")
(setf (get campusrover_msgs::VSParameter :request) campusrover_msgs::VSParameterRequest)
(setf (get campusrover_msgs::VSParameter :response) campusrover_msgs::VSParameterResponse)

(defmethod campusrover_msgs::VSParameterRequest
  (:response () (instance campusrover_msgs::VSParameterResponse :init)))

(setf (get campusrover_msgs::VSParameterRequest :md5sum-) "131799e53a81bae950535949b6dfa532")
(setf (get campusrover_msgs::VSParameterRequest :datatype-) "campusrover_msgs/VSParameterRequest")
(setf (get campusrover_msgs::VSParameterRequest :definition-)
      "bool enable
string button_name
---
bool success
")

(setf (get campusrover_msgs::VSParameterResponse :md5sum-) "131799e53a81bae950535949b6dfa532")
(setf (get campusrover_msgs::VSParameterResponse :datatype-) "campusrover_msgs/VSParameterResponse")
(setf (get campusrover_msgs::VSParameterResponse :definition-)
      "bool enable
string button_name
---
bool success
")



(provide :campusrover_msgs/VSParameter "131799e53a81bae950535949b6dfa532")


