; Auto-generated. Do not edit!


(cl:in-package fmMsgs-msg)


;//! \htmlinclude claas_row_cam.msg.html

(cl:defclass <claas_row_cam> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (quality
    :reader quality
    :initarg :quality
    :type cl:fixnum
    :initform 0)
   (heading
    :reader heading
    :initarg :heading
    :type cl:fixnum
    :initform 0)
   (offset
    :reader offset
    :initarg :offset
    :type cl:fixnum
    :initform 0))
)

(cl:defclass claas_row_cam (<claas_row_cam>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <claas_row_cam>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'claas_row_cam)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fmMsgs-msg:<claas_row_cam> is deprecated: use fmMsgs-msg:claas_row_cam instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <claas_row_cam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fmMsgs-msg:header-val is deprecated.  Use fmMsgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'quality-val :lambda-list '(m))
(cl:defmethod quality-val ((m <claas_row_cam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fmMsgs-msg:quality-val is deprecated.  Use fmMsgs-msg:quality instead.")
  (quality m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <claas_row_cam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fmMsgs-msg:heading-val is deprecated.  Use fmMsgs-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <claas_row_cam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fmMsgs-msg:offset-val is deprecated.  Use fmMsgs-msg:offset instead.")
  (offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <claas_row_cam>) ostream)
  "Serializes a message object of type '<claas_row_cam>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'quality)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'heading)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'offset)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <claas_row_cam>) istream)
  "Deserializes a message object of type '<claas_row_cam>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'quality)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'heading) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'offset) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<claas_row_cam>)))
  "Returns string type for a message object of type '<claas_row_cam>"
  "fmMsgs/claas_row_cam")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'claas_row_cam)))
  "Returns string type for a message object of type 'claas_row_cam"
  "fmMsgs/claas_row_cam")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<claas_row_cam>)))
  "Returns md5sum for a message object of type '<claas_row_cam>"
  "55f1517c9516aa61e1abcd6b8e1baa07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'claas_row_cam)))
  "Returns md5sum for a message object of type 'claas_row_cam"
  "55f1517c9516aa61e1abcd6b8e1baa07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<claas_row_cam>)))
  "Returns full string definition for message of type '<claas_row_cam>"
  (cl:format cl:nil "Header header~%uint8 quality~%int16 heading~%int16 offset~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'claas_row_cam)))
  "Returns full string definition for message of type 'claas_row_cam"
  (cl:format cl:nil "Header header~%uint8 quality~%int16 heading~%int16 offset~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <claas_row_cam>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <claas_row_cam>))
  "Converts a ROS message object to a list"
  (cl:list 'claas_row_cam
    (cl:cons ':header (header msg))
    (cl:cons ':quality (quality msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':offset (offset msg))
))
