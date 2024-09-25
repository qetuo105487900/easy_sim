;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::State)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'State (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::STATE")
  (make-package "CAMPUSROVER_MSGS::STATE"))

(in-package "ROS")
;;//! \htmlinclude State.msg.html


(intern "*STATE_MOVE_TO_ELEVATOR*" (find-package "CAMPUSROVER_MSGS::STATE"))
(shadow '*STATE_MOVE_TO_ELEVATOR* (find-package "CAMPUSROVER_MSGS::STATE"))
(defconstant campusrover_msgs::State::*STATE_MOVE_TO_ELEVATOR* 0)
(intern "*STATE_TAKE_ELEVATOR*" (find-package "CAMPUSROVER_MSGS::STATE"))
(shadow '*STATE_TAKE_ELEVATOR* (find-package "CAMPUSROVER_MSGS::STATE"))
(defconstant campusrover_msgs::State::*STATE_TAKE_ELEVATOR* 1)
(intern "*STATE_DILIVER_THIS_FLOOR*" (find-package "CAMPUSROVER_MSGS::STATE"))
(shadow '*STATE_DILIVER_THIS_FLOOR* (find-package "CAMPUSROVER_MSGS::STATE"))
(defconstant campusrover_msgs::State::*STATE_DILIVER_THIS_FLOOR* 2)
(intern "*STATE_MOVE_TO_ORIGIN*" (find-package "CAMPUSROVER_MSGS::STATE"))
(shadow '*STATE_MOVE_TO_ORIGIN* (find-package "CAMPUSROVER_MSGS::STATE"))
(defconstant campusrover_msgs::State::*STATE_MOVE_TO_ORIGIN* 3)

(defun campusrover_msgs::State-to-symbol (const)
  (cond
        ((= const 0) 'campusrover_msgs::State::*STATE_MOVE_TO_ELEVATOR*)
        ((= const 1) 'campusrover_msgs::State::*STATE_TAKE_ELEVATOR*)
        ((= const 2) 'campusrover_msgs::State::*STATE_DILIVER_THIS_FLOOR*)
        ((= const 3) 'campusrover_msgs::State::*STATE_MOVE_TO_ORIGIN*)
        (t nil)))

(defclass campusrover_msgs::State
  :super ros::object
  :slots (_state _rooms _current_floor _destination_floor ))

(defmethod campusrover_msgs::State
  (:init
   (&key
    ((:state __state) 0)
    ((:rooms __rooms) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:current_floor __current_floor) 0)
    ((:destination_floor __destination_floor) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   (setq _rooms __rooms)
   (setq _current_floor (round __current_floor))
   (setq _destination_floor (round __destination_floor))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:rooms
   (&optional __rooms)
   (if __rooms (setq _rooms __rooms)) _rooms)
  (:current_floor
   (&optional __current_floor)
   (if __current_floor (setq _current_floor __current_floor)) _current_floor)
  (:destination_floor
   (&optional __destination_floor)
   (if __destination_floor (setq _destination_floor __destination_floor)) _destination_floor)
  (:serialization-length
   ()
   (+
    ;; uint8 _state
    1
    ;; string[] _rooms
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _rooms)) 4
    ;; int8 _current_floor
    1
    ;; int8 _destination_floor
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _state
       (write-byte _state s)
     ;; string[] _rooms
     (write-long (length _rooms) s)
     (dolist (elem _rooms)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int8 _current_floor
       (write-byte _current_floor s)
     ;; int8 _destination_floor
       (write-byte _destination_floor s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string[] _rooms
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rooms (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _rooms i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int8 _current_floor
     (setq _current_floor (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _current_floor 127) (setq _current_floor (- _current_floor 256)))
   ;; int8 _destination_floor
     (setq _destination_floor (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _destination_floor 127) (setq _destination_floor (- _destination_floor 256)))
   ;;
   self)
  )

(setf (get campusrover_msgs::State :md5sum-) "588c81bfe8a0db760845dae98b513221")
(setf (get campusrover_msgs::State :datatype-) "campusrover_msgs/State")
(setf (get campusrover_msgs::State :definition-)
      "uint8 STATE_MOVE_TO_ELEVATOR=0
uint8 STATE_TAKE_ELEVATOR=1
uint8 STATE_DILIVER_THIS_FLOOR=2
uint8 STATE_MOVE_TO_ORIGIN=3
uint8 state
string[] rooms	
int8 current_floor
int8 destination_floor

")



(provide :campusrover_msgs/State "588c81bfe8a0db760845dae98b513221")


