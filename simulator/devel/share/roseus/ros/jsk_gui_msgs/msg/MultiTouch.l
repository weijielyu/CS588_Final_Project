;; Auto-generated. Do not edit!


(when (boundp 'jsk_gui_msgs::MultiTouch)
  (if (not (find-package "JSK_GUI_MSGS"))
    (make-package "JSK_GUI_MSGS"))
  (shadow 'MultiTouch (find-package "JSK_GUI_MSGS")))
(unless (find-package "JSK_GUI_MSGS::MULTITOUCH")
  (make-package "JSK_GUI_MSGS::MULTITOUCH"))

(in-package "ROS")
;;//! \htmlinclude MultiTouch.msg.html


(defclass jsk_gui_msgs::MultiTouch
  :super ros::object
  :slots (_touches ))

(defmethod jsk_gui_msgs::MultiTouch
  (:init
   (&key
    ((:touches __touches) ())
    )
   (send-super :init)
   (setq _touches __touches)
   self)
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
    ;; jsk_gui_msgs/Touch[] _touches
    (apply #'+ (send-all _touches :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; jsk_gui_msgs/Touch[] _touches
     (write-long (length _touches) s)
     (dolist (elem _touches)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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

(setf (get jsk_gui_msgs::MultiTouch :md5sum-) "9f4a309588ef669e69a71aa5601ea65e")
(setf (get jsk_gui_msgs::MultiTouch :datatype-) "jsk_gui_msgs/MultiTouch")
(setf (get jsk_gui_msgs::MultiTouch :definition-)
      "Touch[] touches
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



(provide :jsk_gui_msgs/MultiTouch "9f4a309588ef669e69a71aa5601ea65e")


