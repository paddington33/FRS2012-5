; Auto-generated. Do not edit!


(cl:in-package fmMsgs-msg)


;//! \htmlinclude rtq.msg.html

(cl:defclass <rtq> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (BrushlessCounter
    :reader BrushlessCounter
    :initarg :BrushlessCounter
    :type cl:integer
    :initform 0)
   (BrushlessCounterRelative
    :reader BrushlessCounterRelative
    :initarg :BrushlessCounterRelative
    :type cl:integer
    :initform 0)
   (BatteryVoltage
    :reader BatteryVoltage
    :initarg :BatteryVoltage
    :type cl:float
    :initform 0.0)
   (BatteryAmpere
    :reader BatteryAmpere
    :initarg :BatteryAmpere
    :type cl:float
    :initform 0.0)
   (TrackDistance
    :reader TrackDistance
    :initarg :TrackDistance
    :type cl:float
    :initform 0.0)
   (TrackDistanceRelative
    :reader TrackDistanceRelative
    :initarg :TrackDistanceRelative
    :type cl:float
    :initform 0.0))
)

(cl:defclass rtq (<rtq>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rtq>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rtq)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fmMsgs-msg:<rtq> is deprecated: use fmMsgs-msg:rtq instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <rtq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fmMsgs-msg:header-val is deprecated.  Use fmMsgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'BrushlessCounter-val :lambda-list '(m))
(cl:defmethod BrushlessCounter-val ((m <rtq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fmMsgs-msg:BrushlessCounter-val is deprecated.  Use fmMsgs-msg:BrushlessCounter instead.")
  (BrushlessCounter m))

(cl:ensure-generic-function 'BrushlessCounterRelative-val :lambda-list '(m))
(cl:defmethod BrushlessCounterRelative-val ((m <rtq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fmMsgs-msg:BrushlessCounterRelative-val is deprecated.  Use fmMsgs-msg:BrushlessCounterRelative instead.")
  (BrushlessCounterRelative m))

(cl:ensure-generic-function 'BatteryVoltage-val :lambda-list '(m))
(cl:defmethod BatteryVoltage-val ((m <rtq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fmMsgs-msg:BatteryVoltage-val is deprecated.  Use fmMsgs-msg:BatteryVoltage instead.")
  (BatteryVoltage m))

(cl:ensure-generic-function 'BatteryAmpere-val :lambda-list '(m))
(cl:defmethod BatteryAmpere-val ((m <rtq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fmMsgs-msg:BatteryAmpere-val is deprecated.  Use fmMsgs-msg:BatteryAmpere instead.")
  (BatteryAmpere m))

(cl:ensure-generic-function 'TrackDistance-val :lambda-list '(m))
(cl:defmethod TrackDistance-val ((m <rtq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fmMsgs-msg:TrackDistance-val is deprecated.  Use fmMsgs-msg:TrackDistance instead.")
  (TrackDistance m))

(cl:ensure-generic-function 'TrackDistanceRelative-val :lambda-list '(m))
(cl:defmethod TrackDistanceRelative-val ((m <rtq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fmMsgs-msg:TrackDistanceRelative-val is deprecated.  Use fmMsgs-msg:TrackDistanceRelative instead.")
  (TrackDistanceRelative m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rtq>) ostream)
  "Serializes a message object of type '<rtq>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'BrushlessCounter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'BrushlessCounterRelative)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'BatteryVoltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'BatteryAmpere))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'TrackDistance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'TrackDistanceRelative))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rtq>) istream)
  "Deserializes a message object of type '<rtq>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'BrushlessCounter) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'BrushlessCounterRelative) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'BatteryVoltage) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'BatteryAmpere) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'TrackDistance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'TrackDistanceRelative) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rtq>)))
  "Returns string type for a message object of type '<rtq>"
  "fmMsgs/rtq")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rtq)))
  "Returns string type for a message object of type 'rtq"
  "fmMsgs/rtq")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rtq>)))
  "Returns md5sum for a message object of type '<rtq>"
  "5f3a49abafa7ac778f37c5bada73e588")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rtq)))
  "Returns md5sum for a message object of type 'rtq"
  "5f3a49abafa7ac778f37c5bada73e588")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rtq>)))
  "Returns full string definition for message of type '<rtq>"
  (cl:format cl:nil "Header header~%int32 BrushlessCounter~%int32 BrushlessCounterRelative~%float64 BatteryVoltage~%float64 BatteryAmpere~%float64 TrackDistance~%float64 TrackDistanceRelative~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rtq)))
  "Returns full string definition for message of type 'rtq"
  (cl:format cl:nil "Header header~%int32 BrushlessCounter~%int32 BrushlessCounterRelative~%float64 BatteryVoltage~%float64 BatteryAmpere~%float64 TrackDistance~%float64 TrackDistanceRelative~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rtq>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rtq>))
  "Converts a ROS message object to a list"
  (cl:list 'rtq
    (cl:cons ':header (header msg))
    (cl:cons ':BrushlessCounter (BrushlessCounter msg))
    (cl:cons ':BrushlessCounterRelative (BrushlessCounterRelative msg))
    (cl:cons ':BatteryVoltage (BatteryVoltage msg))
    (cl:cons ':BatteryAmpere (BatteryAmpere msg))
    (cl:cons ':TrackDistance (TrackDistance msg))
    (cl:cons ':TrackDistanceRelative (TrackDistanceRelative msg))
))
