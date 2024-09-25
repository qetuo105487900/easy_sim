;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::HmiStatus)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'HmiStatus (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::HMISTATUS")
  (make-package "CAMPUSROVER_MSGS::HMISTATUS"))

(in-package "ROS")
;;//! \htmlinclude HmiStatus.msg.html


(intern "*STAUS_BOOT*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_BOOT* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_BOOT* 1)
(intern "*STAUS_STANDBY*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_STANDBY* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_STANDBY* 2)
(intern "*STAUS_SPEAK_HELLO_HELLO*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_HELLO_HELLO* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_HELLO_HELLO* 54)
(intern "*STAUS_SPEAK_SCAN_QRCODE1*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_SCAN_QRCODE1* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_SCAN_QRCODE1* 55)
(intern "*STAUS_SPEAK_WRONG_NUMBER1*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_WRONG_NUMBER1* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_WRONG_NUMBER1* 56)
(intern "*STAUS_SPEAK_PUT_IN_MEALS*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_PUT_IN_MEALS* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_PUT_IN_MEALS* 57)
(intern "*STAUS_SPEAK_PRESS_BUTTON_AFTER_PUT_IN*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_PRESS_BUTTON_AFTER_PUT_IN* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_PRESS_BUTTON_AFTER_PUT_IN* 58)
(intern "*STAUS_SPEAK_MEAL_ARRIVED*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_MEAL_ARRIVED* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_MEAL_ARRIVED* 59)
(intern "*STAUS_SPEAK_DELIVERING_MEAL*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_DELIVERING_MEAL* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_DELIVERING_MEAL* 60)
(intern "*STAUS_SPEAK_SCAN_QRCODE2*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_SCAN_QRCODE2* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_SCAN_QRCODE2* 61)
(intern "*STAUS_SPEAK_WRONG_NUMBER2*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_WRONG_NUMBER2* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_WRONG_NUMBER2* 62)
(intern "*STAUS_SPEAK_TAKE_OUT_MEALS_1*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_TAKE_OUT_MEALS_1* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_TAKE_OUT_MEALS_1* 3)
(intern "*STAUS_WHITE_LIGHT_1*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_WHITE_LIGHT_1* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_WHITE_LIGHT_1* 91)
(intern "*STAUS_GREEN_LIGHT_1*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_GREEN_LIGHT_1* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_GREEN_LIGHT_1* 7)
(intern "*STAUS_BLUE_LIGHT_1*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_BLUE_LIGHT_1* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_BLUE_LIGHT_1* 11)
(intern "*STAUS_RED_LIGHT_1*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_RED_LIGHT_1* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_RED_LIGHT_1* 15)
(intern "*STAUS_SPEAK_TAKE_OUT_MEALS_2*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_TAKE_OUT_MEALS_2* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_TAKE_OUT_MEALS_2* 4)
(intern "*STAUS_WHITE_LIGHT_2*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_WHITE_LIGHT_2* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_WHITE_LIGHT_2* 92)
(intern "*STAUS_GREEN_LIGHT_2*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_GREEN_LIGHT_2* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_GREEN_LIGHT_2* 8)
(intern "*STAUS_BLUE_LIGHT_2*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_BLUE_LIGHT_2* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_BLUE_LIGHT_2* 12)
(intern "*STAUS_RED_LIGHT_2*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_RED_LIGHT_2* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_RED_LIGHT_2* 16)
(intern "*STAUS_SPEAK_TAKE_OUT_MEALS_3*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_TAKE_OUT_MEALS_3* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_TAKE_OUT_MEALS_3* 5)
(intern "*STAUS_WHITE_LIGHT_3*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_WHITE_LIGHT_3* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_WHITE_LIGHT_3* 93)
(intern "*STAUS_GREEN_LIGHT_3*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_GREEN_LIGHT_3* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_GREEN_LIGHT_3* 9)
(intern "*STAUS_BLUE_LIGHT_3*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_BLUE_LIGHT_3* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_BLUE_LIGHT_3* 13)
(intern "*STAUS_RED_LIGHT_3*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_RED_LIGHT_3* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_RED_LIGHT_3* 17)
(intern "*STAUS_SPEAK_TAKE_OUT_MEALS_4*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_TAKE_OUT_MEALS_4* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_TAKE_OUT_MEALS_4* 6)
(intern "*STAUS_WHITE_LIGHT_4*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_WHITE_LIGHT_4* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_WHITE_LIGHT_4* 94)
(intern "*STAUS_GREEN_LIGHT_4*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_GREEN_LIGHT_4* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_GREEN_LIGHT_4* 10)
(intern "*STAUS_BLUE_LIGHT_4*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_BLUE_LIGHT_4* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_BLUE_LIGHT_4* 14)
(intern "*STAUS_RED_LIGHT_4*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_RED_LIGHT_4* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_RED_LIGHT_4* 18)
(intern "*STAUS_SPEAK_PRESS_BUTTON_AFTER_TAKE_OUT*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_PRESS_BUTTON_AFTER_TAKE_OUT* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_PRESS_BUTTON_AFTER_TAKE_OUT* 63)
(intern "*STAUS_SPEAK_ENJOY_MEAL*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_ENJOY_MEAL* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_ENJOY_MEAL* 64)
(intern "*STAUS_SPEAK_HELLO*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_HELLO* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_HELLO* 65)
(intern "*STAUS_SPEAK_THANKS*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_THANKS* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_THANKS* 66)
(intern "*STAUS_SPEAK_GOODBYE*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_GOODBYE* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_GOODBYE* 67)
(intern "*STAUS_SPEAK_EXCUSE_ME*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_EXCUSE_ME* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_EXCUSE_ME* 68)
(intern "*STAUS_SPEAK_COMMING_THROUGH*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_COMMING_THROUGH* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_COMMING_THROUGH* 69)
(intern "*STAUS_SPEAK_BE_CAREFUL*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_BE_CAREFUL* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_BE_CAREFUL* 70)
(intern "*STAUS_SPEAK_WATCH_OUT*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_WATCH_OUT* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_WATCH_OUT* 19)
(intern "*STAUS_SPEAK_HELP_ME*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_HELP_ME* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_HELP_ME* 20)
(intern "*STAUS_SPEAK_OPEN_DOOR*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_OPEN_DOOR* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_OPEN_DOOR* 21)
(intern "*STAUS_SPEAK_HAVE_GOODDAY*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_HAVE_GOODDAY* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_HAVE_GOODDAY* 22)
(intern "*STAUS_SPEAK_WRONG_OPERATION*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_WRONG_OPERATION* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_WRONG_OPERATION* 23)
(intern "*STAUS_SPEAK_DO_IT_AGAIN*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_DO_IT_AGAIN* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_DO_IT_AGAIN* 24)
(intern "*STAUS_SPEAK_CORRECT_OR_NOT*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_CORRECT_OR_NOT* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_CORRECT_OR_NOT* 25)
(intern "*STAUS_SPEAK_LOW_BATTERY*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_LOW_BATTERY* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_LOW_BATTERY* 26)
(intern "*STAUS_SPEAK_SYSTEM_ERROR*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_SYSTEM_ERROR* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_SYSTEM_ERROR* 27)
(intern "*STAUS_SPEAK_CALL_STAFF*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_CALL_STAFF* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_CALL_STAFF* 28)
(intern "*STAUS_SPEAK_LOADING*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_LOADING* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_LOADING* 29)
(intern "*STAUS_SPEAK_WAIT*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_SPEAK_WAIT* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_SPEAK_WAIT* 30)
(intern "*STAUS_ENTER_ELEVATOR*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_ENTER_ELEVATOR* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_ENTER_ELEVATOR* 31)
(intern "*STAUS_LEAVING_ELEVATOR*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_LEAVING_ELEVATOR* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_LEAVING_ELEVATOR* 32)
(intern "*STAUS_TURN_RIGHT*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_TURN_RIGHT* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_TURN_RIGHT* 34)
(intern "*STAUS_TURN_LEFT*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_TURN_LEFT* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_TURN_LEFT* 35)
(intern "*STAUS_BLOCKED*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_BLOCKED* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_BLOCKED* 36)
(intern "*STAUS_REVERSE*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_REVERSE* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_REVERSE* 37)
(intern "*STAUS_BREATH*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_BREATH* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_BREATH* 38)
(intern "*STAUS_FORWARD*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_FORWARD* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_FORWARD* 39)
(intern "*STAUS_MOVING*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_MOVING* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_MOVING* 40)
(intern "*STAUS_1F*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_1F* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_1F* 41)
(intern "*STAUS_2F*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_2F* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_2F* 42)
(intern "*STAUS_3F*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_3F* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_3F* 43)
(intern "*STAUS_4F*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_4F* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_4F* 44)
(intern "*STAUS_5F*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_5F* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_5F* 45)
(intern "*STAUS_6F*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_6F* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_6F* 46)
(intern "*STAUS_7F*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_7F* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_7F* 47)
(intern "*STAUS_8F*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_8F* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_8F* 48)
(intern "*STAUS_9F*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_9F* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_9F* 49)
(intern "*STAUS_10F*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_10F* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_10F* 50)
(intern "*STAUS_11F*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_11F* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_11F* 51)
(intern "*STAUS_12F*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_12F* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_12F* 52)
(intern "*STAUS_PRESS_BUTTON*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_PRESS_BUTTON* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_PRESS_BUTTON* 53)
(intern "*STAUS_ALL_LIGHT_OFF*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_ALL_LIGHT_OFF* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_ALL_LIGHT_OFF* 100)
(intern "*STAUS_ALL_LIGHT_ON*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_ALL_LIGHT_ON* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_ALL_LIGHT_ON* 101)
(intern "*STAUS_TWO_SIDE_BLUE*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_TWO_SIDE_BLUE* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_TWO_SIDE_BLUE* 80)
(intern "*STAUS_LEFT_SIDE_BLUE_BLINK*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_LEFT_SIDE_BLUE_BLINK* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_LEFT_SIDE_BLUE_BLINK* 81)
(intern "*STAUS_RIGHT_SIDE_BLUE_BLINK*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_RIGHT_SIDE_BLUE_BLINK* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_RIGHT_SIDE_BLUE_BLINK* 82)
(intern "*STAUS_TWO_SIDE_BREATH*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_TWO_SIDE_BREATH* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_TWO_SIDE_BREATH* 83)
(intern "*STAUS_TWO_SIDE_WATER_1*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_TWO_SIDE_WATER_1* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_TWO_SIDE_WATER_1* 84)
(intern "*STAUS_TWO_SIDE_WATER_2*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_TWO_SIDE_WATER_2* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_TWO_SIDE_WATER_2* 85)
(intern "*STAUS_TWO_SIDE_WATER_3*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_TWO_SIDE_WATER_3* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_TWO_SIDE_WATER_3* 86)
(intern "*STAUS_TWO_SIDE_WATER_4*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_TWO_SIDE_WATER_4* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_TWO_SIDE_WATER_4* 87)
(intern "*STAUS_TWO_SIDE_TALKING*" (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(shadow '*STAUS_TWO_SIDE_TALKING* (find-package "CAMPUSROVER_MSGS::HMISTATUS"))
(defconstant campusrover_msgs::HmiStatus::*STAUS_TWO_SIDE_TALKING* 88)

(defun campusrover_msgs::HmiStatus-to-symbol (const)
  (cond
        ((= const 1) 'campusrover_msgs::HmiStatus::*STAUS_BOOT*)
        ((= const 2) 'campusrover_msgs::HmiStatus::*STAUS_STANDBY*)
        ((= const 54) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_HELLO_HELLO*)
        ((= const 55) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_SCAN_QRCODE1*)
        ((= const 56) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_WRONG_NUMBER1*)
        ((= const 57) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_PUT_IN_MEALS*)
        ((= const 58) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_PRESS_BUTTON_AFTER_PUT_IN*)
        ((= const 59) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_MEAL_ARRIVED*)
        ((= const 60) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_DELIVERING_MEAL*)
        ((= const 61) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_SCAN_QRCODE2*)
        ((= const 62) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_WRONG_NUMBER2*)
        ((= const 3) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_TAKE_OUT_MEALS_1*)
        ((= const 91) 'campusrover_msgs::HmiStatus::*STAUS_WHITE_LIGHT_1*)
        ((= const 7) 'campusrover_msgs::HmiStatus::*STAUS_GREEN_LIGHT_1*)
        ((= const 11) 'campusrover_msgs::HmiStatus::*STAUS_BLUE_LIGHT_1*)
        ((= const 15) 'campusrover_msgs::HmiStatus::*STAUS_RED_LIGHT_1*)
        ((= const 4) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_TAKE_OUT_MEALS_2*)
        ((= const 92) 'campusrover_msgs::HmiStatus::*STAUS_WHITE_LIGHT_2*)
        ((= const 8) 'campusrover_msgs::HmiStatus::*STAUS_GREEN_LIGHT_2*)
        ((= const 12) 'campusrover_msgs::HmiStatus::*STAUS_BLUE_LIGHT_2*)
        ((= const 16) 'campusrover_msgs::HmiStatus::*STAUS_RED_LIGHT_2*)
        ((= const 5) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_TAKE_OUT_MEALS_3*)
        ((= const 93) 'campusrover_msgs::HmiStatus::*STAUS_WHITE_LIGHT_3*)
        ((= const 9) 'campusrover_msgs::HmiStatus::*STAUS_GREEN_LIGHT_3*)
        ((= const 13) 'campusrover_msgs::HmiStatus::*STAUS_BLUE_LIGHT_3*)
        ((= const 17) 'campusrover_msgs::HmiStatus::*STAUS_RED_LIGHT_3*)
        ((= const 6) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_TAKE_OUT_MEALS_4*)
        ((= const 94) 'campusrover_msgs::HmiStatus::*STAUS_WHITE_LIGHT_4*)
        ((= const 10) 'campusrover_msgs::HmiStatus::*STAUS_GREEN_LIGHT_4*)
        ((= const 14) 'campusrover_msgs::HmiStatus::*STAUS_BLUE_LIGHT_4*)
        ((= const 18) 'campusrover_msgs::HmiStatus::*STAUS_RED_LIGHT_4*)
        ((= const 63) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_PRESS_BUTTON_AFTER_TAKE_OUT*)
        ((= const 64) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_ENJOY_MEAL*)
        ((= const 65) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_HELLO*)
        ((= const 66) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_THANKS*)
        ((= const 67) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_GOODBYE*)
        ((= const 68) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_EXCUSE_ME*)
        ((= const 69) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_COMMING_THROUGH*)
        ((= const 70) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_BE_CAREFUL*)
        ((= const 19) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_WATCH_OUT*)
        ((= const 20) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_HELP_ME*)
        ((= const 21) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_OPEN_DOOR*)
        ((= const 22) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_HAVE_GOODDAY*)
        ((= const 23) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_WRONG_OPERATION*)
        ((= const 24) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_DO_IT_AGAIN*)
        ((= const 25) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_CORRECT_OR_NOT*)
        ((= const 26) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_LOW_BATTERY*)
        ((= const 27) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_SYSTEM_ERROR*)
        ((= const 28) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_CALL_STAFF*)
        ((= const 29) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_LOADING*)
        ((= const 30) 'campusrover_msgs::HmiStatus::*STAUS_SPEAK_WAIT*)
        ((= const 31) 'campusrover_msgs::HmiStatus::*STAUS_ENTER_ELEVATOR*)
        ((= const 32) 'campusrover_msgs::HmiStatus::*STAUS_LEAVING_ELEVATOR*)
        ((= const 34) 'campusrover_msgs::HmiStatus::*STAUS_TURN_RIGHT*)
        ((= const 35) 'campusrover_msgs::HmiStatus::*STAUS_TURN_LEFT*)
        ((= const 36) 'campusrover_msgs::HmiStatus::*STAUS_BLOCKED*)
        ((= const 37) 'campusrover_msgs::HmiStatus::*STAUS_REVERSE*)
        ((= const 38) 'campusrover_msgs::HmiStatus::*STAUS_BREATH*)
        ((= const 39) 'campusrover_msgs::HmiStatus::*STAUS_FORWARD*)
        ((= const 40) 'campusrover_msgs::HmiStatus::*STAUS_MOVING*)
        ((= const 41) 'campusrover_msgs::HmiStatus::*STAUS_1F*)
        ((= const 42) 'campusrover_msgs::HmiStatus::*STAUS_2F*)
        ((= const 43) 'campusrover_msgs::HmiStatus::*STAUS_3F*)
        ((= const 44) 'campusrover_msgs::HmiStatus::*STAUS_4F*)
        ((= const 45) 'campusrover_msgs::HmiStatus::*STAUS_5F*)
        ((= const 46) 'campusrover_msgs::HmiStatus::*STAUS_6F*)
        ((= const 47) 'campusrover_msgs::HmiStatus::*STAUS_7F*)
        ((= const 48) 'campusrover_msgs::HmiStatus::*STAUS_8F*)
        ((= const 49) 'campusrover_msgs::HmiStatus::*STAUS_9F*)
        ((= const 50) 'campusrover_msgs::HmiStatus::*STAUS_10F*)
        ((= const 51) 'campusrover_msgs::HmiStatus::*STAUS_11F*)
        ((= const 52) 'campusrover_msgs::HmiStatus::*STAUS_12F*)
        ((= const 53) 'campusrover_msgs::HmiStatus::*STAUS_PRESS_BUTTON*)
        ((= const 100) 'campusrover_msgs::HmiStatus::*STAUS_ALL_LIGHT_OFF*)
        ((= const 101) 'campusrover_msgs::HmiStatus::*STAUS_ALL_LIGHT_ON*)
        ((= const 80) 'campusrover_msgs::HmiStatus::*STAUS_TWO_SIDE_BLUE*)
        ((= const 81) 'campusrover_msgs::HmiStatus::*STAUS_LEFT_SIDE_BLUE_BLINK*)
        ((= const 82) 'campusrover_msgs::HmiStatus::*STAUS_RIGHT_SIDE_BLUE_BLINK*)
        ((= const 83) 'campusrover_msgs::HmiStatus::*STAUS_TWO_SIDE_BREATH*)
        ((= const 84) 'campusrover_msgs::HmiStatus::*STAUS_TWO_SIDE_WATER_1*)
        ((= const 85) 'campusrover_msgs::HmiStatus::*STAUS_TWO_SIDE_WATER_2*)
        ((= const 86) 'campusrover_msgs::HmiStatus::*STAUS_TWO_SIDE_WATER_3*)
        ((= const 87) 'campusrover_msgs::HmiStatus::*STAUS_TWO_SIDE_WATER_4*)
        ((= const 88) 'campusrover_msgs::HmiStatus::*STAUS_TWO_SIDE_TALKING*)
        (t nil)))

(defclass campusrover_msgs::HmiStatus
  :super ros::object
  :slots (_staus ))

(defmethod campusrover_msgs::HmiStatus
  (:init
   (&key
    ((:staus __staus) 0)
    )
   (send-super :init)
   (setq _staus (round __staus))
   self)
  (:staus
   (&optional __staus)
   (if __staus (setq _staus __staus)) _staus)
  (:serialization-length
   ()
   (+
    ;; uint16 _staus
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _staus
       (write-word _staus s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _staus
     (setq _staus (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get campusrover_msgs::HmiStatus :md5sum-) "3a5095bbf21b70be2bcdbef0adedeff8")
(setf (get campusrover_msgs::HmiStatus :datatype-) "campusrover_msgs/HmiStatus")
(setf (get campusrover_msgs::HmiStatus :definition-)
      "uint16 staus
uint16 STAUS_BOOT = 1
uint16 STAUS_STANDBY = 2
uint16 STAUS_SPEAK_HELLO_HELLO = 54
uint16 STAUS_SPEAK_SCAN_QRCODE1 = 55
uint16 STAUS_SPEAK_WRONG_NUMBER1 = 56
uint16 STAUS_SPEAK_PUT_IN_MEALS = 57
uint16 STAUS_SPEAK_PRESS_BUTTON_AFTER_PUT_IN = 58
uint16 STAUS_SPEAK_MEAL_ARRIVED = 59
uint16 STAUS_SPEAK_DELIVERING_MEAL = 60
uint16 STAUS_SPEAK_SCAN_QRCODE2 = 61
uint16 STAUS_SPEAK_WRONG_NUMBER2 = 62
uint16 STAUS_SPEAK_TAKE_OUT_MEALS_1 = 3
uint16 STAUS_WHITE_LIGHT_1 = 91 #container1 white
uint16 STAUS_GREEN_LIGHT_1 = 7 #blink
uint16 STAUS_BLUE_LIGHT_1 = 11 #open
uint16 STAUS_RED_LIGHT_1 = 15 #closd
uint16 STAUS_SPEAK_TAKE_OUT_MEALS_2 = 4
uint16 STAUS_WHITE_LIGHT_2 = 92
uint16 STAUS_GREEN_LIGHT_2 = 8
uint16 STAUS_BLUE_LIGHT_2 = 12
uint16 STAUS_RED_LIGHT_2 = 16
uint16 STAUS_SPEAK_TAKE_OUT_MEALS_3 = 5
uint16 STAUS_WHITE_LIGHT_3 = 93
uint16 STAUS_GREEN_LIGHT_3 = 9
uint16 STAUS_BLUE_LIGHT_3 = 13
uint16 STAUS_RED_LIGHT_3 = 17
uint16 STAUS_SPEAK_TAKE_OUT_MEALS_4 = 6
uint16 STAUS_WHITE_LIGHT_4 = 94
uint16 STAUS_GREEN_LIGHT_4 = 10
uint16 STAUS_BLUE_LIGHT_4 = 14
uint16 STAUS_RED_LIGHT_4 = 18
uint16 STAUS_SPEAK_PRESS_BUTTON_AFTER_TAKE_OUT = 63
uint16 STAUS_SPEAK_ENJOY_MEAL = 64
uint16 STAUS_SPEAK_HELLO = 65
uint16 STAUS_SPEAK_THANKS = 66
uint16 STAUS_SPEAK_GOODBYE = 67
uint16 STAUS_SPEAK_EXCUSE_ME = 68
uint16 STAUS_SPEAK_COMMING_THROUGH = 69
uint16 STAUS_SPEAK_BE_CAREFUL = 70
uint16 STAUS_SPEAK_WATCH_OUT = 19
uint16 STAUS_SPEAK_HELP_ME = 20
uint16 STAUS_SPEAK_OPEN_DOOR = 21
uint16 STAUS_SPEAK_HAVE_GOODDAY = 22
uint16 STAUS_SPEAK_WRONG_OPERATION = 23
uint16 STAUS_SPEAK_DO_IT_AGAIN = 24
uint16 STAUS_SPEAK_CORRECT_OR_NOT = 25
uint16 STAUS_SPEAK_LOW_BATTERY = 26
uint16 STAUS_SPEAK_SYSTEM_ERROR = 27
uint16 STAUS_SPEAK_CALL_STAFF = 28
uint16 STAUS_SPEAK_LOADING = 29
uint16 STAUS_SPEAK_WAIT = 30
uint16 STAUS_ENTER_ELEVATOR = 31
uint16 STAUS_LEAVING_ELEVATOR = 32
uint16 STAUS_TURN_RIGHT = 34
uint16 STAUS_TURN_LEFT = 35
uint16 STAUS_BLOCKED = 36
uint16 STAUS_REVERSE = 37
uint16 STAUS_BREATH = 38
uint16 STAUS_FORWARD = 39
uint16 STAUS_MOVING = 40
uint16 STAUS_1F = 41
uint16 STAUS_2F = 42
uint16 STAUS_3F = 43
uint16 STAUS_4F = 44
uint16 STAUS_5F = 45
uint16 STAUS_6F = 46
uint16 STAUS_7F = 47
uint16 STAUS_8F = 48
uint16 STAUS_9F = 49
uint16 STAUS_10F = 50
uint16 STAUS_11F = 51
uint16 STAUS_12F = 52
uint16 STAUS_PRESS_BUTTON = 53
uint16 STAUS_ALL_LIGHT_OFF = 100
uint16 STAUS_ALL_LIGHT_ON = 101
uint16 STAUS_TWO_SIDE_BLUE = 80
uint16 STAUS_LEFT_SIDE_BLUE_BLINK = 81
uint16 STAUS_RIGHT_SIDE_BLUE_BLINK = 82
uint16 STAUS_TWO_SIDE_BREATH = 83
uint16 STAUS_TWO_SIDE_WATER_1 = 84
uint16 STAUS_TWO_SIDE_WATER_2 = 85
uint16 STAUS_TWO_SIDE_WATER_3 = 86
uint16 STAUS_TWO_SIDE_WATER_4 = 87
uint16 STAUS_TWO_SIDE_TALKING = 88
")



(provide :campusrover_msgs/HmiStatus "3a5095bbf21b70be2bcdbef0adedeff8")


