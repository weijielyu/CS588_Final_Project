; Auto-generated. Do not edit!


(cl:in-package jsk_topic_tools-srv)


;//! \htmlinclude ChangeTopic-request.msg.html

(cl:defclass <ChangeTopic-request> (roslisp-msg-protocol:ros-message)
  ((topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform ""))
)

(cl:defclass ChangeTopic-request (<ChangeTopic-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeTopic-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeTopic-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_topic_tools-srv:<ChangeTopic-request> is deprecated: use jsk_topic_tools-srv:ChangeTopic-request instead.")))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <ChangeTopic-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_topic_tools-srv:topic-val is deprecated.  Use jsk_topic_tools-srv:topic instead.")
  (topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeTopic-request>) ostream)
  "Serializes a message object of type '<ChangeTopic-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeTopic-request>) istream)
  "Deserializes a message object of type '<ChangeTopic-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeTopic-request>)))
  "Returns string type for a service object of type '<ChangeTopic-request>"
  "jsk_topic_tools/ChangeTopicRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeTopic-request)))
  "Returns string type for a service object of type 'ChangeTopic-request"
  "jsk_topic_tools/ChangeTopicRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeTopic-request>)))
  "Returns md5sum for a message object of type '<ChangeTopic-request>"
  "d8f94bae31b356b24d0427f80426d0c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeTopic-request)))
  "Returns md5sum for a message object of type 'ChangeTopic-request"
  "d8f94bae31b356b24d0427f80426d0c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeTopic-request>)))
  "Returns full string definition for message of type '<ChangeTopic-request>"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeTopic-request)))
  "Returns full string definition for message of type 'ChangeTopic-request"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeTopic-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeTopic-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeTopic-request
    (cl:cons ':topic (topic msg))
))
;//! \htmlinclude ChangeTopic-response.msg.html

(cl:defclass <ChangeTopic-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ChangeTopic-response (<ChangeTopic-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeTopic-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeTopic-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_topic_tools-srv:<ChangeTopic-response> is deprecated: use jsk_topic_tools-srv:ChangeTopic-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeTopic-response>) ostream)
  "Serializes a message object of type '<ChangeTopic-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeTopic-response>) istream)
  "Deserializes a message object of type '<ChangeTopic-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeTopic-response>)))
  "Returns string type for a service object of type '<ChangeTopic-response>"
  "jsk_topic_tools/ChangeTopicResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeTopic-response)))
  "Returns string type for a service object of type 'ChangeTopic-response"
  "jsk_topic_tools/ChangeTopicResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeTopic-response>)))
  "Returns md5sum for a message object of type '<ChangeTopic-response>"
  "d8f94bae31b356b24d0427f80426d0c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeTopic-response)))
  "Returns md5sum for a message object of type 'ChangeTopic-response"
  "d8f94bae31b356b24d0427f80426d0c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeTopic-response>)))
  "Returns full string definition for message of type '<ChangeTopic-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeTopic-response)))
  "Returns full string definition for message of type 'ChangeTopic-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeTopic-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeTopic-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeTopic-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangeTopic)))
  'ChangeTopic-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangeTopic)))
  'ChangeTopic-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeTopic)))
  "Returns string type for a service object of type '<ChangeTopic>"
  "jsk_topic_tools/ChangeTopic")