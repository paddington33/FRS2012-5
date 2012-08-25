; Auto-generated. Do not edit!


(cl:in-package TOSNETDriver-srv)


;//! \htmlinclude TOSNET_read-request.msg.html

(cl:defclass <TOSNET_read-request> (roslisp-msg-protocol:ros-message)
  ((reg
    :reader reg
    :initarg :reg
    :type cl:fixnum
    :initform 0)
   (word
    :reader word
    :initarg :word
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TOSNET_read-request (<TOSNET_read-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TOSNET_read-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TOSNET_read-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name TOSNETDriver-srv:<TOSNET_read-request> is deprecated: use TOSNETDriver-srv:TOSNET_read-request instead.")))

(cl:ensure-generic-function 'reg-val :lambda-list '(m))
(cl:defmethod reg-val ((m <TOSNET_read-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader TOSNETDriver-srv:reg-val is deprecated.  Use TOSNETDriver-srv:reg instead.")
  (reg m))

(cl:ensure-generic-function 'word-val :lambda-list '(m))
(cl:defmethod word-val ((m <TOSNET_read-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader TOSNETDriver-srv:word-val is deprecated.  Use TOSNETDriver-srv:word instead.")
  (word m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TOSNET_read-request>) ostream)
  "Serializes a message object of type '<TOSNET_read-request>"
  (cl:let* ((signed (cl:slot-value msg 'reg)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'word)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TOSNET_read-request>) istream)
  "Deserializes a message object of type '<TOSNET_read-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reg) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'word) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TOSNET_read-request>)))
  "Returns string type for a service object of type '<TOSNET_read-request>"
  "TOSNETDriver/TOSNET_readRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TOSNET_read-request)))
  "Returns string type for a service object of type 'TOSNET_read-request"
  "TOSNETDriver/TOSNET_readRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TOSNET_read-request>)))
  "Returns md5sum for a message object of type '<TOSNET_read-request>"
  "7a1389022a43a005fc80479618997846")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TOSNET_read-request)))
  "Returns md5sum for a message object of type 'TOSNET_read-request"
  "7a1389022a43a005fc80479618997846")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TOSNET_read-request>)))
  "Returns full string definition for message of type '<TOSNET_read-request>"
  (cl:format cl:nil "int8 reg~%int8 word~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TOSNET_read-request)))
  "Returns full string definition for message of type 'TOSNET_read-request"
  (cl:format cl:nil "int8 reg~%int8 word~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TOSNET_read-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TOSNET_read-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TOSNET_read-request
    (cl:cons ':reg (reg msg))
    (cl:cons ':word (word msg))
))
;//! \htmlinclude TOSNET_read-response.msg.html

(cl:defclass <TOSNET_read-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass TOSNET_read-response (<TOSNET_read-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TOSNET_read-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TOSNET_read-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name TOSNETDriver-srv:<TOSNET_read-response> is deprecated: use TOSNETDriver-srv:TOSNET_read-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <TOSNET_read-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader TOSNETDriver-srv:data-val is deprecated.  Use TOSNETDriver-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TOSNET_read-response>) ostream)
  "Serializes a message object of type '<TOSNET_read-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TOSNET_read-response>) istream)
  "Deserializes a message object of type '<TOSNET_read-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TOSNET_read-response>)))
  "Returns string type for a service object of type '<TOSNET_read-response>"
  "TOSNETDriver/TOSNET_readResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TOSNET_read-response)))
  "Returns string type for a service object of type 'TOSNET_read-response"
  "TOSNETDriver/TOSNET_readResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TOSNET_read-response>)))
  "Returns md5sum for a message object of type '<TOSNET_read-response>"
  "7a1389022a43a005fc80479618997846")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TOSNET_read-response)))
  "Returns md5sum for a message object of type 'TOSNET_read-response"
  "7a1389022a43a005fc80479618997846")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TOSNET_read-response>)))
  "Returns full string definition for message of type '<TOSNET_read-response>"
  (cl:format cl:nil "string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TOSNET_read-response)))
  "Returns full string definition for message of type 'TOSNET_read-response"
  (cl:format cl:nil "string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TOSNET_read-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TOSNET_read-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TOSNET_read-response
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TOSNET_read)))
  'TOSNET_read-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TOSNET_read)))
  'TOSNET_read-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TOSNET_read)))
  "Returns string type for a service object of type '<TOSNET_read>"
  "TOSNETDriver/TOSNET_read")