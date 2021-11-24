;; Auto-generated. Do not edit!


(when (boundp 'jsk_rviz_plugins::OverlayMenu)
  (if (not (find-package "JSK_RVIZ_PLUGINS"))
    (make-package "JSK_RVIZ_PLUGINS"))
  (shadow 'OverlayMenu (find-package "JSK_RVIZ_PLUGINS")))
(unless (find-package "JSK_RVIZ_PLUGINS::OVERLAYMENU")
  (make-package "JSK_RVIZ_PLUGINS::OVERLAYMENU"))

(in-package "ROS")
;;//! \htmlinclude OverlayMenu.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ACTION_SELECT*" (find-package "JSK_RVIZ_PLUGINS::OVERLAYMENU"))
(shadow '*ACTION_SELECT* (find-package "JSK_RVIZ_PLUGINS::OVERLAYMENU"))
(defconstant jsk_rviz_plugins::OverlayMenu::*ACTION_SELECT* 0)
(intern "*ACTION_CLOSE*" (find-package "JSK_RVIZ_PLUGINS::OVERLAYMENU"))
(shadow '*ACTION_CLOSE* (find-package "JSK_RVIZ_PLUGINS::OVERLAYMENU"))
(defconstant jsk_rviz_plugins::OverlayMenu::*ACTION_CLOSE* 1)

(defun jsk_rviz_plugins::OverlayMenu-to-symbol (const)
  (cond
        ((= const 0) 'jsk_rviz_plugins::OverlayMenu::*ACTION_SELECT*)
        ((= const 1) 'jsk_rviz_plugins::OverlayMenu::*ACTION_CLOSE*)
        (t nil)))

(defclass jsk_rviz_plugins::OverlayMenu
  :super ros::object
  :slots (_action _current_index _menus _title _bg_color _fg_color ))

(defmethod jsk_rviz_plugins::OverlayMenu
  (:init
   (&key
    ((:action __action) 0)
    ((:current_index __current_index) 0)
    ((:menus __menus) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:title __title) "")
    ((:bg_color __bg_color) (instance std_msgs::ColorRGBA :init))
    ((:fg_color __fg_color) (instance std_msgs::ColorRGBA :init))
    )
   (send-super :init)
   (setq _action (round __action))
   (setq _current_index (round __current_index))
   (setq _menus __menus)
   (setq _title (string __title))
   (setq _bg_color __bg_color)
   (setq _fg_color __fg_color)
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:current_index
   (&optional __current_index)
   (if __current_index (setq _current_index __current_index)) _current_index)
  (:menus
   (&optional __menus)
   (if __menus (setq _menus __menus)) _menus)
  (:title
   (&optional __title)
   (if __title (setq _title __title)) _title)
  (:bg_color
   (&rest __bg_color)
   (if (keywordp (car __bg_color))
       (send* _bg_color __bg_color)
     (progn
       (if __bg_color (setq _bg_color (car __bg_color)))
       _bg_color)))
  (:fg_color
   (&rest __fg_color)
   (if (keywordp (car __fg_color))
       (send* _fg_color __fg_color)
     (progn
       (if __fg_color (setq _fg_color (car __fg_color)))
       _fg_color)))
  (:serialization-length
   ()
   (+
    ;; int32 _action
    4
    ;; uint32 _current_index
    4
    ;; string[] _menus
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _menus)) 4
    ;; string _title
    4 (length _title)
    ;; std_msgs/ColorRGBA _bg_color
    (send _bg_color :serialization-length)
    ;; std_msgs/ColorRGBA _fg_color
    (send _fg_color :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _action
       (write-long _action s)
     ;; uint32 _current_index
       (write-long _current_index s)
     ;; string[] _menus
     (write-long (length _menus) s)
     (dolist (elem _menus)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _title
       (write-long (length _title) s) (princ _title s)
     ;; std_msgs/ColorRGBA _bg_color
       (send _bg_color :serialize s)
     ;; std_msgs/ColorRGBA _fg_color
       (send _fg_color :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _action
     (setq _action (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _current_index
     (setq _current_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string[] _menus
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _menus (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _menus i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _title
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _title (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; std_msgs/ColorRGBA _bg_color
     (send _bg_color :deserialize buf ptr-) (incf ptr- (send _bg_color :serialization-length))
   ;; std_msgs/ColorRGBA _fg_color
     (send _fg_color :deserialize buf ptr-) (incf ptr- (send _fg_color :serialization-length))
   ;;
   self)
  )

(setf (get jsk_rviz_plugins::OverlayMenu :md5sum-) "517426ba068ca022d86cf2c56c98889f")
(setf (get jsk_rviz_plugins::OverlayMenu :datatype-) "jsk_rviz_plugins/OverlayMenu")
(setf (get jsk_rviz_plugins::OverlayMenu :definition-)
      "int32 ACTION_SELECT=0
int32 ACTION_CLOSE=1
int32 action
uint32 current_index
string[] menus
string title
std_msgs/ColorRGBA bg_color
std_msgs/ColorRGBA fg_color

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :jsk_rviz_plugins/OverlayMenu "517426ba068ca022d86cf2c56c98889f")


