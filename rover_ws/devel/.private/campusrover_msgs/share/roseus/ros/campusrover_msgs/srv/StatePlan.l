;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::StatePlan)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'StatePlan (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::STATEPLAN")
  (make-package "CAMPUSROVER_MSGS::STATEPLAN"))
(unless (find-package "CAMPUSROVER_MSGS::STATEPLANREQUEST")
  (make-package "CAMPUSROVER_MSGS::STATEPLANREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::STATEPLANRESPONSE")
  (make-package "CAMPUSROVER_MSGS::STATEPLANRESPONSE"))

(in-package "ROS")





(defclass campusrover_msgs::StatePlanRequest
  :super ros::object
  :slots (_rooms ))

(defmethod campusrover_msgs::StatePlanRequest
  (:init
   (&key
    ((:rooms __rooms) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _rooms __rooms)
   self)
  (:rooms
   (&optional __rooms)
   (if __rooms (setq _rooms __rooms)) _rooms)
  (:serialization-length
   ()
   (+
    ;; string[] _rooms
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _rooms)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _rooms
     (write-long (length _rooms) s)
     (dolist (elem _rooms)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _rooms
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rooms (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _rooms i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass campusrover_msgs::StatePlanResponse
  :super ros::object
  :slots (_states ))

(defmethod campusrover_msgs::StatePlanResponse
  (:init
   (&key
    ((:states __states) ())
    )
   (send-super :init)
   (setq _states __states)
   self)
  (:states
   (&rest __states)
   (if (keywordp (car __states))
       (send* _states __states)
     (progn
       (if __states (setq _states (car __states)))
       _states)))
  (:serialization-length
   ()
   (+
    ;; campusrover_msgs/State[] _states
    (apply #'+ (send-all _states :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; campusrover_msgs/State[] _states
     (write-long (length _states) s)
     (dolist (elem _states)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; campusrover_msgs/State[] _states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _states (let (r) (dotimes (i n) (push (instance campusrover_msgs::State :init) r)) r))
     (dolist (elem- _states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass campusrover_msgs::StatePlan
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::StatePlan :md5sum-) "4132620d7901a9a949aa5ed4dc13055a")
(setf (get campusrover_msgs::StatePlan :datatype-) "campusrover_msgs/StatePlan")
(setf (get campusrover_msgs::StatePlan :request) campusrover_msgs::StatePlanRequest)
(setf (get campusrover_msgs::StatePlan :response) campusrover_msgs::StatePlanResponse)

(defmethod campusrover_msgs::StatePlanRequest
  (:response () (instance campusrover_msgs::StatePlanResponse :init)))

(setf (get campusrover_msgs::StatePlanRequest :md5sum-) "4132620d7901a9a949aa5ed4dc13055a")
(setf (get campusrover_msgs::StatePlanRequest :datatype-) "campusrover_msgs/StatePlanRequest")
(setf (get campusrover_msgs::StatePlanRequest :definition-)
      "string[] rooms
---
campusrover_msgs/State[] states


================================================================================
MSG: campusrover_msgs/State
uint8 STATE_MOVE_TO_ELEVATOR=0
uint8 STATE_TAKE_ELEVATOR=1
uint8 STATE_DILIVER_THIS_FLOOR=2
uint8 STATE_MOVE_TO_ORIGIN=3
uint8 state
string[] rooms	
int8 current_floor
int8 destination_floor
")

(setf (get campusrover_msgs::StatePlanResponse :md5sum-) "4132620d7901a9a949aa5ed4dc13055a")
(setf (get campusrover_msgs::StatePlanResponse :datatype-) "campusrover_msgs/StatePlanResponse")
(setf (get campusrover_msgs::StatePlanResponse :definition-)
      "string[] rooms
---
campusrover_msgs/State[] states


================================================================================
MSG: campusrover_msgs/State
uint8 STATE_MOVE_TO_ELEVATOR=0
uint8 STATE_TAKE_ELEVATOR=1
uint8 STATE_DILIVER_THIS_FLOOR=2
uint8 STATE_MOVE_TO_ORIGIN=3
uint8 state
string[] rooms	
int8 current_floor
int8 destination_floor
")



(provide :campusrover_msgs/StatePlan "4132620d7901a9a949aa5ed4dc13055a")


