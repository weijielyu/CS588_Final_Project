;; Auto-generated. Do not edit!


(when (boundp 'jsk_gui_msgs::Action)
  (if (not (find-package "JSK_GUI_MSGS"))
    (make-package "JSK_GUI_MSGS"))
  (shadow 'Action (find-package "JSK_GUI_MSGS")))
(unless (find-package "JSK_GUI_MSGS::ACTION")
  (make-package "JSK_GUI_MSGS::ACTION"))

(in-package "ROS")
;;//! \htmlinclude Action.msg.html


(intern "*RARMID*" (find-package "JSK_GUI_MSGS::ACTION"))
(shadow '*RARMID* (find-package "JSK_GUI_MSGS::ACTION"))
(defconstant jsk_gui_msgs::Action::*RARMID* 0)
(intern "*LARMID*" (find-package "JSK_GUI_MSGS::ACTION"))
(shadow '*LARMID* (find-package "JSK_GUI_MSGS::ACTION"))
(defconstant jsk_gui_msgs::Action::*LARMID* 1)

(defun jsk_gui_msgs::Action-to-symbol (const)
  (cond
        ((= const 0) 'jsk_gui_msgs::Action::*RARMID*)
        ((= const 1) 'jsk_gui_msgs::Action::*LARMID*)
        (t nil)))

(defclass jsk_gui_msgs::Action
  :super ros::object
  :slots (_task_name _arm_id _state _state_value _direction _direction_value _touch_x _touch_y ))

(defmethod jsk_gui_msgs::Action
  (:init
   (&key
    ((:task_name __task_name) "")
    ((:arm_id __arm_id) 0)
    ((:state __state) "")
    ((:state_value __state_value) 0.0)
    ((:direction __direction) "")
    ((:direction_value __direction_value) 0.0)
    ((:touch_x __touch_x) 0)
    ((:touch_y __touch_y) 0)
    )
   (send-super :init)
   (setq _task_name (string __task_name))
   (setq _arm_id (round __arm_id))
   (setq _state (string __state))
   (setq _state_value (float __state_value))
   (setq _direction (string __direction))
   (setq _direction_value (float __direction_value))
   (setq _touch_x (round __touch_x))
   (setq _touch_y (round __touch_y))
   self)
  (:task_name
   (&optional __task_name)
   (if __task_name (setq _task_name __task_name)) _task_name)
  (:arm_id
   (&optional __arm_id)
   (if __arm_id (setq _arm_id __arm_id)) _arm_id)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:state_value
   (&optional __state_value)
   (if __state_value (setq _state_value __state_value)) _state_value)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:direction_value
   (&optional __direction_value)
   (if __direction_value (setq _direction_value __direction_value)) _direction_value)
  (:touch_x
   (&optional __touch_x)
   (if __touch_x (setq _touch_x __touch_x)) _touch_x)
  (:touch_y
   (&optional __touch_y)
   (if __touch_y (setq _touch_y __touch_y)) _touch_y)
  (:serialization-length
   ()
   (+
    ;; string _task_name
    4 (length _task_name)
    ;; int64 _arm_id
    8
    ;; string _state
    4 (length _state)
    ;; float64 _state_value
    8
    ;; string _direction
    4 (length _direction)
    ;; float64 _direction_value
    8
    ;; int64 _touch_x
    8
    ;; int64 _touch_y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _task_name
       (write-long (length _task_name) s) (princ _task_name s)
     ;; int64 _arm_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _arm_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _arm_id) (= (length (_arm_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_arm_id . bv) 0) 0) s)
              (write-long (ash (elt (_arm_id . bv) 1) -1) s))
             ((and (class _arm_id) (= (length (_arm_id . bv)) 1)) ;; big1
              (write-long (elt (_arm_id . bv) 0) s)
              (write-long (if (>= _arm_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _arm_id s)(write-long (if (>= _arm_id 0) 0 #xffffffff) s)))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; float64 _state_value
       (sys::poke _state_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _direction
       (write-long (length _direction) s) (princ _direction s)
     ;; float64 _direction_value
       (sys::poke _direction_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _touch_x
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _touch_x (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _touch_x) (= (length (_touch_x . bv)) 2)) ;; bignum
              (write-long (ash (elt (_touch_x . bv) 0) 0) s)
              (write-long (ash (elt (_touch_x . bv) 1) -1) s))
             ((and (class _touch_x) (= (length (_touch_x . bv)) 1)) ;; big1
              (write-long (elt (_touch_x . bv) 0) s)
              (write-long (if (>= _touch_x 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _touch_x s)(write-long (if (>= _touch_x 0) 0 #xffffffff) s)))
     ;; int64 _touch_y
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _touch_y (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _touch_y) (= (length (_touch_y . bv)) 2)) ;; bignum
              (write-long (ash (elt (_touch_y . bv) 0) 0) s)
              (write-long (ash (elt (_touch_y . bv) 1) -1) s))
             ((and (class _touch_y) (= (length (_touch_y . bv)) 1)) ;; big1
              (write-long (elt (_touch_y . bv) 0) s)
              (write-long (if (>= _touch_y 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _touch_y s)(write-long (if (>= _touch_y 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _task_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _arm_id
#+(or :alpha :irix6 :x86_64)
      (setf _arm_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _arm_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _state_value
     (setq _state_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _direction_value
     (setq _direction_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _touch_x
#+(or :alpha :irix6 :x86_64)
      (setf _touch_x (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _touch_x (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _touch_y
#+(or :alpha :irix6 :x86_64)
      (setf _touch_y (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _touch_y (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get jsk_gui_msgs::Action :md5sum-) "d81dc8475ff89ce7097d2e73ebfc2591")
(setf (get jsk_gui_msgs::Action :datatype-) "jsk_gui_msgs/Action")
(setf (get jsk_gui_msgs::Action :definition-)
      "byte RARMID=0
byte LARMID=1

# task: push, pick, open, slide, MoveNeck, MoveBase
string task_name

# selection: button names
# string selection_name

# arm: :rarm, :lsrm
int64 arm_id

# state of touch: touch, pick, pinch, sweep
# for debugging
string state
# value of state
float64 state_value

# direction: up, down, left, right
string direction
# value of direction, degree
float64 direction_value

int64 touch_x
int64 touch_y

# Example
#  push: touches[0].x, touches[0].y, task_name, arm_id
#  open: touches[0 1 2].x, touches[0 1 2].y, task_name, arm_id
#  slide: touches[0 1 2].x, touches[0 1 2].y, task_name, arm_id
#  move_neck: task_name, direction, direction_value
#  move_base: task_name, direction, direction_value
")



(provide :jsk_gui_msgs/Action "d81dc8475ff89ce7097d2e73ebfc2591")


