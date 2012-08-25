; Auto-generated. Do not edit!


(cl:in-package SerialDriver-msg)


;//! \htmlinclude serial_mode.msg.html

(cl:defclass <serial_mode> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (serialMode
    :reader serialMode
    :initarg :serialMode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass serial_mode (<serial_mode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <serial_mode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'serial_mode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name SerialDriver-msg:<serial_mode> is deprecated: use SerialDriver-msg:serial_mode instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <serial_mode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader SerialDriver-msg:header-val is deprecated.  Use SerialDriver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'serialMode-val :lambda-list '(m))
(cl:defmethod serialMode-val ((m <serial_mode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader SerialDriver-msg:serialMode-val is deprecated.  Use SerialDriver-msg:serialMode instead.")
  (serialMode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<serial_mode>)))
    "Constants for message type '<serial_mode>"
  '((:SERVICE . 0)
    (:OBSERVER . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'serial_mode)))
    "Constants for message type 'serial_mode"
  '((:SERVICE . 0)
    (:OBSERVER . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <serial_mode>) ostream)
  "Serializes a message object of type '<serial_mode>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'serialMode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <serial_mode>) istream)
  "Deserializes a message object of type '<serial_mode>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'serialMode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<serial_mode>)))
  "Returns string type for a message object of type '<serial_mode>"
  "SerialDriver/serial_mode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'serial_mode)))
  "Returns string type for a message object of type 'serial_mode"
  "SerialDriver/serial_mode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<serial_mode>)))
  "Returns md5sum for a message object of type '<serial_mode>"
  "a0820d4fc90fa2037e65f31c87a331ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'serial_mode)))
  "Returns md5sum for a message object of type 'serial_mode"
  "a0820d4fc90fa2037e65f31c87a331ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<serial_mode>)))
  "Returns full string definition for message of type '<serial_mode>"
  (cl:format cl:nil "Header header~%int8 Service=0~%int8 Observer=1~%int8 serialMode~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'serial_mode)))
  "Returns full string definition for message of type 'serial_mode"
  (cl:format cl:nil "Header header~%int8 Service=0~%int8 Observer=1~%int8 serialMode~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <serial_mode>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <serial_mode>))
  "Converts a ROS message object to a list"
  (cl:list 'serial_mode
    (cl:cons ':header (header msg))
    (cl:cons ':serialMode (serialMode msg))
))
