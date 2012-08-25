; Auto-generated. Do not edit!


(cl:in-package SerialDriver-srv)


;//! \htmlinclude serial-request.msg.html

(cl:defclass <serial-request> (roslisp-msg-protocol:ros-message)
  ((outMessage
    :reader outMessage
    :initarg :outMessage
    :type cl:string
    :initform "")
   (size
    :reader size
    :initarg :size
    :type cl:fixnum
    :initform 0))
)

(cl:defclass serial-request (<serial-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <serial-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'serial-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name SerialDriver-srv:<serial-request> is deprecated: use SerialDriver-srv:serial-request instead.")))

(cl:ensure-generic-function 'outMessage-val :lambda-list '(m))
(cl:defmethod outMessage-val ((m <serial-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader SerialDriver-srv:outMessage-val is deprecated.  Use SerialDriver-srv:outMessage instead.")
  (outMessage m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <serial-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader SerialDriver-srv:size-val is deprecated.  Use SerialDriver-srv:size instead.")
  (size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <serial-request>) ostream)
  "Serializes a message object of type '<serial-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'outMessage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'outMessage))
  (cl:let* ((signed (cl:slot-value msg 'size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <serial-request>) istream)
  "Deserializes a message object of type '<serial-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'outMessage) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'outMessage) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'size) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<serial-request>)))
  "Returns string type for a service object of type '<serial-request>"
  "SerialDriver/serialRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'serial-request)))
  "Returns string type for a service object of type 'serial-request"
  "SerialDriver/serialRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<serial-request>)))
  "Returns md5sum for a message object of type '<serial-request>"
  "4f66292071c6a4a7e5a33049641c335b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'serial-request)))
  "Returns md5sum for a message object of type 'serial-request"
  "4f66292071c6a4a7e5a33049641c335b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<serial-request>)))
  "Returns full string definition for message of type '<serial-request>"
  (cl:format cl:nil "string outMessage~%int16 size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'serial-request)))
  "Returns full string definition for message of type 'serial-request"
  (cl:format cl:nil "string outMessage~%int16 size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <serial-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'outMessage))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <serial-request>))
  "Converts a ROS message object to a list"
  (cl:list 'serial-request
    (cl:cons ':outMessage (outMessage msg))
    (cl:cons ':size (size msg))
))
;//! \htmlinclude serial-response.msg.html

(cl:defclass <serial-response> (roslisp-msg-protocol:ros-message)
  ((inMessage
    :reader inMessage
    :initarg :inMessage
    :type cl:string
    :initform ""))
)

(cl:defclass serial-response (<serial-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <serial-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'serial-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name SerialDriver-srv:<serial-response> is deprecated: use SerialDriver-srv:serial-response instead.")))

(cl:ensure-generic-function 'inMessage-val :lambda-list '(m))
(cl:defmethod inMessage-val ((m <serial-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader SerialDriver-srv:inMessage-val is deprecated.  Use SerialDriver-srv:inMessage instead.")
  (inMessage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <serial-response>) ostream)
  "Serializes a message object of type '<serial-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'inMessage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'inMessage))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <serial-response>) istream)
  "Deserializes a message object of type '<serial-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'inMessage) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'inMessage) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<serial-response>)))
  "Returns string type for a service object of type '<serial-response>"
  "SerialDriver/serialResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'serial-response)))
  "Returns string type for a service object of type 'serial-response"
  "SerialDriver/serialResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<serial-response>)))
  "Returns md5sum for a message object of type '<serial-response>"
  "4f66292071c6a4a7e5a33049641c335b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'serial-response)))
  "Returns md5sum for a message object of type 'serial-response"
  "4f66292071c6a4a7e5a33049641c335b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<serial-response>)))
  "Returns full string definition for message of type '<serial-response>"
  (cl:format cl:nil "string inMessage~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'serial-response)))
  "Returns full string definition for message of type 'serial-response"
  (cl:format cl:nil "string inMessage~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <serial-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'inMessage))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <serial-response>))
  "Converts a ROS message object to a list"
  (cl:list 'serial-response
    (cl:cons ':inMessage (inMessage msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'serial)))
  'serial-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'serial)))
  'serial-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'serial)))
  "Returns string type for a service object of type '<serial>"
  "SerialDriver/serial")