;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::CANbus)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'CANbus (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::CANBUS")
  (make-package "CAMPUSROVER_MSGS::CANBUS"))

(in-package "ROS")
;;//! \htmlinclude CANbus.msg.html


(intern "*ID_CONTAINER1*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*ID_CONTAINER1* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*ID_CONTAINER1* 1)
(intern "*ID_CONTAINER2*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*ID_CONTAINER2* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*ID_CONTAINER2* 2)
(intern "*ID_CONTAINER3*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*ID_CONTAINER3* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*ID_CONTAINER3* 3)
(intern "*ID_CONTAINER4*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*ID_CONTAINER4* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*ID_CONTAINER4* 4)
(intern "*ID_TWOSIDE*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*ID_TWOSIDE* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*ID_TWOSIDE* 5)
(intern "*GROUP_ZERO*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*GROUP_ZERO* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*GROUP_ZERO* 0)
(intern "*GROUP_CONTAINER*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*GROUP_CONTAINER* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*GROUP_CONTAINER* 1)
(intern "*SENDING_SINGLE*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*SENDING_SINGLE* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*SENDING_SINGLE* 26)
(intern "*SENDING_GROUP*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*SENDING_GROUP* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*SENDING_GROUP* 138)
(intern "*REG_CONTAINER*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*REG_CONTAINER* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*REG_CONTAINER* 2)
(intern "*VALUE_OPENDOOR*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*VALUE_OPENDOOR* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*VALUE_OPENDOOR* 1)
(intern "*VALUE_CLOSEDOOR*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*VALUE_CLOSEDOOR* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*VALUE_CLOSEDOOR* 0)
(intern "*REG_CONTAINERLED*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*REG_CONTAINERLED* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*REG_CONTAINERLED* 3)
(intern "*REG_LEFTSIDELED*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*REG_LEFTSIDELED* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*REG_LEFTSIDELED* 4)
(intern "*REG_RIGHTSIDELED*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*REG_RIGHTSIDELED* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*REG_RIGHTSIDELED* 5)
(intern "*REG_TWOSIDELED*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*REG_TWOSIDELED* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*REG_TWOSIDELED* 6)
(intern "*VALUE_DARK*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*VALUE_DARK* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*VALUE_DARK* 0)
(intern "*VALUE_LIGHT_50*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*VALUE_LIGHT_50* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*VALUE_LIGHT_50* 1)
(intern "*VALUE_LIGHT_100*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*VALUE_LIGHT_100* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*VALUE_LIGHT_100* 2)
(intern "*VALUE_BREATHE*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*VALUE_BREATHE* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*VALUE_BREATHE* 3)
(intern "*VALUE_BLINK*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*VALUE_BLINK* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*VALUE_BLINK* 4)
(intern "*VALUE_WATER1*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*VALUE_WATER1* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*VALUE_WATER1* 5)
(intern "*VALUE_WATER2*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*VALUE_WATER2* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*VALUE_WATER2* 6)
(intern "*VALUE_WATER3*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*VALUE_WATER3* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*VALUE_WATER3* 7)
(intern "*VALUE_WATER4*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*VALUE_WATER4* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*VALUE_WATER4* 8)
(intern "*VALUE_TALKING*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*VALUE_TALKING* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*VALUE_TALKING* 9)
(intern "*VALUE_NOCOLOR*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*VALUE_NOCOLOR* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*VALUE_NOCOLOR* 0)
(intern "*VALUE_WHITE*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*VALUE_WHITE* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*VALUE_WHITE* 1)
(intern "*VALUE_RED*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*VALUE_RED* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*VALUE_RED* 2)
(intern "*VALUE_GREEN*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*VALUE_GREEN* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*VALUE_GREEN* 3)
(intern "*VALUE_BLUE*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*VALUE_BLUE* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*VALUE_BLUE* 4)
(intern "*VALUE_PURPLE*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*VALUE_PURPLE* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*VALUE_PURPLE* 5)
(intern "*VALUE_YELLOW*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*VALUE_YELLOW* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*VALUE_YELLOW* 6)
(intern "*VALUE_SKY*" (find-package "CAMPUSROVER_MSGS::CANBUS"))
(shadow '*VALUE_SKY* (find-package "CAMPUSROVER_MSGS::CANBUS"))
(defconstant campusrover_msgs::CANbus::*VALUE_SKY* 7)

(defun campusrover_msgs::CANbus-to-symbol (const)
  (cond
        ((= const 1) 'campusrover_msgs::CANbus::*id_container1*)
        ((= const 2) 'campusrover_msgs::CANbus::*id_container2*)
        ((= const 3) 'campusrover_msgs::CANbus::*id_container3*)
        ((= const 4) 'campusrover_msgs::CANbus::*id_container4*)
        ((= const 5) 'campusrover_msgs::CANbus::*id_twoside*)
        ((= const 0) 'campusrover_msgs::CANbus::*group_zero*)
        ((= const 1) 'campusrover_msgs::CANbus::*group_container*)
        ((= const 26) 'campusrover_msgs::CANbus::*sending_single*)
        ((= const 138) 'campusrover_msgs::CANbus::*sending_group*)
        ((= const 2) 'campusrover_msgs::CANbus::*reg_container*)
        ((= const 1) 'campusrover_msgs::CANbus::*value_opendoor*)
        ((= const 0) 'campusrover_msgs::CANbus::*value_closedoor*)
        ((= const 3) 'campusrover_msgs::CANbus::*reg_containerled*)
        ((= const 4) 'campusrover_msgs::CANbus::*reg_leftsideled*)
        ((= const 5) 'campusrover_msgs::CANbus::*reg_rightsideled*)
        ((= const 6) 'campusrover_msgs::CANbus::*reg_twosideled*)
        ((= const 0) 'campusrover_msgs::CANbus::*value_dark*)
        ((= const 1) 'campusrover_msgs::CANbus::*value_light_50*)
        ((= const 2) 'campusrover_msgs::CANbus::*value_light_100*)
        ((= const 3) 'campusrover_msgs::CANbus::*value_breathe*)
        ((= const 4) 'campusrover_msgs::CANbus::*value_blink*)
        ((= const 5) 'campusrover_msgs::CANbus::*value_water1*)
        ((= const 6) 'campusrover_msgs::CANbus::*value_water2*)
        ((= const 7) 'campusrover_msgs::CANbus::*value_water3*)
        ((= const 8) 'campusrover_msgs::CANbus::*value_water4*)
        ((= const 9) 'campusrover_msgs::CANbus::*value_talking*)
        ((= const 0) 'campusrover_msgs::CANbus::*value_nocolor*)
        ((= const 1) 'campusrover_msgs::CANbus::*value_white*)
        ((= const 2) 'campusrover_msgs::CANbus::*value_red*)
        ((= const 3) 'campusrover_msgs::CANbus::*value_green*)
        ((= const 4) 'campusrover_msgs::CANbus::*value_blue*)
        ((= const 5) 'campusrover_msgs::CANbus::*value_purple*)
        ((= const 6) 'campusrover_msgs::CANbus::*value_yellow*)
        ((= const 7) 'campusrover_msgs::CANbus::*value_sky*)
        (t nil)))

(defclass campusrover_msgs::CANbus
  :super ros::object
  :slots (_id _group _fun_code _reg1 _value1 _reg2 _value2 ))

(defmethod campusrover_msgs::CANbus
  (:init
   (&key
    ((:id __id) 0)
    ((:group __group) 0)
    ((:fun_code __fun_code) 0)
    ((:reg1 __reg1) 0)
    ((:value1 __value1) 0)
    ((:reg2 __reg2) 0)
    ((:value2 __value2) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _group (round __group))
   (setq _fun_code (round __fun_code))
   (setq _reg1 (round __reg1))
   (setq _value1 (round __value1))
   (setq _reg2 (round __reg2))
   (setq _value2 (round __value2))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:group
   (&optional __group)
   (if __group (setq _group __group)) _group)
  (:fun_code
   (&optional __fun_code)
   (if __fun_code (setq _fun_code __fun_code)) _fun_code)
  (:reg1
   (&optional __reg1)
   (if __reg1 (setq _reg1 __reg1)) _reg1)
  (:value1
   (&optional __value1)
   (if __value1 (setq _value1 __value1)) _value1)
  (:reg2
   (&optional __reg2)
   (if __reg2 (setq _reg2 __reg2)) _reg2)
  (:value2
   (&optional __value2)
   (if __value2 (setq _value2 __value2)) _value2)
  (:serialization-length
   ()
   (+
    ;; uint16 _id
    2
    ;; uint16 _group
    2
    ;; uint16 _fun_code
    2
    ;; uint16 _reg1
    2
    ;; uint16 _value1
    2
    ;; uint16 _reg2
    2
    ;; uint16 _value2
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _id
       (write-word _id s)
     ;; uint16 _group
       (write-word _group s)
     ;; uint16 _fun_code
       (write-word _fun_code s)
     ;; uint16 _reg1
       (write-word _reg1 s)
     ;; uint16 _value1
       (write-word _value1 s)
     ;; uint16 _reg2
       (write-word _reg2 s)
     ;; uint16 _value2
       (write-word _value2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _group
     (setq _group (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _fun_code
     (setq _fun_code (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _reg1
     (setq _reg1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _value1
     (setq _value1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _reg2
     (setq _reg2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _value2
     (setq _value2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get campusrover_msgs::CANbus :md5sum-) "2a6881bd895ce03d25c554a5c460b8df")
(setf (get campusrover_msgs::CANbus :datatype-) "campusrover_msgs/CANbus")
(setf (get campusrover_msgs::CANbus :definition-)
      "uint16 id
uint16 id_container1 = 1
uint16 id_container2 = 2
uint16 id_container3 = 3
uint16 id_container4 = 4
uint16 id_twoside = 5

uint16 group
uint16 group_zero = 0
uint16 group_container = 1

uint16 fun_code
uint16 sending_single = 26 #0x1A
uint16 sending_group = 138 #0x8A

uint16 reg1
uint16 value1
uint16 reg2
uint16 value2

uint16 reg_container = 2
uint16 value_opendoor = 1
uint16 value_closedoor = 0

uint16 reg_containerled = 3
uint16 reg_leftsideled = 4
uint16 reg_rightsideled = 5
uint16 reg_twosideled = 6
uint16 value_dark = 0
uint16 value_light_50 = 1
uint16 value_light_100 = 2
uint16 value_breathe = 3
uint16 value_blink = 4

uint16 value_water1 = 5
uint16 value_water2 = 6
uint16 value_water3 = 7
uint16 value_water4 = 8
uint16 value_talking = 9

uint16 value_nocolor = 0
uint16 value_white = 1
uint16 value_red = 2
uint16 value_green = 3
uint16 value_blue = 4
uint16 value_purple = 5
uint16 value_yellow = 6
uint16 value_sky = 7

")



(provide :campusrover_msgs/CANbus "2a6881bd895ce03d25c554a5c460b8df")


