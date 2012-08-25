; Auto-generated. Do not edit!


(cl:in-package botI-msg)


;//! \htmlinclude control.msg.html

(cl:defclass <control> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (servo_angle
    :reader servo_angle
    :initarg :servo_angle
    :type cl:float
    :initform 0.0)
   (time1
    :reader time1
    :initarg :time1
    :type cl:float
    :initform 0.0)
   (time2
    :reader time2
    :initarg :time2
    :type cl:float
    :initform 0.0)
   (omega1
    :reader omega1
    :initarg :omega1
    :type cl:float
    :initform 0.0)
   (omega2
    :reader omega2
    :initarg :omega2
    :type cl:float
    :initform 0.0)
   (omega3
    :reader omega3
    :initarg :omega3
    :type cl:float
    :initform 0.0)
   (omega4
    :reader omega4
    :initarg :omega4
    :type cl:float
    :initform 0.0))
)

(cl:defclass control (<control>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <control>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'control)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name botI-msg:<control> is deprecated: use botI-msg:control instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botI-msg:header-val is deprecated.  Use botI-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'servo_angle-val :lambda-list '(m))
(cl:defmethod servo_angle-val ((m <control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botI-msg:servo_angle-val is deprecated.  Use botI-msg:servo_angle instead.")
  (servo_angle m))

(cl:ensure-generic-function 'time1-val :lambda-list '(m))
(cl:defmethod time1-val ((m <control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botI-msg:time1-val is deprecated.  Use botI-msg:time1 instead.")
  (time1 m))

(cl:ensure-generic-function 'time2-val :lambda-list '(m))
(cl:defmethod time2-val ((m <control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botI-msg:time2-val is deprecated.  Use botI-msg:time2 instead.")
  (time2 m))

(cl:ensure-generic-function 'omega1-val :lambda-list '(m))
(cl:defmethod omega1-val ((m <control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botI-msg:omega1-val is deprecated.  Use botI-msg:omega1 instead.")
  (omega1 m))

(cl:ensure-generic-function 'omega2-val :lambda-list '(m))
(cl:defmethod omega2-val ((m <control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botI-msg:omega2-val is deprecated.  Use botI-msg:omega2 instead.")
  (omega2 m))

(cl:ensure-generic-function 'omega3-val :lambda-list '(m))
(cl:defmethod omega3-val ((m <control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botI-msg:omega3-val is deprecated.  Use botI-msg:omega3 instead.")
  (omega3 m))

(cl:ensure-generic-function 'omega4-val :lambda-list '(m))
(cl:defmethod omega4-val ((m <control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botI-msg:omega4-val is deprecated.  Use botI-msg:omega4 instead.")
  (omega4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <control>) ostream)
  "Serializes a message object of type '<control>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'servo_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'omega1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'omega2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'omega3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'omega4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <control>) istream)
  "Deserializes a message object of type '<control>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'servo_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'omega1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'omega2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'omega3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'omega4) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<control>)))
  "Returns string type for a message object of type '<control>"
  "botI/control")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'control)))
  "Returns string type for a message object of type 'control"
  "botI/control")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<control>)))
  "Returns md5sum for a message object of type '<control>"
  "29a27b82b79d677d3029437a8325d760")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'control)))
  "Returns md5sum for a message object of type 'control"
  "29a27b82b79d677d3029437a8325d760")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<control>)))
  "Returns full string definition for message of type '<control>"
  (cl:format cl:nil "Header header~%float32 servo_angle~%float32 time1~%float32 time2~%float32 omega1~%float32 omega2~%float32 omega3~%float32 omega4~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'control)))
  "Returns full string definition for message of type 'control"
  (cl:format cl:nil "Header header~%float32 servo_angle~%float32 time1~%float32 time2~%float32 omega1~%float32 omega2~%float32 omega3~%float32 omega4~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <control>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <control>))
  "Converts a ROS message object to a list"
  (cl:list 'control
    (cl:cons ':header (header msg))
    (cl:cons ':servo_angle (servo_angle msg))
    (cl:cons ':time1 (time1 msg))
    (cl:cons ':time2 (time2 msg))
    (cl:cons ':omega1 (omega1 msg))
    (cl:cons ':omega2 (omega2 msg))
    (cl:cons ':omega3 (omega3 msg))
    (cl:cons ':omega4 (omega4 msg))
))
