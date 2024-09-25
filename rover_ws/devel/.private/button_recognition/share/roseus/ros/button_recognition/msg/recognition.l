;; Auto-generated. Do not edit!


(when (boundp 'button_recognition::recognition)
  (if (not (find-package "BUTTON_RECOGNITION"))
    (make-package "BUTTON_RECOGNITION"))
  (shadow 'recognition (find-package "BUTTON_RECOGNITION")))
(unless (find-package "BUTTON_RECOGNITION::RECOGNITION")
  (make-package "BUTTON_RECOGNITION::RECOGNITION"))

(in-package "ROS")
;;//! \htmlinclude recognition.msg.html


(defclass button_recognition::recognition
  :super ros::object
  :slots (_y_min _x_min _y_max _x_max _categ _score _activate_score _belief _text ))

(defmethod button_recognition::recognition
  (:init
   (&key
    ((:y_min __y_min) 0)
    ((:x_min __x_min) 0)
    ((:y_max __y_max) 0)
    ((:x_max __x_max) 0)
    ((:categ __categ) 0)
    ((:score __score) 0.0)
    ((:activate_score __activate_score) 0.0)
    ((:belief __belief) 0.0)
    ((:text __text) "")
    )
   (send-super :init)
   (setq _y_min (round __y_min))
   (setq _x_min (round __x_min))
   (setq _y_max (round __y_max))
   (setq _x_max (round __x_max))
   (setq _categ (round __categ))
   (setq _score (float __score))
   (setq _activate_score (float __activate_score))
   (setq _belief (float __belief))
   (setq _text (string __text))
   self)
  (:y_min
   (&optional __y_min)
   (if __y_min (setq _y_min __y_min)) _y_min)
  (:x_min
   (&optional __x_min)
   (if __x_min (setq _x_min __x_min)) _x_min)
  (:y_max
   (&optional __y_max)
   (if __y_max (setq _y_max __y_max)) _y_max)
  (:x_max
   (&optional __x_max)
   (if __x_max (setq _x_max __x_max)) _x_max)
  (:categ
   (&optional __categ)
   (if __categ (setq _categ __categ)) _categ)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:activate_score
   (&optional __activate_score)
   (if __activate_score (setq _activate_score __activate_score)) _activate_score)
  (:belief
   (&optional __belief)
   (if __belief (setq _belief __belief)) _belief)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; int32 _y_min
    4
    ;; int32 _x_min
    4
    ;; int32 _y_max
    4
    ;; int32 _x_max
    4
    ;; int32 _categ
    4
    ;; float32 _score
    4
    ;; float32 _activate_score
    4
    ;; float32 _belief
    4
    ;; string _text
    4 (length _text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _y_min
       (write-long _y_min s)
     ;; int32 _x_min
       (write-long _x_min s)
     ;; int32 _y_max
       (write-long _y_max s)
     ;; int32 _x_max
       (write-long _x_max s)
     ;; int32 _categ
       (write-long _categ s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _activate_score
       (sys::poke _activate_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _belief
       (sys::poke _belief (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _y_min
     (setq _y_min (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _x_min
     (setq _x_min (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y_max
     (setq _y_max (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _x_max
     (setq _x_max (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _categ
     (setq _categ (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _activate_score
     (setq _activate_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _belief
     (setq _belief (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get button_recognition::recognition :md5sum-) "46ce2b8843cab8e05556ebbba9c830ef")
(setf (get button_recognition::recognition :datatype-) "button_recognition/recognition")
(setf (get button_recognition::recognition :definition-)
      "int32 y_min
int32 x_min
int32 y_max
int32 x_max
int32 categ
float32 score
float32 activate_score
float32 belief
string text
")



(provide :button_recognition/recognition "46ce2b8843cab8e05556ebbba9c830ef")


