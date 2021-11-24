; Auto-generated. Do not edit!


(cl:in-package jsk_gui_msgs-msg)


;//! \htmlinclude VoiceMessage.msg.html

(cl:defclass <VoiceMessage> (roslisp-msg-protocol:ros-message)
  ((texts
    :reader texts
    :initarg :texts
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass VoiceMessage (<VoiceMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VoiceMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VoiceMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_gui_msgs-msg:<VoiceMessage> is deprecated: use jsk_gui_msgs-msg:VoiceMessage instead.")))

(cl:ensure-generic-function 'texts-val :lambda-list '(m))
(cl:defmethod texts-val ((m <VoiceMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_gui_msgs-msg:texts-val is deprecated.  Use jsk_gui_msgs-msg:texts instead.")
  (texts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VoiceMessage>) ostream)
  "Serializes a message object of type '<VoiceMessage>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'texts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'texts))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VoiceMessage>) istream)
  "Deserializes a message object of type '<VoiceMessage>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'texts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'texts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VoiceMessage>)))
  "Returns string type for a message object of type '<VoiceMessage>"
  "jsk_gui_msgs/VoiceMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VoiceMessage)))
  "Returns string type for a message object of type 'VoiceMessage"
  "jsk_gui_msgs/VoiceMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VoiceMessage>)))
  "Returns md5sum for a message object of type '<VoiceMessage>"
  "8d7dcfb3b46640ccf02177a3f0cf9530")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VoiceMessage)))
  "Returns md5sum for a message object of type 'VoiceMessage"
  "8d7dcfb3b46640ccf02177a3f0cf9530")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VoiceMessage>)))
  "Returns full string definition for message of type '<VoiceMessage>"
  (cl:format cl:nil "string[] texts~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VoiceMessage)))
  "Returns full string definition for message of type 'VoiceMessage"
  (cl:format cl:nil "string[] texts~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VoiceMessage>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'texts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VoiceMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'VoiceMessage
    (cl:cons ':texts (texts msg))
))
