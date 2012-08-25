; Auto-generated. Do not edit!


(cl:in-package SerialDriver-srv)


;//! \htmlinclude serial_write_service-request.msg.html

(cl:defclass <serial_write_service-request> (roslisp-msg-protocol:ros-message)
  ((outMessage
    :reader outMessage
    :initarg :outMessage
    :type cl:string
    :initform ""))
)

(cl:defclass serial_write_service-request (<serial_write_service-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <serial_write_service-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'serial_write_service-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name SerialDriver-srv:<serial_write_service-request> is deprecated: use SerialDriver-srv:serial_write_service-request instead.")))

(cl:ensure-generic-function 'outMessage-val :lambda-list '(m))
(cl:defmethod outMessage-val ((m <serial_write_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader SerialDriver-srv:outMessage-val is deprecated.  Use SerialDriver-srv:outMessage instead.")
  (outMessage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <serial_write_service-request>) ostream)
  "Serializes a message object of type '<serial_write_service-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'outMessage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'outMessage))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <serial_write_service-request>) istream)
  "Deserializes a message object of type '<serial_write_service-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'outMessage) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'outMessage) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<serial_write_service-request>)))
  "Returns string type for a service object of type '<serial_write_service-request>"
  "SerialDriver/serial_write_serviceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'serial_write_service-request)))
  "Returns string type for a service object of type 'serial_write_service-request"
  "SerialDriver/serial_write_serviceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<serial_write_service-request>)))
  "Returns md5sum for a message object of type '<serial_write_service-request>"
  "cf923418e1a73ac4a1bdc6a6d3ef397e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'serial_write_service-request)))
  "Returns md5sum for a message object of type 'serial_write_service-request"
  "cf923418e1a73ac4a1bdc6a6d3ef397e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<serial_write_service-request>)))
  "Returns full string definition for message of type '<serial_write_service-request>"
  (cl:format cl:nil "string outMessage~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'serial_write_service-request)))
  "Returns full string definition for message of type 'serial_write_service-request"
  (cl:format cl:nil "string outMessage~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <serial_write_service-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'outMessage))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <serial_write_service-request>))
  "Converts a ROS message object to a list"
  (cl:list 'serial_write_service-request
    (cl:cons ':outMessage (outMessage msg))
))
;//! \htmlinclude serial_write_service-response.msg.html

(cl:defclass <serial_write_service-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass serial_write_service-response (<serial_write_service-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <serial_write_service-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'serial_write_service-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name SerialDriver-srv:<serial_write_service-response> is deprecated: use SerialDriver-srv:serial_write_service-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <serial_write_service-response>) ostream)
  "Serializes a message object of type '<serial_write_service-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <serial_write_service-response>) istream)
  "Deserializes a message object of type '<serial_write_service-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<serial_write_service-response>)))
  "Returns string type for a service object of type '<serial_write_service-response>"
  "SerialDriver/serial_write_serviceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'serial_write_service-response)))
  "Returns string type for a service object of type 'serial_write_service-response"
  "SerialDriver/serial_write_serviceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<serial_write_service-response>)))
  "Returns md5sum for a message object of type '<serial_write_service-response>"
  "cf923418e1a73ac4a1bdc6a6d3ef397e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'serial_write_service-response)))
  "Returns md5sum for a message object of type 'serial_write_service-response"
  "cf923418e1a73ac4a1bdc6a6d3ef397e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<serial_write_service-response>)))
  "Returns full string definition for message of type '<serial_write_service-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'serial_write_service-response)))
  "Returns full string definition for message of type 'serial_write_service-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <serial_write_service-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <serial_write_service-response>))
  "Converts a ROS message object to a list"
  (cl:list 'serial_write_service-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'serial_write_service)))
  'serial_write_service-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'serial_write_service)))
  'serial_write_service-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'serial_write_service)))
  "Returns string type for a service object of type '<serial_write_service>"
  "SerialDriver/serial_write_service")