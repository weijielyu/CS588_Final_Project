; Auto-generated. Do not edit!


(cl:in-package view_controller_msgs-msg)


;//! \htmlinclude CameraPlacement.msg.html

(cl:defclass <CameraPlacement> (roslisp-msg-protocol:ros-message)
  ((interpolation_mode
    :reader interpolation_mode
    :initarg :interpolation_mode
    :type cl:fixnum
    :initform 0)
   (target_frame
    :reader target_frame
    :initarg :target_frame
    :type cl:string
    :initform "")
   (time_from_start
    :reader time_from_start
    :initarg :time_from_start
    :type cl:real
    :initform 0)
   (eye
    :reader eye
    :initarg :eye
    :type geometry_msgs-msg:PointStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PointStamped))
   (focus
    :reader focus
    :initarg :focus
    :type geometry_msgs-msg:PointStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PointStamped))
   (up
    :reader up
    :initarg :up
    :type geometry_msgs-msg:Vector3Stamped
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3Stamped))
   (mouse_interaction_mode
    :reader mouse_interaction_mode
    :initarg :mouse_interaction_mode
    :type cl:fixnum
    :initform 0)
   (interaction_disabled
    :reader interaction_disabled
    :initarg :interaction_disabled
    :type cl:boolean
    :initform cl:nil)
   (allow_free_yaw_axis
    :reader allow_free_yaw_axis
    :initarg :allow_free_yaw_axis
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CameraPlacement (<CameraPlacement>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraPlacement>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraPlacement)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name view_controller_msgs-msg:<CameraPlacement> is deprecated: use view_controller_msgs-msg:CameraPlacement instead.")))

(cl:ensure-generic-function 'interpolation_mode-val :lambda-list '(m))
(cl:defmethod interpolation_mode-val ((m <CameraPlacement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader view_controller_msgs-msg:interpolation_mode-val is deprecated.  Use view_controller_msgs-msg:interpolation_mode instead.")
  (interpolation_mode m))

(cl:ensure-generic-function 'target_frame-val :lambda-list '(m))
(cl:defmethod target_frame-val ((m <CameraPlacement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader view_controller_msgs-msg:target_frame-val is deprecated.  Use view_controller_msgs-msg:target_frame instead.")
  (target_frame m))

(cl:ensure-generic-function 'time_from_start-val :lambda-list '(m))
(cl:defmethod time_from_start-val ((m <CameraPlacement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader view_controller_msgs-msg:time_from_start-val is deprecated.  Use view_controller_msgs-msg:time_from_start instead.")
  (time_from_start m))

(cl:ensure-generic-function 'eye-val :lambda-list '(m))
(cl:defmethod eye-val ((m <CameraPlacement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader view_controller_msgs-msg:eye-val is deprecated.  Use view_controller_msgs-msg:eye instead.")
  (eye m))

(cl:ensure-generic-function 'focus-val :lambda-list '(m))
(cl:defmethod focus-val ((m <CameraPlacement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader view_controller_msgs-msg:focus-val is deprecated.  Use view_controller_msgs-msg:focus instead.")
  (focus m))

(cl:ensure-generic-function 'up-val :lambda-list '(m))
(cl:defmethod up-val ((m <CameraPlacement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader view_controller_msgs-msg:up-val is deprecated.  Use view_controller_msgs-msg:up instead.")
  (up m))

(cl:ensure-generic-function 'mouse_interaction_mode-val :lambda-list '(m))
(cl:defmethod mouse_interaction_mode-val ((m <CameraPlacement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader view_controller_msgs-msg:mouse_interaction_mode-val is deprecated.  Use view_controller_msgs-msg:mouse_interaction_mode instead.")
  (mouse_interaction_mode m))

(cl:ensure-generic-function 'interaction_disabled-val :lambda-list '(m))
(cl:defmethod interaction_disabled-val ((m <CameraPlacement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader view_controller_msgs-msg:interaction_disabled-val is deprecated.  Use view_controller_msgs-msg:interaction_disabled instead.")
  (interaction_disabled m))

(cl:ensure-generic-function 'allow_free_yaw_axis-val :lambda-list '(m))
(cl:defmethod allow_free_yaw_axis-val ((m <CameraPlacement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader view_controller_msgs-msg:allow_free_yaw_axis-val is deprecated.  Use view_controller_msgs-msg:allow_free_yaw_axis instead.")
  (allow_free_yaw_axis m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CameraPlacement>)))
    "Constants for message type '<CameraPlacement>"
  '((:LINEAR . 0)
    (:SPHERICAL . 1)
    (:NO_CHANGE . 0)
    (:ORBIT . 1)
    (:FPS . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CameraPlacement)))
    "Constants for message type 'CameraPlacement"
  '((:LINEAR . 0)
    (:SPHERICAL . 1)
    (:NO_CHANGE . 0)
    (:ORBIT . 1)
    (:FPS . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraPlacement>) ostream)
  "Serializes a message object of type '<CameraPlacement>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'interpolation_mode)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_frame))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time_from_start)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time_from_start) (cl:floor (cl:slot-value msg 'time_from_start)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'eye) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'focus) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'up) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mouse_interaction_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'interaction_disabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'allow_free_yaw_axis) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraPlacement>) istream)
  "Deserializes a message object of type '<CameraPlacement>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'interpolation_mode)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_from_start) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'eye) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'focus) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'up) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mouse_interaction_mode)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'interaction_disabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'allow_free_yaw_axis) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraPlacement>)))
  "Returns string type for a message object of type '<CameraPlacement>"
  "view_controller_msgs/CameraPlacement")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraPlacement)))
  "Returns string type for a message object of type 'CameraPlacement"
  "view_controller_msgs/CameraPlacement")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraPlacement>)))
  "Returns md5sum for a message object of type '<CameraPlacement>"
  "38be6efe15caa86e2c835dd05ab88393")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraPlacement)))
  "Returns md5sum for a message object of type 'CameraPlacement"
  "38be6efe15caa86e2c835dd05ab88393")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraPlacement>)))
  "Returns full string definition for message of type '<CameraPlacement>"
  (cl:format cl:nil "# The interpolation mode to use during this step~%uint8 interpolation_mode~%uint8 LINEAR    = 0 # Positions will be linearly interpolated~%uint8 SPHERICAL = 1 # Position and orientation will be interpolated in a spherical sense.~%~%# Sets this as the camera attached (fixed) frame before movement.~%# An empty string will leave the attached frame unchanged. ~%string target_frame~%~%# When should this pose be reached?~%# A negative value will disable the pose command altogether.~%duration time_from_start~%~%# The frame-relative point for the camera.~%geometry_msgs/PointStamped eye~%~%# The frame-relative point for the focus (or pivot for an Orbit controller).~%geometry_msgs/PointStamped focus~%~%# The frame-relative vector that maps to \"up\" in the view plane.~%# The zero-vector will default to +Z in the view controller's \"Target Frame\".~%geometry_msgs/Vector3Stamped up~%~%# ------------------------------------------------~%# Some paramters for interaction control~%# ------------------------------------------------~%# The interaction style that should be activated when movement is done.~%uint8 mouse_interaction_mode~%uint8 NO_CHANGE = 0 # Leaves the control style unchanged~%uint8 ORBIT = 1 # Activates the Orbit-style controller~%uint8 FPS   = 2 # Activates the FPS-style controller~%~%# A flag to enable or disable user interaction ~%# (defaults to false so that interaction is enabled)~%bool interaction_disabled~%~%# A flag indicating if the camera yaw axis is fixed to +Z of the camera attached_frame~%bool allow_free_yaw_axis~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3Stamped~%# This represents a Vector3 with reference coordinate frame and timestamp~%Header header~%Vector3 vector~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraPlacement)))
  "Returns full string definition for message of type 'CameraPlacement"
  (cl:format cl:nil "# The interpolation mode to use during this step~%uint8 interpolation_mode~%uint8 LINEAR    = 0 # Positions will be linearly interpolated~%uint8 SPHERICAL = 1 # Position and orientation will be interpolated in a spherical sense.~%~%# Sets this as the camera attached (fixed) frame before movement.~%# An empty string will leave the attached frame unchanged. ~%string target_frame~%~%# When should this pose be reached?~%# A negative value will disable the pose command altogether.~%duration time_from_start~%~%# The frame-relative point for the camera.~%geometry_msgs/PointStamped eye~%~%# The frame-relative point for the focus (or pivot for an Orbit controller).~%geometry_msgs/PointStamped focus~%~%# The frame-relative vector that maps to \"up\" in the view plane.~%# The zero-vector will default to +Z in the view controller's \"Target Frame\".~%geometry_msgs/Vector3Stamped up~%~%# ------------------------------------------------~%# Some paramters for interaction control~%# ------------------------------------------------~%# The interaction style that should be activated when movement is done.~%uint8 mouse_interaction_mode~%uint8 NO_CHANGE = 0 # Leaves the control style unchanged~%uint8 ORBIT = 1 # Activates the Orbit-style controller~%uint8 FPS   = 2 # Activates the FPS-style controller~%~%# A flag to enable or disable user interaction ~%# (defaults to false so that interaction is enabled)~%bool interaction_disabled~%~%# A flag indicating if the camera yaw axis is fixed to +Z of the camera attached_frame~%bool allow_free_yaw_axis~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3Stamped~%# This represents a Vector3 with reference coordinate frame and timestamp~%Header header~%Vector3 vector~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraPlacement>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'target_frame))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'eye))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'focus))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'up))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraPlacement>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraPlacement
    (cl:cons ':interpolation_mode (interpolation_mode msg))
    (cl:cons ':target_frame (target_frame msg))
    (cl:cons ':time_from_start (time_from_start msg))
    (cl:cons ':eye (eye msg))
    (cl:cons ':focus (focus msg))
    (cl:cons ':up (up msg))
    (cl:cons ':mouse_interaction_mode (mouse_interaction_mode msg))
    (cl:cons ':interaction_disabled (interaction_disabled msg))
    (cl:cons ':allow_free_yaw_axis (allow_free_yaw_axis msg))
))
