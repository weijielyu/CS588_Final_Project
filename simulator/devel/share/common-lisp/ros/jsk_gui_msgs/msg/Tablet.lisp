; Auto-generated. Do not edit!


(cl:in-package jsk_gui_msgs-msg)


;//! \htmlinclude Tablet.msg.html

(cl:defclass <Tablet> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (hardware_name
    :reader hardware_name
    :initarg :hardware_name
    :type cl:string
    :initform "")
   (hardware_id
    :reader hardware_id
    :initarg :hardware_id
    :type cl:string
    :initform "")
   (action
    :reader action
    :initarg :action
    :type jsk_gui_msgs-msg:Action
    :initform (cl:make-instance 'jsk_gui_msgs-msg:Action))
   (sensor
    :reader sensor
    :initarg :sensor
    :type jsk_gui_msgs-msg:DeviceSensor
    :initform (cl:make-instance 'jsk_gui_msgs-msg:DeviceSensor))
   (touches
    :reader touches
    :initarg :touches
    :type (cl:vector jsk_gui_msgs-msg:Touch)
   :initform (cl:make-array 0 :element-type 'jsk_gui_msgs-msg:Touch :initial-element (cl:make-instance 'jsk_gui_msgs-msg:Touch))))
)

(cl:defclass Tablet (<Tablet>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Tablet>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Tablet)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_gui_msgs-msg:<Tablet> is deprecated: use jsk_gui_msgs-msg:Tablet instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Tablet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_gui_msgs-msg:header-val is deprecated.  Use jsk_gui_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'hardware_name-val :lambda-list '(m))
(cl:defmethod hardware_name-val ((m <Tablet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_gui_msgs-msg:hardware_name-val is deprecated.  Use jsk_gui_msgs-msg:hardware_name instead.")
  (hardware_name m))

(cl:ensure-generic-function 'hardware_id-val :lambda-list '(m))
(cl:defmethod hardware_id-val ((m <Tablet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_gui_msgs-msg:hardware_id-val is deprecated.  Use jsk_gui_msgs-msg:hardware_id instead.")
  (hardware_id m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <Tablet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_gui_msgs-msg:action-val is deprecated.  Use jsk_gui_msgs-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'sensor-val :lambda-list '(m))
(cl:defmethod sensor-val ((m <Tablet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_gui_msgs-msg:sensor-val is deprecated.  Use jsk_gui_msgs-msg:sensor instead.")
  (sensor m))

(cl:ensure-generic-function 'touches-val :lambda-list '(m))
(cl:defmethod touches-val ((m <Tablet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_gui_msgs-msg:touches-val is deprecated.  Use jsk_gui_msgs-msg:touches instead.")
  (touches m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Tablet>) ostream)
  "Serializes a message object of type '<Tablet>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'hardware_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'hardware_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'hardware_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'hardware_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sensor) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'touches))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'touches))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Tablet>) istream)
  "Deserializes a message object of type '<Tablet>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hardware_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'hardware_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hardware_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'hardware_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sensor) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'touches) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'touches)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'jsk_gui_msgs-msg:Touch))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Tablet>)))
  "Returns string type for a message object of type '<Tablet>"
  "jsk_gui_msgs/Tablet")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Tablet)))
  "Returns string type for a message object of type 'Tablet"
  "jsk_gui_msgs/Tablet")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Tablet>)))
  "Returns md5sum for a message object of type '<Tablet>"
  "0bab196c7b214826d8c27d7bd5f924f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Tablet)))
  "Returns md5sum for a message object of type 'Tablet"
  "0bab196c7b214826d8c27d7bd5f924f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Tablet>)))
  "Returns full string definition for message of type '<Tablet>"
  (cl:format cl:nil "Header header~%# hardware_namel: iPad, Android, other mobile~%string hardware_name~%string hardware_id~%Action action~%DeviceSensor sensor~%Touch[] touches~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: jsk_gui_msgs/Action~%byte RARMID=0~%byte LARMID=1~%~%# task: push, pick, open, slide, MoveNeck, MoveBase~%string task_name~%~%# selection: button names~%# string selection_name~%~%# arm: :rarm, :lsrm~%int64 arm_id~%~%# state of touch: touch, pick, pinch, sweep~%# for debugging~%string state~%# value of state~%float64 state_value~%~%# direction: up, down, left, right~%string direction~%# value of direction, degree~%float64 direction_value~%~%int64 touch_x~%int64 touch_y~%~%# Example~%#  push: touches[0].x, touches[0].y, task_name, arm_id~%#  open: touches[0 1 2].x, touches[0 1 2].y, task_name, arm_id~%#  slide: touches[0 1 2].x, touches[0 1 2].y, task_name, arm_id~%#  move_neck: task_name, direction, direction_value~%#  move_base: task_name, direction, direction_value~%================================================================================~%MSG: jsk_gui_msgs/DeviceSensor~%float64 temperature~%float64 relative_humidity~%float64 light~%float64 pressure~%float64 proximity~%~%~%~%~%================================================================================~%MSG: jsk_gui_msgs/Touch~%# finger_id~%int64 finger_id~%# touch point(screen point)~%float64 x~%float64 y~%# based image size (usually not needed)~%int64 image_width~%int64 image_height~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Tablet)))
  "Returns full string definition for message of type 'Tablet"
  (cl:format cl:nil "Header header~%# hardware_namel: iPad, Android, other mobile~%string hardware_name~%string hardware_id~%Action action~%DeviceSensor sensor~%Touch[] touches~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: jsk_gui_msgs/Action~%byte RARMID=0~%byte LARMID=1~%~%# task: push, pick, open, slide, MoveNeck, MoveBase~%string task_name~%~%# selection: button names~%# string selection_name~%~%# arm: :rarm, :lsrm~%int64 arm_id~%~%# state of touch: touch, pick, pinch, sweep~%# for debugging~%string state~%# value of state~%float64 state_value~%~%# direction: up, down, left, right~%string direction~%# value of direction, degree~%float64 direction_value~%~%int64 touch_x~%int64 touch_y~%~%# Example~%#  push: touches[0].x, touches[0].y, task_name, arm_id~%#  open: touches[0 1 2].x, touches[0 1 2].y, task_name, arm_id~%#  slide: touches[0 1 2].x, touches[0 1 2].y, task_name, arm_id~%#  move_neck: task_name, direction, direction_value~%#  move_base: task_name, direction, direction_value~%================================================================================~%MSG: jsk_gui_msgs/DeviceSensor~%float64 temperature~%float64 relative_humidity~%float64 light~%float64 pressure~%float64 proximity~%~%~%~%~%================================================================================~%MSG: jsk_gui_msgs/Touch~%# finger_id~%int64 finger_id~%# touch point(screen point)~%float64 x~%float64 y~%# based image size (usually not needed)~%int64 image_width~%int64 image_height~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Tablet>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'hardware_name))
     4 (cl:length (cl:slot-value msg 'hardware_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sensor))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'touches) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Tablet>))
  "Converts a ROS message object to a list"
  (cl:list 'Tablet
    (cl:cons ':header (header msg))
    (cl:cons ':hardware_name (hardware_name msg))
    (cl:cons ':hardware_id (hardware_id msg))
    (cl:cons ':action (action msg))
    (cl:cons ':sensor (sensor msg))
    (cl:cons ':touches (touches msg))
))
