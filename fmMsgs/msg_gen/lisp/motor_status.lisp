; Auto-generated. Do not edit!


(cl:in-package fmMsgs-msg)


;//! \htmlinclude motor_status.msg.html

(cl:defclass <motor_status> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (motor_amps_in
    :reader motor_amps_in
    :initarg :motor_amps_in
    :type cl:float
    :initform 0.0)
   (motor_amps_out
    :reader motor_amps_out
    :initarg :motor_amps_out
    :type cl:float
    :initform 0.0)
   (motor_voltage_in
    :reader motor_voltage_in
    :initarg :motor_voltage_in
    :type cl:float
    :initform 0.0)
   (motor_voltage_out
    :reader motor_voltage_out
    :initarg :motor_voltage_out
    :type cl:float
    :initform 0.0)
   (motor_status
    :reader motor_status
    :initarg :motor_status
    :type cl:string
    :initform ""))
)

(cl:defclass motor_status (<motor_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motor_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motor_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fmMsgs-msg:<motor_status> is deprecated: use fmMsgs-msg:motor_status instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <motor_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fmMsgs-msg:header-val is deprecated.  Use fmMsgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'motor_amps_in-val :lambda-list '(m))
(cl:defmethod motor_amps_in-val ((m <motor_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fmMsgs-msg:motor_amps_in-val is deprecated.  Use fmMsgs-msg:motor_amps_in instead.")
  (motor_amps_in m))

(cl:ensure-generic-function 'motor_amps_out-val :lambda-list '(m))
(cl:defmethod motor_amps_out-val ((m <motor_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fmMsgs-msg:motor_amps_out-val is deprecated.  Use fmMsgs-msg:motor_amps_out instead.")
  (motor_amps_out m))

(cl:ensure-generic-function 'motor_voltage_in-val :lambda-list '(m))
(cl:defmethod motor_voltage_in-val ((m <motor_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fmMsgs-msg:motor_voltage_in-val is deprecated.  Use fmMsgs-msg:motor_voltage_in instead.")
  (motor_voltage_in m))

(cl:ensure-generic-function 'motor_voltage_out-val :lambda-list '(m))
(cl:defmethod motor_voltage_out-val ((m <motor_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fmMsgs-msg:motor_voltage_out-val is deprecated.  Use fmMsgs-msg:motor_voltage_out instead.")
  (motor_voltage_out m))

(cl:ensure-generic-function 'motor_status-val :lambda-list '(m))
(cl:defmethod motor_status-val ((m <motor_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fmMsgs-msg:motor_status-val is deprecated.  Use fmMsgs-msg:motor_status instead.")
  (motor_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motor_status>) ostream)
  "Serializes a message object of type '<motor_status>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'motor_amps_in))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'motor_amps_out))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'motor_voltage_in))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'motor_voltage_out))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'motor_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'motor_status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motor_status>) istream)
  "Deserializes a message object of type '<motor_status>"
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
    (cl:setf (cl:slot-value msg 'motor_amps_in) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_amps_out) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_voltage_in) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_voltage_out) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'motor_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motor_status>)))
  "Returns string type for a message object of type '<motor_status>"
  "fmMsgs/motor_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motor_status)))
  "Returns string type for a message object of type 'motor_status"
  "fmMsgs/motor_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motor_status>)))
  "Returns md5sum for a message object of type '<motor_status>"
  "988b2388f0f2f13f183ec92e940b1781")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motor_status)))
  "Returns md5sum for a message object of type 'motor_status"
  "988b2388f0f2f13f183ec92e940b1781")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motor_status>)))
  "Returns full string definition for message of type '<motor_status>"
  (cl:format cl:nil "Header header~%# Amps measured at the input of the motor controller~%float64 motor_amps_in~%# Amps measured at the output of the motor controller~%float64 motor_amps_out~%# Voltage measured at the (power) input of the motor controller~%float64 motor_voltage_in~%# Voltage measured at the output of the motor controller~%float64 motor_voltage_out~%# A string dispalying the status of the motor controller~%string motor_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motor_status)))
  "Returns full string definition for message of type 'motor_status"
  (cl:format cl:nil "Header header~%# Amps measured at the input of the motor controller~%float64 motor_amps_in~%# Amps measured at the output of the motor controller~%float64 motor_amps_out~%# Voltage measured at the (power) input of the motor controller~%float64 motor_voltage_in~%# Voltage measured at the output of the motor controller~%float64 motor_voltage_out~%# A string dispalying the status of the motor controller~%string motor_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motor_status>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
     4 (cl:length (cl:slot-value msg 'motor_status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motor_status>))
  "Converts a ROS message object to a list"
  (cl:list 'motor_status
    (cl:cons ':header (header msg))
    (cl:cons ':motor_amps_in (motor_amps_in msg))
    (cl:cons ':motor_amps_out (motor_amps_out msg))
    (cl:cons ':motor_voltage_in (motor_voltage_in msg))
    (cl:cons ':motor_voltage_out (motor_voltage_out msg))
    (cl:cons ':motor_status (motor_status msg))
))
