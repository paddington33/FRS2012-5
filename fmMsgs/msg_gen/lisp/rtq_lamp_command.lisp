; Auto-generated. Do not edit!


(cl:in-package fmMsgs-msg)


;//! \htmlinclude rtq_lamp_command.msg.html

(cl:defclass <rtq_lamp_command> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (LampYellow
    :reader LampYellow
    :initarg :LampYellow
    :type cl:boolean
    :initform cl:nil)
   (LampRed
    :reader LampRed
    :initarg :LampRed
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass rtq_lamp_command (<rtq_lamp_command>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rtq_lamp_command>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rtq_lamp_command)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fmMsgs-msg:<rtq_lamp_command> is deprecated: use fmMsgs-msg:rtq_lamp_command instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <rtq_lamp_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fmMsgs-msg:header-val is deprecated.  Use fmMsgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'LampYellow-val :lambda-list '(m))
(cl:defmethod LampYellow-val ((m <rtq_lamp_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fmMsgs-msg:LampYellow-val is deprecated.  Use fmMsgs-msg:LampYellow instead.")
  (LampYellow m))

(cl:ensure-generic-function 'LampRed-val :lambda-list '(m))
(cl:defmethod LampRed-val ((m <rtq_lamp_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fmMsgs-msg:LampRed-val is deprecated.  Use fmMsgs-msg:LampRed instead.")
  (LampRed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rtq_lamp_command>) ostream)
  "Serializes a message object of type '<rtq_lamp_command>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'LampYellow) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'LampRed) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rtq_lamp_command>) istream)
  "Deserializes a message object of type '<rtq_lamp_command>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'LampYellow) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'LampRed) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rtq_lamp_command>)))
  "Returns string type for a message object of type '<rtq_lamp_command>"
  "fmMsgs/rtq_lamp_command")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rtq_lamp_command)))
  "Returns string type for a message object of type 'rtq_lamp_command"
  "fmMsgs/rtq_lamp_command")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rtq_lamp_command>)))
  "Returns md5sum for a message object of type '<rtq_lamp_command>"
  "04c36abb8ea69dddac691c50e1fb96f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rtq_lamp_command)))
  "Returns md5sum for a message object of type 'rtq_lamp_command"
  "04c36abb8ea69dddac691c50e1fb96f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rtq_lamp_command>)))
  "Returns full string definition for message of type '<rtq_lamp_command>"
  (cl:format cl:nil "Header header~%bool LampYellow~%bool LampRed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rtq_lamp_command)))
  "Returns full string definition for message of type 'rtq_lamp_command"
  (cl:format cl:nil "Header header~%bool LampYellow~%bool LampRed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rtq_lamp_command>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rtq_lamp_command>))
  "Converts a ROS message object to a list"
  (cl:list 'rtq_lamp_command
    (cl:cons ':header (header msg))
    (cl:cons ':LampYellow (LampYellow msg))
    (cl:cons ':LampRed (LampRed msg))
))
