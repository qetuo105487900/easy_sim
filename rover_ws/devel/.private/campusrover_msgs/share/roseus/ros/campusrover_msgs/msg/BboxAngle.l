;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::BboxAngle)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'BboxAngle (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::BBOXANGLE")
  (make-package "CAMPUSROVER_MSGS::BBOXANGLE"))

(in-package "ROS")
;;//! \htmlinclude BboxAngle.msg.html


(intern "*LABEL_PERSON*" (find-package "CAMPUSROVER_MSGS::BBOXANGLE"))
(shadow '*LABEL_PERSON* (find-package "CAMPUSROVER_MSGS::BBOXANGLE"))
(defconstant campusrover_msgs::BboxAngle::*LABEL_PERSON* 1)
(intern "*LABEL_BICYCLE*" (find-package "CAMPUSROVER_MSGS::BBOXANGLE"))
(shadow '*LABEL_BICYCLE* (find-package "CAMPUSROVER_MSGS::BBOXANGLE"))
(defconstant campusrover_msgs::BboxAngle::*LABEL_BICYCLE* 2)
(intern "*LABEL_CAR*" (find-package "CAMPUSROVER_MSGS::BBOXANGLE"))
(shadow '*LABEL_CAR* (find-package "CAMPUSROVER_MSGS::BBOXANGLE"))
(defconstant campusrover_msgs::BboxAngle::*LABEL_CAR* 3)
(intern "*LABEL_MOTORCYCLE*" (find-package "CAMPUSROVER_MSGS::BBOXANGLE"))
(shadow '*LABEL_MOTORCYCLE* (find-package "CAMPUSROVER_MSGS::BBOXANGLE"))
(defconstant campusrover_msgs::BboxAngle::*LABEL_MOTORCYCLE* 4)

(defun campusrover_msgs::BboxAngle-to-symbol (const)
  (cond
        ((= const 1) 'campusrover_msgs::BboxAngle::*LABEL_PERSON*)
        ((= const 2) 'campusrover_msgs::BboxAngle::*LABEL_BICYCLE*)
        ((= const 3) 'campusrover_msgs::BboxAngle::*LABEL_CAR*)
        ((= const 4) 'campusrover_msgs::BboxAngle::*LABEL_MOTORCYCLE*)
        (t nil)))

(defclass campusrover_msgs::BboxAngle
  :super ros::object
  :slots (_label _angle ))

(defmethod campusrover_msgs::BboxAngle
  (:init
   (&key
    ((:label __label) 0)
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _label (round __label))
   (setq _angle (float __angle))
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; uint16 _label
    2
    ;; float64 _angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _label
       (write-word _label s)
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _label
     (setq _label (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get campusrover_msgs::BboxAngle :md5sum-) "2aa10b01275d72e1527a3a634bcf02a2")
(setf (get campusrover_msgs::BboxAngle :datatype-) "campusrover_msgs/BboxAngle")
(setf (get campusrover_msgs::BboxAngle :definition-)
      "uint16 LABEL_PERSON = 1
uint16 LABEL_BICYCLE = 2
uint16 LABEL_CAR = 3
uint16 LABEL_MOTORCYCLE = 4

uint16 label
float64 angle
")



(provide :campusrover_msgs/BboxAngle "2aa10b01275d72e1527a3a634bcf02a2")


