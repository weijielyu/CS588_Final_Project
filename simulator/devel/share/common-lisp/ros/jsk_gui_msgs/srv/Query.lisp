; Auto-generated. Do not edit!


(cl:in-package jsk_gui_msgs-srv)


;//! \htmlinclude Query-request.msg.html

(cl:defclass <Query-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass Query-request (<Query-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Query-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Query-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_gui_msgs-srv:<Query-request> is deprecated: use jsk_gui_msgs-srv:Query-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Query-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_gui_msgs-srv:id-val is deprecated.  Use jsk_gui_msgs-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Query-request>) ostream)
  "Serializes a message object of type '<Query-request>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Query-request>) istream)
  "Deserializes a message object of type '<Query-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Query-request>)))
  "Returns string type for a service object of type '<Query-request>"
  "jsk_gui_msgs/QueryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Query-request)))
  "Returns string type for a service object of type 'Query-request"
  "jsk_gui_msgs/QueryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Query-request>)))
  "Returns md5sum for a message object of type '<Query-request>"
  "9c540946b387ce7acce975ce4dfac8ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Query-request)))
  "Returns md5sum for a message object of type 'Query-request"
  "9c540946b387ce7acce975ce4dfac8ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Query-request>)))
  "Returns full string definition for message of type '<Query-request>"
  (cl:format cl:nil "int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Query-request)))
  "Returns full string definition for message of type 'Query-request"
  (cl:format cl:nil "int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Query-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Query-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Query-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude Query-response.msg.html

(cl:defclass <Query-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:string
    :initform ""))
)

(cl:defclass Query-response (<Query-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Query-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Query-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_gui_msgs-srv:<Query-response> is deprecated: use jsk_gui_msgs-srv:Query-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <Query-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_gui_msgs-srv:res-val is deprecated.  Use jsk_gui_msgs-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Query-response>) ostream)
  "Serializes a message object of type '<Query-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'res))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'res))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Query-response>) istream)
  "Deserializes a message object of type '<Query-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'res) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Query-response>)))
  "Returns string type for a service object of type '<Query-response>"
  "jsk_gui_msgs/QueryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Query-response)))
  "Returns string type for a service object of type 'Query-response"
  "jsk_gui_msgs/QueryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Query-response>)))
  "Returns md5sum for a message object of type '<Query-response>"
  "9c540946b387ce7acce975ce4dfac8ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Query-response)))
  "Returns md5sum for a message object of type 'Query-response"
  "9c540946b387ce7acce975ce4dfac8ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Query-response>)))
  "Returns full string definition for message of type '<Query-response>"
  (cl:format cl:nil "string res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Query-response)))
  "Returns full string definition for message of type 'Query-response"
  (cl:format cl:nil "string res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Query-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'res))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Query-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Query-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Query)))
  'Query-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Query)))
  'Query-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Query)))
  "Returns string type for a service object of type '<Query>"
  "jsk_gui_msgs/Query")