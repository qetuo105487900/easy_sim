;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::FloorInfo)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'FloorInfo (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::FLOORINFO")
  (make-package "CAMPUSROVER_MSGS::FLOORINFO"))

(in-package "ROS")
;;//! \htmlinclude FloorInfo.msg.html


(defclass campusrover_msgs::FloorInfo
  :super ros::object
  :slots (_current_floor _target_floor ))

(defmethod campusrover_msgs::FloorInfo
  (:init
   (&key
    ((:current_floor __current_floor) 0)
    ((:target_floor __target_floor) 0)
    )
   (send-super :init)
   (setq _current_floor (round __current_floor))
   (setq _target_floor (round __target_floor))
   self)
  (:current_floor
   (&optional __current_floor)
   (if __current_floor (setq _current_floor __current_floor)) _current_floor)
  (:target_floor
   (&optional __target_floor)
   (if __target_floor (setq _target_floor __target_floor)) _target_floor)
  (:serialization-length
   ()
   (+
    ;; int32 _current_floor
    4
    ;; int32 _target_floor
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _current_floor
       (write-long _current_floor s)
     ;; int32 _target_floor
       (write-long _target_floor s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _current_floor
     (setq _current_floor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _target_floor
     (setq _target_floor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get campusrover_msgs::FloorInfo :md5sum-) "51cf3c1c3025aae9deca720d6eb4681b")
(setf (get campusrover_msgs::FloorInfo :datatype-) "campusrover_msgs/FloorInfo")
(setf (get campusrover_msgs::FloorInfo :definition-)
      "int32 current_floor
int32 target_floor
")



(provide :campusrover_msgs/FloorInfo "51cf3c1c3025aae9deca720d6eb4681b")


