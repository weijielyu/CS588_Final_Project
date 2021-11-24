; Auto-generated. Do not edit!


(cl:in-package jsk_gui_msgs-msg)


;//! \htmlinclude TouchEvent.msg.html

(cl:defclass <TouchEvent> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (w
    :reader w
    :initarg :w
    :type cl:float
    :initform 0.0)
   (h
    :reader h
    :initarg :h
    :type cl:float
    :initform 0.0))
)

(cl:defclass TouchEvent (<TouchEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TouchEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TouchEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_gui_msgs-msg:<TouchEvent> is deprecated: use jsk_gui_msgs-msg:TouchEvent instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <TouchEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_gui_msgs-msg:state-val is deprecated.  Use jsk_gui_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <TouchEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_gui_msgs-msg:x-val is deprecated.  Use jsk_gui_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <TouchEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_gui_msgs-msg:y-val is deprecated.  Use jsk_gui_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'w-val :lambda-list '(m))
(cl:defmethod w-val ((m <TouchEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_gui_msgs-msg:w-val is deprecated.  Use jsk_gui_msgs-msg:w instead.")
  (w m))

(cl:ensure-generic-function 'h-val :lambda-list '(m))
(cl:defmethod h-val ((m <TouchEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_gui_msgs-msg:h-val is deprecated.  Use jsk_gui_msgs-msg:h instead.")
  (h m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TouchEvent>)))
    "Constants for message type '<TouchEvent>"
  '((:DOWN . 0)
    (:UP . 1)
    (:MOVE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TouchEvent)))
    "Constants for message type 'TouchEvent"
  '((:DOWN . 0)
    (:UP . 1)
    (:MOVE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TouchEvent>) ostream)
  "Serializes a message object of type '<TouchEvent>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'h))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TouchEvent>) istream)
  "Deserializes a message object of type '<TouchEvent>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'h) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TouchEvent>)))
  "Returns string type for a message object of type '<TouchEvent>"
  "jsk_gui_msgs/TouchEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TouchEvent)))
  "Returns string type for a message object of type 'TouchEvent"
  "jsk_gui_msgs/TouchEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TouchEvent>)))
  "Returns md5sum for a message object of type '<TouchEvent>"
  "f074642ed1ad51ea5afc186cab8aaca1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TouchEvent)))
  "Returns md5sum for a message object of type 'TouchEvent"
  "f074642ed1ad51ea5afc186cab8aaca1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TouchEvent>)))
  "Returns full string definition for message of type '<TouchEvent>"
  (cl:format cl:nil "byte DOWN=0~%byte UP=1~%byte MOVE=2~%~%byte state~%float32 x~%float32 y~%float32 w~%float32 h~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TouchEvent)))
  "Returns full string definition for message of type 'TouchEvent"
  (cl:format cl:nil "byte DOWN=0~%byte UP=1~%byte MOVE=2~%~%byte state~%float32 x~%float32 y~%float32 w~%float32 h~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TouchEvent>))
  (cl:+ 0
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TouchEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'TouchEvent
    (cl:cons ':state (state msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':w (w msg))
    (cl:cons ':h (h msg))
))
