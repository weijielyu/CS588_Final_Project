; Auto-generated. Do not edit!


(cl:in-package jsk_topic_tools-msg)


;//! \htmlinclude TopicInfo.msg.html

(cl:defclass <TopicInfo> (roslisp-msg-protocol:ros-message)
  ((topic_name
    :reader topic_name
    :initarg :topic_name
    :type cl:string
    :initform "")
   (rate
    :reader rate
    :initarg :rate
    :type cl:float
    :initform 0.0))
)

(cl:defclass TopicInfo (<TopicInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TopicInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TopicInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_topic_tools-msg:<TopicInfo> is deprecated: use jsk_topic_tools-msg:TopicInfo instead.")))

(cl:ensure-generic-function 'topic_name-val :lambda-list '(m))
(cl:defmethod topic_name-val ((m <TopicInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_topic_tools-msg:topic_name-val is deprecated.  Use jsk_topic_tools-msg:topic_name instead.")
  (topic_name m))

(cl:ensure-generic-function 'rate-val :lambda-list '(m))
(cl:defmethod rate-val ((m <TopicInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_topic_tools-msg:rate-val is deprecated.  Use jsk_topic_tools-msg:rate instead.")
  (rate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TopicInfo>) ostream)
  "Serializes a message object of type '<TopicInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic_name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TopicInfo>) istream)
  "Deserializes a message object of type '<TopicInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rate) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TopicInfo>)))
  "Returns string type for a message object of type '<TopicInfo>"
  "jsk_topic_tools/TopicInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TopicInfo)))
  "Returns string type for a message object of type 'TopicInfo"
  "jsk_topic_tools/TopicInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TopicInfo>)))
  "Returns md5sum for a message object of type '<TopicInfo>"
  "78edf14defd72c2fcd29e4fad0165ea9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TopicInfo)))
  "Returns md5sum for a message object of type 'TopicInfo"
  "78edf14defd72c2fcd29e4fad0165ea9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TopicInfo>)))
  "Returns full string definition for message of type '<TopicInfo>"
  (cl:format cl:nil "string topic_name~%float64 rate~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TopicInfo)))
  "Returns full string definition for message of type 'TopicInfo"
  (cl:format cl:nil "string topic_name~%float64 rate~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TopicInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic_name))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TopicInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'TopicInfo
    (cl:cons ':topic_name (topic_name msg))
    (cl:cons ':rate (rate msg))
))
