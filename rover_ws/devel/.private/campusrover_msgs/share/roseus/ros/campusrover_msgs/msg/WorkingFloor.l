;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::WorkingFloor)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'WorkingFloor (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::WORKINGFLOOR")
  (make-package "CAMPUSROVER_MSGS::WORKINGFLOOR"))

(in-package "ROS")
;;//! \htmlinclude WorkingFloor.msg.html


(defclass campusrover_msgs::WorkingFloor
  :super ros::object
  :slots (_building _floor ))

(defmethod campusrover_msgs::WorkingFloor
  (:init
   (&key
    ((:building __building) "")
    ((:floor __floor) "")
    )
   (send-super :init)
   (setq _building (string __building))
   (setq _floor (string __floor))
   self)
  (:building
   (&optional __building)
   (if __building (setq _building __building)) _building)
  (:floor
   (&optional __floor)
   (if __floor (setq _floor __floor)) _floor)
  (:serialization-length
   ()
   (+
    ;; string _building
    4 (length _building)
    ;; string _floor
    4 (length _floor)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _building
       (write-long (length _building) s) (princ _building s)
     ;; string _floor
       (write-long (length _floor) s) (princ _floor s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _building
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _building (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _floor
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _floor (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get campusrover_msgs::WorkingFloor :md5sum-) "9b15058aba057dc225e6ed360700b819")
(setf (get campusrover_msgs::WorkingFloor :datatype-) "campusrover_msgs/WorkingFloor")
(setf (get campusrover_msgs::WorkingFloor :definition-)
      "string building
string floor
")



(provide :campusrover_msgs/WorkingFloor "9b15058aba057dc225e6ed360700b819")


