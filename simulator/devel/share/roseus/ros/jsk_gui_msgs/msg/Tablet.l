;; Auto-generated. Do not edit!


(when (boundp 'jsk_gui_msgs::Tablet)
  (if (not (find-package "JSK_GUI_MSGS"))
    (make-package "JSK_GUI_MSGS"))
  (shadow 'Tablet (find-package "JSK_GUI_MSGS")))
(unless (find-package "JSK_GUI_MSGS::TABLET")
  (make-package "JSK_GUI_MSGS::TABLET"))

(in-package "ROS")
;;//! \htmlinclude Tablet.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass jsk_gui_msgs::Tablet
  :super ros::object
  :slots (_header _hardware_name _hardware_id _action _sensor _touches ))

(defmethod jsk_gui_msgs::Tablet
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:hardware_name __hardware_name) "")
    ((:hardware_id __hardware_id) "")
    ((:action __action) (instance jsk_gui_msgs::Action :init))
    ((:sensor __sensor) (instance jsk_gui_msgs::DeviceSensor :init))
    ((:touches __touches) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _hardware_name (string __hardware_name))
   (setq _hardware_id (string __hardware_id))
   (setq _action __action)
   (setq _sensor __sensor)
   (setq _touches __touches)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:hardware_name
   (&optional __hardware_name)
   (if __hardware_name (setq _hardware_name __hardware_name)) _hardware_name)
  (:hardware_id
   (&optional __hardware_id)
   (if __hardware_id (setq _hardware_id __hardware_id)) _hardware_id)
  (:action
   (&rest __action)
   (if (keywordp (car __action))
       (send* _action __action)
     (progn
       (if __action (setq _action (car __action)))
       _action)))
  (:sensor
   (&rest __sensor)
   (if (keywordp (car __sensor))
       (send* _sensor __sensor)
     (progn
       (if __sensor (setq _sensor (car __sensor)))
       _sensor)))
  (:touches
   (&rest __touches)
   (if (keywordp (car __touches))
       (send* _touches __touches)
     (progn
       (if __touches (setq _touches (car __touches)))
       _touches)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _hardware_name
    4 (length _hardware_name)
    ;; string _hardware_id
    4 (length _hardware_id)
    ;; jsk_gui_msgs/Action _action
    (send _action :serialization-length)
    ;; jsk_gui_msgs/DeviceSensor _sensor
    (send _sensor :serialization-length)
    ;; jsk_gui_msgs/Touch[] _touches
    (apply #'+ (send-all _touches :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _hardware_name
       (write-long (length _hardware_name) s) (princ _hardware_name s)
     ;; string _hardware_id
       (write-long (length _hardware_id) s) (princ _hardware_id s)
     ;; jsk_gui_msgs/Action _action
       (send _action :serialize s)
     ;; jsk_gui_msgs/DeviceSensor _sensor
       (send _sensor :serialize s)
     ;; jsk_gui_msgs/Touch[] _touches
     (write-long (length _touches) s)
     (dolist (elem _touches)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _hardware_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _hardware_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _hardware_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _hardware_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; jsk_gui_msgs/Action _action
     (send _action :deserialize buf ptr-) (incf ptr- (send _action :serialization-length))
   ;; jsk_gui_msgs/DeviceSensor _sensor
     (send _sensor :deserialize buf ptr-) (incf ptr- (send _sensor :serialization-length))
   ;; jsk_gui_msgs/Touch[] _touches
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _touches (let (r) (dotimes (i n) (push (instance jsk_gui_msgs::Touch :init) r)) r))
     (dolist (elem- _touches)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get jsk_gui_msgs::Tablet :md5sum-) "0bab196c7b214826d8c27d7bd5f924f6")
(setf (get jsk_gui_msgs::Tablet :datatype-) "jsk_gui_msgs/Tablet")
(setf (get jsk_gui_msgs::Tablet :definition-)
      "Header header
# hardware_namel: iPad, Android, other mobile
string hardware_name
string hardware_id
Action action
DeviceSensor sensor
Touch[] touches
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: jsk_gui_msgs/Action
byte RARMID=0
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
================================================================================
MSG: jsk_gui_msgs/DeviceSensor
float64 temperature
float64 relative_humidity
float64 light
float64 pressure
float64 proximity




================================================================================
MSG: jsk_gui_msgs/Touch
# finger_id
int64 finger_id
# touch point(screen point)
float64 x
float64 y
# based image size (usually not needed)
int64 image_width
int64 image_height
")



(provide :jsk_gui_msgs/Tablet "0bab196c7b214826d8c27d7bd5f924f6")


