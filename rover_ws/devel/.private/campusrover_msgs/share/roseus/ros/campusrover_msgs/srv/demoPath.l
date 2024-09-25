;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::demoPath)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'demoPath (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::DEMOPATH")
  (make-package "CAMPUSROVER_MSGS::DEMOPATH"))
(unless (find-package "CAMPUSROVER_MSGS::DEMOPATHREQUEST")
  (make-package "CAMPUSROVER_MSGS::DEMOPATHREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::DEMOPATHRESPONSE")
  (make-package "CAMPUSROVER_MSGS::DEMOPATHRESPONSE"))

(in-package "ROS")





(defclass campusrover_msgs::demoPathRequest
  :super ros::object
  :slots (_start_point _end_point ))

(defmethod campusrover_msgs::demoPathRequest
  (:init
   (&key
    ((:start_point __start_point) "")
    ((:end_point __end_point) "")
    )
   (send-super :init)
   (setq _start_point (string __start_point))
   (setq _end_point (string __end_point))
   self)
  (:start_point
   (&optional __start_point)
   (if __start_point (setq _start_point __start_point)) _start_point)
  (:end_point
   (&optional __end_point)
   (if __end_point (setq _end_point __end_point)) _end_point)
  (:serialization-length
   ()
   (+
    ;; string _start_point
    4 (length _start_point)
    ;; string _end_point
    4 (length _end_point)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _start_point
       (write-long (length _start_point) s) (princ _start_point s)
     ;; string _end_point
       (write-long (length _end_point) s) (princ _end_point s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _start_point
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _start_point (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _end_point
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _end_point (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass campusrover_msgs::demoPathResponse
  :super ros::object
  :slots ())

(defmethod campusrover_msgs::demoPathResponse
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

(defclass campusrover_msgs::demoPath
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::demoPath :md5sum-) "8bcb23441037678d1306415ad104d0ec")
(setf (get campusrover_msgs::demoPath :datatype-) "campusrover_msgs/demoPath")
(setf (get campusrover_msgs::demoPath :request) campusrover_msgs::demoPathRequest)
(setf (get campusrover_msgs::demoPath :response) campusrover_msgs::demoPathResponse)

(defmethod campusrover_msgs::demoPathRequest
  (:response () (instance campusrover_msgs::demoPathResponse :init)))

(setf (get campusrover_msgs::demoPathRequest :md5sum-) "8bcb23441037678d1306415ad104d0ec")
(setf (get campusrover_msgs::demoPathRequest :datatype-) "campusrover_msgs/demoPathRequest")
(setf (get campusrover_msgs::demoPathRequest :definition-)
      "string start_point
string end_point
---


")

(setf (get campusrover_msgs::demoPathResponse :md5sum-) "8bcb23441037678d1306415ad104d0ec")
(setf (get campusrover_msgs::demoPathResponse :datatype-) "campusrover_msgs/demoPathResponse")
(setf (get campusrover_msgs::demoPathResponse :definition-)
      "string start_point
string end_point
---


")



(provide :campusrover_msgs/demoPath "8bcb23441037678d1306415ad104d0ec")


