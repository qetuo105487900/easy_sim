;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::LocationRoom)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'LocationRoom (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::LOCATIONROOM")
  (make-package "CAMPUSROVER_MSGS::LOCATIONROOM"))

(in-package "ROS")
;;//! \htmlinclude LocationRoom.msg.html


(defclass campusrover_msgs::LocationRoom
  :super ros::object
  :slots (_building _floor _room ))

(defmethod campusrover_msgs::LocationRoom
  (:init
   (&key
    ((:building __building) "")
    ((:floor __floor) "")
    ((:room __room) "")
    )
   (send-super :init)
   (setq _building (string __building))
   (setq _floor (string __floor))
   (setq _room (string __room))
   self)
  (:building
   (&optional __building)
   (if __building (setq _building __building)) _building)
  (:floor
   (&optional __floor)
   (if __floor (setq _floor __floor)) _floor)
  (:room
   (&optional __room)
   (if __room (setq _room __room)) _room)
  (:serialization-length
   ()
   (+
    ;; string _building
    4 (length _building)
    ;; string _floor
    4 (length _floor)
    ;; string _room
    4 (length _room)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _building
       (write-long (length _building) s) (princ _building s)
     ;; string _floor
       (write-long (length _floor) s) (princ _floor s)
     ;; string _room
       (write-long (length _room) s) (princ _room s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _building
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _building (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _floor
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _floor (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _room
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _room (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get campusrover_msgs::LocationRoom :md5sum-) "5f74223b9b035206d07897cf693b1688")
(setf (get campusrover_msgs::LocationRoom :datatype-) "campusrover_msgs/LocationRoom")
(setf (get campusrover_msgs::LocationRoom :definition-)
      "string building
string floor
string room
")



(provide :campusrover_msgs/LocationRoom "5f74223b9b035206d07897cf693b1688")


