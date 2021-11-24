; Auto-generated. Do not edit!


(cl:in-package jsk_topic_tools-srv)


;//! \htmlinclude PassthroughDuration-request.msg.html

(cl:defclass <PassthroughDuration-request> (roslisp-msg-protocol:ros-message)
  ((duration
    :reader duration
    :initarg :duration
    :type cl:real
    :initform 0))
)

(cl:defclass PassthroughDuration-request (<PassthroughDuration-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PassthroughDuration-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PassthroughDuration-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_topic_tools-srv:<PassthroughDuration-request> is deprecated: use jsk_topic_tools-srv:PassthroughDuration-request instead.")))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <PassthroughDuration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_topic_tools-srv:duration-val is deprecated.  Use jsk_topic_tools-srv:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PassthroughDuration-request>) ostream)
  "Serializes a message object of type '<PassthroughDuration-request>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'duration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'duration) (cl:floor (cl:slot-value msg 'duration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PassthroughDuration-request>) istream)
  "Deserializes a message object of type '<PassthroughDuration-request>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'duration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PassthroughDuration-request>)))
  "Returns string type for a service object of type '<PassthroughDuration-request>"
  "jsk_topic_tools/PassthroughDurationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PassthroughDuration-request)))
  "Returns string type for a service object of type 'PassthroughDuration-request"
  "jsk_topic_tools/PassthroughDurationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PassthroughDuration-request>)))
  "Returns md5sum for a message object of type '<PassthroughDuration-request>"
  "2aa5b5d494c682527e9e9161e1fa58ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PassthroughDuration-request)))
  "Returns md5sum for a message object of type 'PassthroughDuration-request"
  "2aa5b5d494c682527e9e9161e1fa58ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PassthroughDuration-request>)))
  "Returns full string definition for message of type '<PassthroughDuration-request>"
  (cl:format cl:nil "duration duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PassthroughDuration-request)))
  "Returns full string definition for message of type 'PassthroughDuration-request"
  (cl:format cl:nil "duration duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PassthroughDuration-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PassthroughDuration-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PassthroughDuration-request
    (cl:cons ':duration (duration msg))
))
;//! \htmlinclude PassthroughDuration-response.msg.html

(cl:defclass <PassthroughDuration-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PassthroughDuration-response (<PassthroughDuration-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PassthroughDuration-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PassthroughDuration-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_topic_tools-srv:<PassthroughDuration-response> is deprecated: use jsk_topic_tools-srv:PassthroughDuration-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PassthroughDuration-response>) ostream)
  "Serializes a message object of type '<PassthroughDuration-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PassthroughDuration-response>) istream)
  "Deserializes a message object of type '<PassthroughDuration-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PassthroughDuration-response>)))
  "Returns string type for a service object of type '<PassthroughDuration-response>"
  "jsk_topic_tools/PassthroughDurationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PassthroughDuration-response)))
  "Returns string type for a service object of type 'PassthroughDuration-response"
  "jsk_topic_tools/PassthroughDurationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PassthroughDuration-response>)))
  "Returns md5sum for a message object of type '<PassthroughDuration-response>"
  "2aa5b5d494c682527e9e9161e1fa58ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PassthroughDuration-response)))
  "Returns md5sum for a message object of type 'PassthroughDuration-response"
  "2aa5b5d494c682527e9e9161e1fa58ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PassthroughDuration-response>)))
  "Returns full string definition for message of type '<PassthroughDuration-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PassthroughDuration-response)))
  "Returns full string definition for message of type 'PassthroughDuration-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PassthroughDuration-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PassthroughDuration-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PassthroughDuration-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PassthroughDuration)))
  'PassthroughDuration-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PassthroughDuration)))
  'PassthroughDuration-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PassthroughDuration)))
  "Returns string type for a service object of type '<PassthroughDuration>"
  "jsk_topic_tools/PassthroughDuration")