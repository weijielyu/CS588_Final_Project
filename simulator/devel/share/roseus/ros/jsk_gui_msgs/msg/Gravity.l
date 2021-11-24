;; Auto-generated. Do not edit!


(when (boundp 'jsk_gui_msgs::Gravity)
  (if (not (find-package "JSK_GUI_MSGS"))
    (make-package "JSK_GUI_MSGS"))
  (shadow 'Gravity (find-package "JSK_GUI_MSGS")))
(unless (find-package "JSK_GUI_MSGS::GRAVITY")
  (make-package "JSK_GUI_MSGS::GRAVITY"))

(in-package "ROS")
;;//! \htmlinclude Gravity.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass jsk_gui_msgs::Gravity
  :super ros::object
  :slots (_gravity ))

(defmethod jsk_gui_msgs::Gravity
  (:init
   (&key
    ((:gravity __gravity) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _gravity __gravity)
   self)
  (:gravity
   (&rest __gravity)
   (if (keywordp (car __gravity))
       (send* _gravity __gravity)
     (progn
       (if __gravity (setq _gravity (car __gravity)))
       _gravity)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _gravity
    (send _gravity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _gravity
       (send _gravity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _gravity
     (send _gravity :deserialize buf ptr-) (incf ptr- (send _gravity :serialization-length))
   ;;
   self)
  )

(setf (get jsk_gui_msgs::Gravity :md5sum-) "86facaf836997cbbc4faee170616f59e")
(setf (get jsk_gui_msgs::Gravity :datatype-) "jsk_gui_msgs/Gravity")
(setf (get jsk_gui_msgs::Gravity :definition-)
      "geometry_msgs/Vector3 gravity
================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :jsk_gui_msgs/Gravity "86facaf836997cbbc4faee170616f59e")


