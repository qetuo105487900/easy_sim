;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::DestinationWithMpc)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'DestinationWithMpc (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::DESTINATIONWITHMPC")
  (make-package "CAMPUSROVER_MSGS::DESTINATIONWITHMPC"))

(in-package "ROS")
;;//! \htmlinclude DestinationWithMpc.msg.html


(defclass campusrover_msgs::DestinationWithMpc
  :super ros::object
  :slots (_building _floor _room _enable _robot_radius _away_dis ))

(defmethod campusrover_msgs::DestinationWithMpc
  (:init
   (&key
    ((:building __building) "")
    ((:floor __floor) "")
    ((:room __room) "")
    ((:enable __enable) nil)
    ((:robot_radius __robot_radius) 0.0)
    ((:away_dis __away_dis) 0.0)
    )
   (send-super :init)
   (setq _building (string __building))
   (setq _floor (string __floor))
   (setq _room (string __room))
   (setq _enable __enable)
   (setq _robot_radius (float __robot_radius))
   (setq _away_dis (float __away_dis))
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
    ;; string _building
    4 (length _building)
    ;; string _floor
    4 (length _floor)
    ;; string _room
    4 (length _room)
    ;; bool _enable
    1
    ;; float64 _robot_radius
    8
    ;; float64 _away_dis
    8
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
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;; float64 _robot_radius
       (sys::poke _robot_radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _away_dis
       (sys::poke _away_dis (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _robot_radius
     (setq _robot_radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _away_dis
     (setq _away_dis (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get campusrover_msgs::DestinationWithMpc :md5sum-) "ac00f4a554e23a5c6a718522c6cc452a")
(setf (get campusrover_msgs::DestinationWithMpc :datatype-) "campusrover_msgs/DestinationWithMpc")
(setf (get campusrover_msgs::DestinationWithMpc :definition-)
      "string building
string floor
string room
bool enable
float64 robot_radius
float64 away_dis
")



(provide :campusrover_msgs/DestinationWithMpc "ac00f4a554e23a5c6a718522c6cc452a")


