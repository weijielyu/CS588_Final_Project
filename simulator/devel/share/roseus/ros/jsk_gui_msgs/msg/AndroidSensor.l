;; Auto-generated. Do not edit!


(when (boundp 'jsk_gui_msgs::AndroidSensor)
  (if (not (find-package "JSK_GUI_MSGS"))
    (make-package "JSK_GUI_MSGS"))
  (shadow 'AndroidSensor (find-package "JSK_GUI_MSGS")))
(unless (find-package "JSK_GUI_MSGS::ANDROIDSENSOR")
  (make-package "JSK_GUI_MSGS::ANDROIDSENSOR"))

(in-package "ROS")
;;//! \htmlinclude AndroidSensor.msg.html


(defclass jsk_gui_msgs::AndroidSensor
  :super ros::object
  :slots (_accel_x _accel_y _accel_z _orientation_x _orientation_y _orientation_z ))

(defmethod jsk_gui_msgs::AndroidSensor
  (:init
   (&key
    ((:accel_x __accel_x) 0.0)
    ((:accel_y __accel_y) 0.0)
    ((:accel_z __accel_z) 0.0)
    ((:orientation_x __orientation_x) 0.0)
    ((:orientation_y __orientation_y) 0.0)
    ((:orientation_z __orientation_z) 0.0)
    )
   (send-super :init)
   (setq _accel_x (float __accel_x))
   (setq _accel_y (float __accel_y))
   (setq _accel_z (float __accel_z))
   (setq _orientation_x (float __orientation_x))
   (setq _orientation_y (float __orientation_y))
   (setq _orientation_z (float __orientation_z))
   self)
  (:accel_x
   (&optional __accel_x)
   (if __accel_x (setq _accel_x __accel_x)) _accel_x)
  (:accel_y
   (&optional __accel_y)
   (if __accel_y (setq _accel_y __accel_y)) _accel_y)
  (:accel_z
   (&optional __accel_z)
   (if __accel_z (setq _accel_z __accel_z)) _accel_z)
  (:orientation_x
   (&optional __orientation_x)
   (if __orientation_x (setq _orientation_x __orientation_x)) _orientation_x)
  (:orientation_y
   (&optional __orientation_y)
   (if __orientation_y (setq _orientation_y __orientation_y)) _orientation_y)
  (:orientation_z
   (&optional __orientation_z)
   (if __orientation_z (setq _orientation_z __orientation_z)) _orientation_z)
  (:serialization-length
   ()
   (+
    ;; float64 _accel_x
    8
    ;; float64 _accel_y
    8
    ;; float64 _accel_z
    8
    ;; float64 _orientation_x
    8
    ;; float64 _orientation_y
    8
    ;; float64 _orientation_z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _accel_x
       (sys::poke _accel_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _accel_y
       (sys::poke _accel_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _accel_z
       (sys::poke _accel_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _orientation_x
       (sys::poke _orientation_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _orientation_y
       (sys::poke _orientation_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _orientation_z
       (sys::poke _orientation_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _accel_x
     (setq _accel_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _accel_y
     (setq _accel_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _accel_z
     (setq _accel_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _orientation_x
     (setq _orientation_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _orientation_y
     (setq _orientation_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _orientation_z
     (setq _orientation_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get jsk_gui_msgs::AndroidSensor :md5sum-) "d832dbe3be7e7f061d963f2188f1a407")
(setf (get jsk_gui_msgs::AndroidSensor :datatype-) "jsk_gui_msgs/AndroidSensor")
(setf (get jsk_gui_msgs::AndroidSensor :definition-)
      "# sonsor for Tablet
float64 accel_x
float64 accel_y
float64 accel_z
float64 orientation_x
float64 orientation_y
float64 orientation_z



")



(provide :jsk_gui_msgs/AndroidSensor "d832dbe3be7e7f061d963f2188f1a407")


