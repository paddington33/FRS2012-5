; Auto-generated. Do not edit!


(cl:in-package SerialDriver-srv)


;//! \htmlinclude serial_service-request.msg.html

(cl:defclass <serial_service-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass serial_service-request (<serial_service-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <serial_service-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'serial_service-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name SerialDriver-srv:<serial_service-request> is deprecated: use SerialDriver-srv:serial_service-request instead.")))

(cl:ensure-generic-function 'outMessage-val :lambda-list '(m))
(cl:defmethod outMessage-val ((m <serial_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader SerialDriver-srv:outMessage-val is deprecated.  Use SerialDriver-srv:outMessage instead.")
  (outMessage m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <serial_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader SerialDriver-srv:size-val is deprecated.  Use SerialDriver-srv:size instead.")
  (size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <serial_service-request>) ostream)
  "Serializes a message object of type '<serial_service-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <serial_service-request>) istream)
  "Deserializes a message object of type '<serial_service-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<serial_service-request>)))
  "Returns string type for a service object of type '<serial_service-request>"
  "SerialDriver/serial_serviceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'serial_service-request)))
  "Returns string type for a service object of type 'serial_service-request"
  "SerialDriver/serial_serviceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<serial_service-request>)))
  "Returns md5sum for a message object of type '<serial_service-request>"
  "4f66292071c6a4a7e5a33049641c335b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'serial_service-request)))
  "Returns md5sum for a message object of type 'serial_service-request"
  "4f66292071c6a4a7e5a33049641c335b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<serial_service-request>)))
  "Returns full string definition for message of type '<serial_service-request>"
  (cl:format cl:nil "string outMessage~%int16 size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'serial_service-request)))
  "Returns full string definition for message of type 'serial_service-request"
  (cl:format cl:nil "string outMessage~%int16 size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <serial_service-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'outMessage))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <serial_service-request>))
  "Converts a ROS message object to a list"
  (cl:list 'serial_service-request
    (cl:cons ':outMessage (outMessage msg))
    (cl:cons ':size (size msg))
))
;//! \htmlinclude serial_service-response.msg.html

(cl:defclass <serial_service-response> (roslisp-msg-protocol:ros-message)
  ((inMessage
    :reader inMessage
    :initarg :inMessage
    :type cl:string
    :initform ""))
)

(cl:defclass serial_service-response (<serial_service-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <serial_service-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'serial_service-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name SerialDriver-srv:<serial_service-response> is deprecated: use SerialDriver-srv:serial_service-response instead.")))

(cl:ensure-generic-function 'inMessage-val :lambda-list '(m))
(cl:defmethod inMessage-val ((m <serial_service-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader SerialDriver-srv:inMessage-val is deprecated.  Use SerialDriver-srv:inMessage instead.")
  (inMessage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <serial_service-response>) ostream)
  "Serializes a message object of type '<serial_service-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'inMessage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'inMessage))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <serial_service-response>) istream)
  "Deserializes a message object of type '<serial_service-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<serial_service-response>)))
  "Returns string type for a service object of type '<serial_service-response>"
  "SerialDriver/serial_serviceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'serial_service-response)))
  "Returns string type for a service object of type 'serial_service-response"
  "SerialDriver/serial_serviceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<serial_service-response>)))
  "Returns md5sum for a message object of type '<serial_service-response>"
  "4f66292071c6a4a7e5a33049641c335b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'serial_service-response)))
  "Returns md5sum for a message object of type 'serial_service-response"
  "4f66292071c6a4a7e5a33049641c335b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<serial_service-response>)))
  "Returns full string definition for message of type '<serial_service-response>"
  (cl:format cl:nil "string inMessage~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'serial_service-response)))
  "Returns full string definition for message of type 'serial_service-response"
  (cl:format cl:nil "string inMessage~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <serial_service-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'inMessage))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <serial_service-response>))
  "Converts a ROS message object to a list"
  (cl:list 'serial_service-response
    (cl:cons ':inMessage (inMessage msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'serial_service)))
  'serial_service-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'serial_service)))
  'serial_service-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'serial_service)))
  "Returns string type for a service object of type '<serial_service>"
  "SerialDriver/serial_service")