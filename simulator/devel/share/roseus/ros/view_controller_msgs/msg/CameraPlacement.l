;; Auto-generated. Do not edit!


(when (boundp 'view_controller_msgs::CameraPlacement)
  (if (not (find-package "VIEW_CONTROLLER_MSGS"))
    (make-package "VIEW_CONTROLLER_MSGS"))
  (shadow 'CameraPlacement (find-package "VIEW_CONTROLLER_MSGS")))
(unless (find-package "VIEW_CONTROLLER_MSGS::CAMERAPLACEMENT")
  (make-package "VIEW_CONTROLLER_MSGS::CAMERAPLACEMENT"))

(in-package "ROS")
;;//! \htmlinclude CameraPlacement.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*LINEAR*" (find-package "VIEW_CONTROLLER_MSGS::CAMERAPLACEMENT"))
(shadow '*LINEAR* (find-package "VIEW_CONTROLLER_MSGS::CAMERAPLACEMENT"))
(defconstant view_controller_msgs::CameraPlacement::*LINEAR* 0)
(intern "*SPHERICAL*" (find-package "VIEW_CONTROLLER_MSGS::CAMERAPLACEMENT"))
(shadow '*SPHERICAL* (find-package "VIEW_CONTROLLER_MSGS::CAMERAPLACEMENT"))
(defconstant view_controller_msgs::CameraPlacement::*SPHERICAL* 1)
(intern "*NO_CHANGE*" (find-package "VIEW_CONTROLLER_MSGS::CAMERAPLACEMENT"))
(shadow '*NO_CHANGE* (find-package "VIEW_CONTROLLER_MSGS::CAMERAPLACEMENT"))
(defconstant view_controller_msgs::CameraPlacement::*NO_CHANGE* 0)
(intern "*ORBIT*" (find-package "VIEW_CONTROLLER_MSGS::CAMERAPLACEMENT"))
(shadow '*ORBIT* (find-package "VIEW_CONTROLLER_MSGS::CAMERAPLACEMENT"))
(defconstant view_controller_msgs::CameraPlacement::*ORBIT* 1)
(intern "*FPS*" (find-package "VIEW_CONTROLLER_MSGS::CAMERAPLACEMENT"))
(shadow '*FPS* (find-package "VIEW_CONTROLLER_MSGS::CAMERAPLACEMENT"))
(defconstant view_controller_msgs::CameraPlacement::*FPS* 2)

(defun view_controller_msgs::CameraPlacement-to-symbol (const)
  (cond
        ((= const 0) 'view_controller_msgs::CameraPlacement::*LINEAR*)
        ((= const 1) 'view_controller_msgs::CameraPlacement::*SPHERICAL*)
        ((= const 0) 'view_controller_msgs::CameraPlacement::*NO_CHANGE*)
        ((= const 1) 'view_controller_msgs::CameraPlacement::*ORBIT*)
        ((= const 2) 'view_controller_msgs::CameraPlacement::*FPS*)
        (t nil)))

(defclass view_controller_msgs::CameraPlacement
  :super ros::object
  :slots (_interpolation_mode _target_frame _time_from_start _eye _focus _up _mouse_interaction_mode _interaction_disabled _allow_free_yaw_axis ))

(defmethod view_controller_msgs::CameraPlacement
  (:init
   (&key
    ((:interpolation_mode __interpolation_mode) 0)
    ((:target_frame __target_frame) "")
    ((:time_from_start __time_from_start) (instance ros::time :init))
    ((:eye __eye) (instance geometry_msgs::PointStamped :init))
    ((:focus __focus) (instance geometry_msgs::PointStamped :init))
    ((:up __up) (instance geometry_msgs::Vector3Stamped :init))
    ((:mouse_interaction_mode __mouse_interaction_mode) 0)
    ((:interaction_disabled __interaction_disabled) nil)
    ((:allow_free_yaw_axis __allow_free_yaw_axis) nil)
    )
   (send-super :init)
   (setq _interpolation_mode (round __interpolation_mode))
   (setq _target_frame (string __target_frame))
   (setq _time_from_start __time_from_start)
   (setq _eye __eye)
   (setq _focus __focus)
   (setq _up __up)
   (setq _mouse_interaction_mode (round __mouse_interaction_mode))
   (setq _interaction_disabled __interaction_disabled)
   (setq _allow_free_yaw_axis __allow_free_yaw_axis)
   self)
  (:interpolation_mode
   (&optional __interpolation_mode)
   (if __interpolation_mode (setq _interpolation_mode __interpolation_mode)) _interpolation_mode)
  (:target_frame
   (&optional __target_frame)
   (if __target_frame (setq _target_frame __target_frame)) _target_frame)
  (:time_from_start
   (&optional __time_from_start)
   (if __time_from_start (setq _time_from_start __time_from_start)) _time_from_start)
  (:eye
   (&rest __eye)
   (if (keywordp (car __eye))
       (send* _eye __eye)
     (progn
       (if __eye (setq _eye (car __eye)))
       _eye)))
  (:focus
   (&rest __focus)
   (if (keywordp (car __focus))
       (send* _focus __focus)
     (progn
       (if __focus (setq _focus (car __focus)))
       _focus)))
  (:up
   (&rest __up)
   (if (keywordp (car __up))
       (send* _up __up)
     (progn
       (if __up (setq _up (car __up)))
       _up)))
  (:mouse_interaction_mode
   (&optional __mouse_interaction_mode)
   (if __mouse_interaction_mode (setq _mouse_interaction_mode __mouse_interaction_mode)) _mouse_interaction_mode)
  (:interaction_disabled
   (&optional (__interaction_disabled :null))
   (if (not (eq __interaction_disabled :null)) (setq _interaction_disabled __interaction_disabled)) _interaction_disabled)
  (:allow_free_yaw_axis
   (&optional (__allow_free_yaw_axis :null))
   (if (not (eq __allow_free_yaw_axis :null)) (setq _allow_free_yaw_axis __allow_free_yaw_axis)) _allow_free_yaw_axis)
  (:serialization-length
   ()
   (+
    ;; uint8 _interpolation_mode
    1
    ;; string _target_frame
    4 (length _target_frame)
    ;; duration _time_from_start
    8
    ;; geometry_msgs/PointStamped _eye
    (send _eye :serialization-length)
    ;; geometry_msgs/PointStamped _focus
    (send _focus :serialization-length)
    ;; geometry_msgs/Vector3Stamped _up
    (send _up :serialization-length)
    ;; uint8 _mouse_interaction_mode
    1
    ;; bool _interaction_disabled
    1
    ;; bool _allow_free_yaw_axis
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _interpolation_mode
       (write-byte _interpolation_mode s)
     ;; string _target_frame
       (write-long (length _target_frame) s) (princ _target_frame s)
     ;; duration _time_from_start
       (write-long (send _time_from_start :sec) s) (write-long (send _time_from_start :nsec) s)
     ;; geometry_msgs/PointStamped _eye
       (send _eye :serialize s)
     ;; geometry_msgs/PointStamped _focus
       (send _focus :serialize s)
     ;; geometry_msgs/Vector3Stamped _up
       (send _up :serialize s)
     ;; uint8 _mouse_interaction_mode
       (write-byte _mouse_interaction_mode s)
     ;; bool _interaction_disabled
       (if _interaction_disabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _allow_free_yaw_axis
       (if _allow_free_yaw_axis (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _interpolation_mode
     (setq _interpolation_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _target_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; duration _time_from_start
     (send _time_from_start :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_from_start :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/PointStamped _eye
     (send _eye :deserialize buf ptr-) (incf ptr- (send _eye :serialization-length))
   ;; geometry_msgs/PointStamped _focus
     (send _focus :deserialize buf ptr-) (incf ptr- (send _focus :serialization-length))
   ;; geometry_msgs/Vector3Stamped _up
     (send _up :deserialize buf ptr-) (incf ptr- (send _up :serialization-length))
   ;; uint8 _mouse_interaction_mode
     (setq _mouse_interaction_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _interaction_disabled
     (setq _interaction_disabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _allow_free_yaw_axis
     (setq _allow_free_yaw_axis (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get view_controller_msgs::CameraPlacement :md5sum-) "38be6efe15caa86e2c835dd05ab88393")
(setf (get view_controller_msgs::CameraPlacement :datatype-) "view_controller_msgs/CameraPlacement")
(setf (get view_controller_msgs::CameraPlacement :definition-)
      "# The interpolation mode to use during this step
uint8 interpolation_mode
uint8 LINEAR    = 0 # Positions will be linearly interpolated
uint8 SPHERICAL = 1 # Position and orientation will be interpolated in a spherical sense.

# Sets this as the camera attached (fixed) frame before movement.
# An empty string will leave the attached frame unchanged. 
string target_frame

# When should this pose be reached?
# A negative value will disable the pose command altogether.
duration time_from_start

# The frame-relative point for the camera.
geometry_msgs/PointStamped eye

# The frame-relative point for the focus (or pivot for an Orbit controller).
geometry_msgs/PointStamped focus

# The frame-relative vector that maps to \"up\" in the view plane.
# The zero-vector will default to +Z in the view controller's \"Target Frame\".
geometry_msgs/Vector3Stamped up

# ------------------------------------------------
# Some paramters for interaction control
# ------------------------------------------------
# The interaction style that should be activated when movement is done.
uint8 mouse_interaction_mode
uint8 NO_CHANGE = 0 # Leaves the control style unchanged
uint8 ORBIT = 1 # Activates the Orbit-style controller
uint8 FPS   = 2 # Activates the FPS-style controller

# A flag to enable or disable user interaction 
# (defaults to false so that interaction is enabled)
bool interaction_disabled

# A flag indicating if the camera yaw axis is fixed to +Z of the camera attached_frame
bool allow_free_yaw_axis

================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3Stamped
# This represents a Vector3 with reference coordinate frame and timestamp
Header header
Vector3 vector

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



(provide :view_controller_msgs/CameraPlacement "38be6efe15caa86e2c835dd05ab88393")


