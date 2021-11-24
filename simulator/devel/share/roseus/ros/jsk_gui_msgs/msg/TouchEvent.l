;; Auto-generated. Do not edit!


(when (boundp 'jsk_gui_msgs::TouchEvent)
  (if (not (find-package "JSK_GUI_MSGS"))
    (make-package "JSK_GUI_MSGS"))
  (shadow 'TouchEvent (find-package "JSK_GUI_MSGS")))
(unless (find-package "JSK_GUI_MSGS::TOUCHEVENT")
  (make-package "JSK_GUI_MSGS::TOUCHEVENT"))

(in-package "ROS")
;;//! \htmlinclude TouchEvent.msg.html


(intern "*DOWN*" (find-package "JSK_GUI_MSGS::TOUCHEVENT"))
(shadow '*DOWN* (find-package "JSK_GUI_MSGS::TOUCHEVENT"))
(defconstant jsk_gui_msgs::TouchEvent::*DOWN* 0)
(intern "*UP*" (find-package "JSK_GUI_MSGS::TOUCHEVENT"))
(shadow '*UP* (find-package "JSK_GUI_MSGS::TOUCHEVENT"))
(defconstant jsk_gui_msgs::TouchEvent::*UP* 1)
(intern "*MOVE*" (find-package "JSK_GUI_MSGS::TOUCHEVENT"))
(shadow '*MOVE* (find-package "JSK_GUI_MSGS::TOUCHEVENT"))
(defconstant jsk_gui_msgs::TouchEvent::*MOVE* 2)

(defun jsk_gui_msgs::TouchEvent-to-symbol (const)
  (cond
        ((= const 0) 'jsk_gui_msgs::TouchEvent::*DOWN*)
        ((= const 1) 'jsk_gui_msgs::TouchEvent::*UP*)
        ((= const 2) 'jsk_gui_msgs::TouchEvent::*MOVE*)
        (t nil)))

(defclass jsk_gui_msgs::TouchEvent
  :super ros::object
  :slots (_state _x _y _w _h ))

(defmethod jsk_gui_msgs::TouchEvent
  (:init
   (&key
    ((:state __state) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:w __w) 0.0)
    ((:h __h) 0.0)
    )
   (send-super :init)
   (setq _state (round __state))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _w (float __w))
   (setq _h (float __h))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:h
   (&optional __h)
   (if __h (setq _h __h)) _h)
  (:serialization-length
   ()
   (+
    ;; byte _state
    1
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _w
    4
    ;; float32 _h
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; byte _state
       (write-byte _state s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _w
       (sys::poke _w (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _h
       (sys::poke _h (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; byte _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _state 127) (setq _state (- _state 256)))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _w
     (setq _w (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _h
     (setq _h (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get jsk_gui_msgs::TouchEvent :md5sum-) "f074642ed1ad51ea5afc186cab8aaca1")
(setf (get jsk_gui_msgs::TouchEvent :datatype-) "jsk_gui_msgs/TouchEvent")
(setf (get jsk_gui_msgs::TouchEvent :definition-)
      "byte DOWN=0
byte UP=1
byte MOVE=2

byte state
float32 x
float32 y
float32 w
float32 h
")



(provide :jsk_gui_msgs/TouchEvent "f074642ed1ad51ea5afc186cab8aaca1")


