;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::ActionCharging)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'ActionCharging (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::ACTIONCHARGING")
  (make-package "CAMPUSROVER_MSGS::ACTIONCHARGING"))
(unless (find-package "CAMPUSROVER_MSGS::ACTIONCHARGINGREQUEST")
  (make-package "CAMPUSROVER_MSGS::ACTIONCHARGINGREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::ACTIONCHARGINGRESPONSE")
  (make-package "CAMPUSROVER_MSGS::ACTIONCHARGINGRESPONSE"))

(in-package "ROS")





(intern "*CONNECTING*" (find-package "CAMPUSROVER_MSGS::ACTIONCHARGINGREQUEST"))
(shadow '*CONNECTING* (find-package "CAMPUSROVER_MSGS::ACTIONCHARGINGREQUEST"))
(defconstant campusrover_msgs::ActionChargingRequest::*CONNECTING* 1)
(intern "*UNCONNECTING*" (find-package "CAMPUSROVER_MSGS::ACTIONCHARGINGREQUEST"))
(shadow '*UNCONNECTING* (find-package "CAMPUSROVER_MSGS::ACTIONCHARGINGREQUEST"))
(defconstant campusrover_msgs::ActionChargingRequest::*UNCONNECTING* 2)

(defun campusrover_msgs::ActionChargingRequest-to-symbol (const)
  (cond
        ((= const 1) 'campusrover_msgs::ActionChargingRequest::*CONNECTING*)
        ((= const 2) 'campusrover_msgs::ActionChargingRequest::*UNCONNECTING*)
        (t nil)))

(defclass campusrover_msgs::ActionChargingRequest
  :super ros::object
  :slots (_location _floor _charging_pile_id _status ))

(defmethod campusrover_msgs::ActionChargingRequest
  (:init
   (&key
    ((:location __location) "")
    ((:floor __floor) 0)
    ((:charging_pile_id __charging_pile_id) 0)
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _location (string __location))
   (setq _floor (round __floor))
   (setq _charging_pile_id (round __charging_pile_id))
   (setq _status (round __status))
   self)
  (:location
   (&optional __location)
   (if __location (setq _location __location)) _location)
  (:floor
   (&optional __floor)
   (if __floor (setq _floor __floor)) _floor)
  (:charging_pile_id
   (&optional __charging_pile_id)
   (if __charging_pile_id (setq _charging_pile_id __charging_pile_id)) _charging_pile_id)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string _location
    4 (length _location)
    ;; int32 _floor
    4
    ;; uint8 _charging_pile_id
    1
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _location
       (write-long (length _location) s) (princ _location s)
     ;; int32 _floor
       (write-long _floor s)
     ;; uint8 _charging_pile_id
       (write-byte _charging_pile_id s)
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _floor
     (setq _floor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _charging_pile_id
     (setq _charging_pile_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass campusrover_msgs::ActionChargingResponse
  :super ros::object
  :slots ())

(defmethod campusrover_msgs::ActionChargingResponse
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

(defclass campusrover_msgs::ActionCharging
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::ActionCharging :md5sum-) "5168c6de9ca46f7222d4c5d4011956cc")
(setf (get campusrover_msgs::ActionCharging :datatype-) "campusrover_msgs/ActionCharging")
(setf (get campusrover_msgs::ActionCharging :request) campusrover_msgs::ActionChargingRequest)
(setf (get campusrover_msgs::ActionCharging :response) campusrover_msgs::ActionChargingResponse)

(defmethod campusrover_msgs::ActionChargingRequest
  (:response () (instance campusrover_msgs::ActionChargingResponse :init)))

(setf (get campusrover_msgs::ActionChargingRequest :md5sum-) "5168c6de9ca46f7222d4c5d4011956cc")
(setf (get campusrover_msgs::ActionChargingRequest :datatype-) "campusrover_msgs/ActionChargingRequest")
(setf (get campusrover_msgs::ActionChargingRequest :definition-)
      "uint8 CONNECTING=1
uint8 UNCONNECTING=2
string location
int32 floor
uint8 charging_pile_id
uint8 status
---

")

(setf (get campusrover_msgs::ActionChargingResponse :md5sum-) "5168c6de9ca46f7222d4c5d4011956cc")
(setf (get campusrover_msgs::ActionChargingResponse :datatype-) "campusrover_msgs/ActionChargingResponse")
(setf (get campusrover_msgs::ActionChargingResponse :definition-)
      "uint8 CONNECTING=1
uint8 UNCONNECTING=2
string location
int32 floor
uint8 charging_pile_id
uint8 status
---

")



(provide :campusrover_msgs/ActionCharging "5168c6de9ca46f7222d4c5d4011956cc")


