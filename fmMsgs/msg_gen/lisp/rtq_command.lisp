; Auto-generated. Do not edit!


(cl:in-package fmMsgs-msg)


;//! \htmlinclude rtq_command.msg.html

(cl:defclass <rtq_command> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (TrackSpeed
    :reader TrackSpeed
    :initarg :TrackSpeed
    :type cl:float
    :initform 0.0)
   (EmergencyStop
    :reader EmergencyStop
    :initarg :EmergencyStop
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass rtq_command (<rtq_command>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rtq_command>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rtq_command)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fmMsgs-msg:<rtq_command> is deprecated: use fmMsgs-msg:rtq_command instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <rtq_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fmMsgs-msg:header-val is deprecated.  Use fmMsgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'TrackSpeed-val :lambda-list '(m))
(cl:defmethod TrackSpeed-val ((m <rtq_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fmMsgs-msg:TrackSpeed-val is deprecated.  Use fmMsgs-msg:TrackSpeed instead.")
  (TrackSpeed m))

(cl:ensure-generic-function 'EmergencyStop-val :lambda-list '(m))
(cl:defmethod EmergencyStop-val ((m <rtq_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fmMsgs-msg:EmergencyStop-val is deprecated.  Use fmMsgs-msg:EmergencyStop instead.")
  (EmergencyStop m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rtq_command>) ostream)
  "Serializes a message object of type '<rtq_command>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'TrackSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'EmergencyStop) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rtq_command>) istream)
  "Deserializes a message object of type '<rtq_command>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'TrackSpeed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'EmergencyStop) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rtq_command>)))
  "Returns string type for a message object of type '<rtq_command>"
  "fmMsgs/rtq_command")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rtq_command)))
  "Returns string type for a message object of type 'rtq_command"
  "fmMsgs/rtq_command")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rtq_command>)))
  "Returns md5sum for a message object of type '<rtq_command>"
  "1a9d78ff39eae036490d5c154055cba8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rtq_command)))
  "Returns md5sum for a message object of type 'rtq_command"
  "1a9d78ff39eae036490d5c154055cba8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rtq_command>)))
  "Returns full string definition for message of type '<rtq_command>"
  (cl:format cl:nil "Header header~%float64 TrackSpeed~%bool EmergencyStop~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rtq_command)))
  "Returns full string definition for message of type 'rtq_command"
  (cl:format cl:nil "Header header~%float64 TrackSpeed~%bool EmergencyStop~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rtq_command>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rtq_command>))
  "Converts a ROS message object to a list"
  (cl:list 'rtq_command
    (cl:cons ':header (header msg))
    (cl:cons ':TrackSpeed (TrackSpeed msg))
    (cl:cons ':EmergencyStop (EmergencyStop msg))
))
