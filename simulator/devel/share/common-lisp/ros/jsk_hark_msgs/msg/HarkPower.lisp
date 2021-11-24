; Auto-generated. Do not edit!


(cl:in-package jsk_hark_msgs-msg)


;//! \htmlinclude HarkPower.msg.html

(cl:defclass <HarkPower> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0)
   (directions
    :reader directions
    :initarg :directions
    :type cl:integer
    :initform 0)
   (data_bytes
    :reader data_bytes
    :initarg :data_bytes
    :type cl:integer
    :initform 0)
   (powers
    :reader powers
    :initarg :powers
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass HarkPower (<HarkPower>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HarkPower>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HarkPower)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_hark_msgs-msg:<HarkPower> is deprecated: use jsk_hark_msgs-msg:HarkPower instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HarkPower>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_hark_msgs-msg:header-val is deprecated.  Use jsk_hark_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <HarkPower>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_hark_msgs-msg:count-val is deprecated.  Use jsk_hark_msgs-msg:count instead.")
  (count m))

(cl:ensure-generic-function 'directions-val :lambda-list '(m))
(cl:defmethod directions-val ((m <HarkPower>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_hark_msgs-msg:directions-val is deprecated.  Use jsk_hark_msgs-msg:directions instead.")
  (directions m))

(cl:ensure-generic-function 'data_bytes-val :lambda-list '(m))
(cl:defmethod data_bytes-val ((m <HarkPower>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_hark_msgs-msg:data_bytes-val is deprecated.  Use jsk_hark_msgs-msg:data_bytes instead.")
  (data_bytes m))

(cl:ensure-generic-function 'powers-val :lambda-list '(m))
(cl:defmethod powers-val ((m <HarkPower>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_hark_msgs-msg:powers-val is deprecated.  Use jsk_hark_msgs-msg:powers instead.")
  (powers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HarkPower>) ostream)
  "Serializes a message object of type '<HarkPower>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'directions)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'data_bytes)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'powers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'powers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HarkPower>) istream)
  "Deserializes a message object of type '<HarkPower>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'directions) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data_bytes) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'powers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'powers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HarkPower>)))
  "Returns string type for a message object of type '<HarkPower>"
  "jsk_hark_msgs/HarkPower")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HarkPower)))
  "Returns string type for a message object of type 'HarkPower"
  "jsk_hark_msgs/HarkPower")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HarkPower>)))
  "Returns md5sum for a message object of type '<HarkPower>"
  "251c13d7a8be27144a2b24c6f53df705")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HarkPower)))
  "Returns md5sum for a message object of type 'HarkPower"
  "251c13d7a8be27144a2b24c6f53df705")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HarkPower>)))
  "Returns full string definition for message of type '<HarkPower>"
  (cl:format cl:nil "Header header~%int32  count~%int32  directions~%int32  data_bytes~%float32[] powers~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HarkPower)))
  "Returns full string definition for message of type 'HarkPower"
  (cl:format cl:nil "Header header~%int32  count~%int32  directions~%int32  data_bytes~%float32[] powers~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HarkPower>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'powers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HarkPower>))
  "Converts a ROS message object to a list"
  (cl:list 'HarkPower
    (cl:cons ':header (header msg))
    (cl:cons ':count (count msg))
    (cl:cons ':directions (directions msg))
    (cl:cons ':data_bytes (data_bytes msg))
    (cl:cons ':powers (powers msg))
))
