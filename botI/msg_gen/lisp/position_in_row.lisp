; Auto-generated. Do not edit!


(cl:in-package botI-msg)


;//! \htmlinclude position_in_row.msg.html

(cl:defclass <position_in_row> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (gamma
    :reader gamma
    :initarg :gamma
    :type cl:float
    :initform 0.0))
)

(cl:defclass position_in_row (<position_in_row>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <position_in_row>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'position_in_row)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name botI-msg:<position_in_row> is deprecated: use botI-msg:position_in_row instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <position_in_row>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botI-msg:header-val is deprecated.  Use botI-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <position_in_row>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botI-msg:x-val is deprecated.  Use botI-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'gamma-val :lambda-list '(m))
(cl:defmethod gamma-val ((m <position_in_row>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botI-msg:gamma-val is deprecated.  Use botI-msg:gamma instead.")
  (gamma m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <position_in_row>) ostream)
  "Serializes a message object of type '<position_in_row>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gamma))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <position_in_row>) istream)
  "Deserializes a message object of type '<position_in_row>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
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
    (cl:setf (cl:slot-value msg 'gamma) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<position_in_row>)))
  "Returns string type for a message object of type '<position_in_row>"
  "botI/position_in_row")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'position_in_row)))
  "Returns string type for a message object of type 'position_in_row"
  "botI/position_in_row")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<position_in_row>)))
  "Returns md5sum for a message object of type '<position_in_row>"
  "b072d57812e00fb344900c38bb333420")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'position_in_row)))
  "Returns md5sum for a message object of type 'position_in_row"
  "b072d57812e00fb344900c38bb333420")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<position_in_row>)))
  "Returns full string definition for message of type '<position_in_row>"
  (cl:format cl:nil "Header header~%float32 x~%float32 gamma ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'position_in_row)))
  "Returns full string definition for message of type 'position_in_row"
  (cl:format cl:nil "Header header~%float32 x~%float32 gamma ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <position_in_row>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <position_in_row>))
  "Converts a ROS message object to a list"
  (cl:list 'position_in_row
    (cl:cons ':header (header msg))
    (cl:cons ':x (x msg))
    (cl:cons ':gamma (gamma msg))
))
