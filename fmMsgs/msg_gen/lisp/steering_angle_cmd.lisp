; Auto-generated. Do not edit!


(cl:in-package fmMsgs-msg)


;//! \htmlinclude steering_angle_cmd.msg.html

(cl:defclass <steering_angle_cmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (steering_angle
    :reader steering_angle
    :initarg :steering_angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass steering_angle_cmd (<steering_angle_cmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <steering_angle_cmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'steering_angle_cmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fmMsgs-msg:<steering_angle_cmd> is deprecated: use fmMsgs-msg:steering_angle_cmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <steering_angle_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fmMsgs-msg:header-val is deprecated.  Use fmMsgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'steering_angle-val :lambda-list '(m))
(cl:defmethod steering_angle-val ((m <steering_angle_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fmMsgs-msg:steering_angle-val is deprecated.  Use fmMsgs-msg:steering_angle instead.")
  (steering_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <steering_angle_cmd>) ostream)
  "Serializes a message object of type '<steering_angle_cmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steering_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <steering_angle_cmd>) istream)
  "Deserializes a message object of type '<steering_angle_cmd>"
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
    (cl:setf (cl:slot-value msg 'steering_angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<steering_angle_cmd>)))
  "Returns string type for a message object of type '<steering_angle_cmd>"
  "fmMsgs/steering_angle_cmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'steering_angle_cmd)))
  "Returns string type for a message object of type 'steering_angle_cmd"
  "fmMsgs/steering_angle_cmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<steering_angle_cmd>)))
  "Returns md5sum for a message object of type '<steering_angle_cmd>"
  "90da1b169b320e4c6ce83d800d2523d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'steering_angle_cmd)))
  "Returns md5sum for a message object of type 'steering_angle_cmd"
  "90da1b169b320e4c6ce83d800d2523d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<steering_angle_cmd>)))
  "Returns full string definition for message of type '<steering_angle_cmd>"
  (cl:format cl:nil "Header header~%float64 steering_angle~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'steering_angle_cmd)))
  "Returns full string definition for message of type 'steering_angle_cmd"
  (cl:format cl:nil "Header header~%float64 steering_angle~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <steering_angle_cmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <steering_angle_cmd>))
  "Converts a ROS message object to a list"
  (cl:list 'steering_angle_cmd
    (cl:cons ':header (header msg))
    (cl:cons ':steering_angle (steering_angle msg))
))
