;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::ButtonParking)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'ButtonParking (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::BUTTONPARKING")
  (make-package "CAMPUSROVER_MSGS::BUTTONPARKING"))
(unless (find-package "CAMPUSROVER_MSGS::BUTTONPARKINGREQUEST")
  (make-package "CAMPUSROVER_MSGS::BUTTONPARKINGREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::BUTTONPARKINGRESPONSE")
  (make-package "CAMPUSROVER_MSGS::BUTTONPARKINGRESPONSE"))

(in-package "ROS")





(defclass campusrover_msgs::ButtonParkingRequest
  :super ros::object
  :slots (_parking_dis ))

(defmethod campusrover_msgs::ButtonParkingRequest
  (:init
   (&key
    ((:parking_dis __parking_dis) 0.0)
    )
   (send-super :init)
   (setq _parking_dis (float __parking_dis))
   self)
  (:parking_dis
   (&optional __parking_dis)
   (if __parking_dis (setq _parking_dis __parking_dis)) _parking_dis)
  (:serialization-length
   ()
   (+
    ;; float32 _parking_dis
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _parking_dis
       (sys::poke _parking_dis (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _parking_dis
     (setq _parking_dis (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass campusrover_msgs::ButtonParkingResponse
  :super ros::object
  :slots ())

(defmethod campusrover_msgs::ButtonParkingResponse
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

(defclass campusrover_msgs::ButtonParking
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::ButtonParking :md5sum-) "fcf6feb26f63e7e05f9ddc618069eaed")
(setf (get campusrover_msgs::ButtonParking :datatype-) "campusrover_msgs/ButtonParking")
(setf (get campusrover_msgs::ButtonParking :request) campusrover_msgs::ButtonParkingRequest)
(setf (get campusrover_msgs::ButtonParking :response) campusrover_msgs::ButtonParkingResponse)

(defmethod campusrover_msgs::ButtonParkingRequest
  (:response () (instance campusrover_msgs::ButtonParkingResponse :init)))

(setf (get campusrover_msgs::ButtonParkingRequest :md5sum-) "fcf6feb26f63e7e05f9ddc618069eaed")
(setf (get campusrover_msgs::ButtonParkingRequest :datatype-) "campusrover_msgs/ButtonParkingRequest")
(setf (get campusrover_msgs::ButtonParkingRequest :definition-)
      "float32 parking_dis
---
")

(setf (get campusrover_msgs::ButtonParkingResponse :md5sum-) "fcf6feb26f63e7e05f9ddc618069eaed")
(setf (get campusrover_msgs::ButtonParkingResponse :datatype-) "campusrover_msgs/ButtonParkingResponse")
(setf (get campusrover_msgs::ButtonParkingResponse :definition-)
      "float32 parking_dis
---
")



(provide :campusrover_msgs/ButtonParking "fcf6feb26f63e7e05f9ddc618069eaed")


