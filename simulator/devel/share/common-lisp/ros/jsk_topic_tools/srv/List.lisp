; Auto-generated. Do not edit!


(cl:in-package jsk_topic_tools-srv)


;//! \htmlinclude List-request.msg.html

(cl:defclass <List-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass List-request (<List-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <List-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'List-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_topic_tools-srv:<List-request> is deprecated: use jsk_topic_tools-srv:List-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <List-request>) ostream)
  "Serializes a message object of type '<List-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <List-request>) istream)
  "Deserializes a message object of type '<List-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<List-request>)))
  "Returns string type for a service object of type '<List-request>"
  "jsk_topic_tools/ListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'List-request)))
  "Returns string type for a service object of type 'List-request"
  "jsk_topic_tools/ListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<List-request>)))
  "Returns md5sum for a message object of type '<List-request>"
  "f88f7a076bf16dde010b2480af40dcdb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'List-request)))
  "Returns md5sum for a message object of type 'List-request"
  "f88f7a076bf16dde010b2480af40dcdb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<List-request>)))
  "Returns full string definition for message of type '<List-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'List-request)))
  "Returns full string definition for message of type 'List-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <List-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <List-request>))
  "Converts a ROS message object to a list"
  (cl:list 'List-request
))
;//! \htmlinclude List-response.msg.html

(cl:defclass <List-response> (roslisp-msg-protocol:ros-message)
  ((topic_names
    :reader topic_names
    :initarg :topic_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass List-response (<List-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <List-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'List-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_topic_tools-srv:<List-response> is deprecated: use jsk_topic_tools-srv:List-response instead.")))

(cl:ensure-generic-function 'topic_names-val :lambda-list '(m))
(cl:defmethod topic_names-val ((m <List-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_topic_tools-srv:topic_names-val is deprecated.  Use jsk_topic_tools-srv:topic_names instead.")
  (topic_names m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <List-response>) ostream)
  "Serializes a message object of type '<List-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'topic_names))))
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
   (cl:slot-value msg 'topic_names))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <List-response>) istream)
  "Deserializes a message object of type '<List-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'topic_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'topic_names)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<List-response>)))
  "Returns string type for a service object of type '<List-response>"
  "jsk_topic_tools/ListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'List-response)))
  "Returns string type for a service object of type 'List-response"
  "jsk_topic_tools/ListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<List-response>)))
  "Returns md5sum for a message object of type '<List-response>"
  "f88f7a076bf16dde010b2480af40dcdb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'List-response)))
  "Returns md5sum for a message object of type 'List-response"
  "f88f7a076bf16dde010b2480af40dcdb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<List-response>)))
  "Returns full string definition for message of type '<List-response>"
  (cl:format cl:nil "string[] topic_names~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'List-response)))
  "Returns full string definition for message of type 'List-response"
  (cl:format cl:nil "string[] topic_names~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <List-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'topic_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <List-response>))
  "Converts a ROS message object to a list"
  (cl:list 'List-response
    (cl:cons ':topic_names (topic_names msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'List)))
  'List-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'List)))
  'List-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'List)))
  "Returns string type for a service object of type '<List>"
  "jsk_topic_tools/List")