; Auto-generated. Do not edit!


(cl:in-package jsk_gui_msgs-srv)


;//! \htmlinclude YesNo-request.msg.html

(cl:defclass <YesNo-request> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass YesNo-request (<YesNo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YesNo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YesNo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_gui_msgs-srv:<YesNo-request> is deprecated: use jsk_gui_msgs-srv:YesNo-request instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <YesNo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_gui_msgs-srv:message-val is deprecated.  Use jsk_gui_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YesNo-request>) ostream)
  "Serializes a message object of type '<YesNo-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YesNo-request>) istream)
  "Deserializes a message object of type '<YesNo-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YesNo-request>)))
  "Returns string type for a service object of type '<YesNo-request>"
  "jsk_gui_msgs/YesNoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YesNo-request)))
  "Returns string type for a service object of type 'YesNo-request"
  "jsk_gui_msgs/YesNoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YesNo-request>)))
  "Returns md5sum for a message object of type '<YesNo-request>"
  "3e598b4f1452111e6b9ac5c2ccf2a61b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YesNo-request)))
  "Returns md5sum for a message object of type 'YesNo-request"
  "3e598b4f1452111e6b9ac5c2ccf2a61b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YesNo-request>)))
  "Returns full string definition for message of type '<YesNo-request>"
  (cl:format cl:nil "string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YesNo-request)))
  "Returns full string definition for message of type 'YesNo-request"
  (cl:format cl:nil "string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YesNo-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YesNo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'YesNo-request
    (cl:cons ':message (message msg))
))
;//! \htmlinclude YesNo-response.msg.html

(cl:defclass <YesNo-response> (roslisp-msg-protocol:ros-message)
  ((yes
    :reader yes
    :initarg :yes
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass YesNo-response (<YesNo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YesNo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YesNo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_gui_msgs-srv:<YesNo-response> is deprecated: use jsk_gui_msgs-srv:YesNo-response instead.")))

(cl:ensure-generic-function 'yes-val :lambda-list '(m))
(cl:defmethod yes-val ((m <YesNo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_gui_msgs-srv:yes-val is deprecated.  Use jsk_gui_msgs-srv:yes instead.")
  (yes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YesNo-response>) ostream)
  "Serializes a message object of type '<YesNo-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'yes) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YesNo-response>) istream)
  "Deserializes a message object of type '<YesNo-response>"
    (cl:setf (cl:slot-value msg 'yes) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YesNo-response>)))
  "Returns string type for a service object of type '<YesNo-response>"
  "jsk_gui_msgs/YesNoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YesNo-response)))
  "Returns string type for a service object of type 'YesNo-response"
  "jsk_gui_msgs/YesNoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YesNo-response>)))
  "Returns md5sum for a message object of type '<YesNo-response>"
  "3e598b4f1452111e6b9ac5c2ccf2a61b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YesNo-response)))
  "Returns md5sum for a message object of type 'YesNo-response"
  "3e598b4f1452111e6b9ac5c2ccf2a61b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YesNo-response>)))
  "Returns full string definition for message of type '<YesNo-response>"
  (cl:format cl:nil "bool yes~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YesNo-response)))
  "Returns full string definition for message of type 'YesNo-response"
  (cl:format cl:nil "bool yes~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YesNo-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YesNo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'YesNo-response
    (cl:cons ':yes (yes msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'YesNo)))
  'YesNo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'YesNo)))
  'YesNo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YesNo)))
  "Returns string type for a service object of type '<YesNo>"
  "jsk_gui_msgs/YesNo")