; Auto-generated. Do not edit!


(cl:in-package jsk_topic_tools-srv)


;//! \htmlinclude Update-request.msg.html

(cl:defclass <Update-request> (roslisp-msg-protocol:ros-message)
  ((topic_name
    :reader topic_name
    :initarg :topic_name
    :type cl:string
    :initform "")
   (periodic
    :reader periodic
    :initarg :periodic
    :type cl:boolean
    :initform cl:nil)
   (periodic_rate
    :reader periodic_rate
    :initarg :periodic_rate
    :type cl:real
    :initform 0))
)

(cl:defclass Update-request (<Update-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Update-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Update-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_topic_tools-srv:<Update-request> is deprecated: use jsk_topic_tools-srv:Update-request instead.")))

(cl:ensure-generic-function 'topic_name-val :lambda-list '(m))
(cl:defmethod topic_name-val ((m <Update-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_topic_tools-srv:topic_name-val is deprecated.  Use jsk_topic_tools-srv:topic_name instead.")
  (topic_name m))

(cl:ensure-generic-function 'periodic-val :lambda-list '(m))
(cl:defmethod periodic-val ((m <Update-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_topic_tools-srv:periodic-val is deprecated.  Use jsk_topic_tools-srv:periodic instead.")
  (periodic m))

(cl:ensure-generic-function 'periodic_rate-val :lambda-list '(m))
(cl:defmethod periodic_rate-val ((m <Update-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_topic_tools-srv:periodic_rate-val is deprecated.  Use jsk_topic_tools-srv:periodic_rate instead.")
  (periodic_rate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Update-request>) ostream)
  "Serializes a message object of type '<Update-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'periodic) 1 0)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'periodic_rate)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'periodic_rate) (cl:floor (cl:slot-value msg 'periodic_rate)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Update-request>) istream)
  "Deserializes a message object of type '<Update-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'periodic) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'periodic_rate) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Update-request>)))
  "Returns string type for a service object of type '<Update-request>"
  "jsk_topic_tools/UpdateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Update-request)))
  "Returns string type for a service object of type 'Update-request"
  "jsk_topic_tools/UpdateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Update-request>)))
  "Returns md5sum for a message object of type '<Update-request>"
  "ace79f60f838c917f96ff83267699173")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Update-request)))
  "Returns md5sum for a message object of type 'Update-request"
  "ace79f60f838c917f96ff83267699173")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Update-request>)))
  "Returns full string definition for message of type '<Update-request>"
  (cl:format cl:nil "string topic_name~%bool periodic  # when true is set, periodic publish starts. when false, it stops. do nothing when this is empty.~%duration periodic_rate # when periodic is true, periodic publish starts at this rate.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Update-request)))
  "Returns full string definition for message of type 'Update-request"
  (cl:format cl:nil "string topic_name~%bool periodic  # when true is set, periodic publish starts. when false, it stops. do nothing when this is empty.~%duration periodic_rate # when periodic is true, periodic publish starts at this rate.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Update-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic_name))
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Update-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Update-request
    (cl:cons ':topic_name (topic_name msg))
    (cl:cons ':periodic (periodic msg))
    (cl:cons ':periodic_rate (periodic_rate msg))
))
;//! \htmlinclude Update-response.msg.html

(cl:defclass <Update-response> (roslisp-msg-protocol:ros-message)
  ((rate
    :reader rate
    :initarg :rate
    :type cl:float
    :initform 0.0))
)

(cl:defclass Update-response (<Update-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Update-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Update-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_topic_tools-srv:<Update-response> is deprecated: use jsk_topic_tools-srv:Update-response instead.")))

(cl:ensure-generic-function 'rate-val :lambda-list '(m))
(cl:defmethod rate-val ((m <Update-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_topic_tools-srv:rate-val is deprecated.  Use jsk_topic_tools-srv:rate instead.")
  (rate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Update-response>) ostream)
  "Serializes a message object of type '<Update-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Update-response>) istream)
  "Deserializes a message object of type '<Update-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Update-response>)))
  "Returns string type for a service object of type '<Update-response>"
  "jsk_topic_tools/UpdateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Update-response)))
  "Returns string type for a service object of type 'Update-response"
  "jsk_topic_tools/UpdateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Update-response>)))
  "Returns md5sum for a message object of type '<Update-response>"
  "ace79f60f838c917f96ff83267699173")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Update-response)))
  "Returns md5sum for a message object of type 'Update-response"
  "ace79f60f838c917f96ff83267699173")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Update-response>)))
  "Returns full string definition for message of type '<Update-response>"
  (cl:format cl:nil "float64 rate~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Update-response)))
  "Returns full string definition for message of type 'Update-response"
  (cl:format cl:nil "float64 rate~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Update-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Update-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Update-response
    (cl:cons ':rate (rate msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Update)))
  'Update-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Update)))
  'Update-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Update)))
  "Returns string type for a service object of type '<Update>"
  "jsk_topic_tools/Update")