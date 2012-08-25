; Auto-generated. Do not edit!


(cl:in-package TOSNETDriver-srv)


;//! \htmlinclude TOSNET_write-request.msg.html

(cl:defclass <TOSNET_write-request> (roslisp-msg-protocol:ros-message)
  ((reg
    :reader reg
    :initarg :reg
    :type cl:fixnum
    :initform 0)
   (word
    :reader word
    :initarg :word
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass TOSNET_write-request (<TOSNET_write-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TOSNET_write-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TOSNET_write-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name TOSNETDriver-srv:<TOSNET_write-request> is deprecated: use TOSNETDriver-srv:TOSNET_write-request instead.")))

(cl:ensure-generic-function 'reg-val :lambda-list '(m))
(cl:defmethod reg-val ((m <TOSNET_write-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader TOSNETDriver-srv:reg-val is deprecated.  Use TOSNETDriver-srv:reg instead.")
  (reg m))

(cl:ensure-generic-function 'word-val :lambda-list '(m))
(cl:defmethod word-val ((m <TOSNET_write-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader TOSNETDriver-srv:word-val is deprecated.  Use TOSNETDriver-srv:word instead.")
  (word m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <TOSNET_write-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader TOSNETDriver-srv:data-val is deprecated.  Use TOSNETDriver-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TOSNET_write-request>) ostream)
  "Serializes a message object of type '<TOSNET_write-request>"
  (cl:let* ((signed (cl:slot-value msg 'reg)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'word)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TOSNET_write-request>) istream)
  "Deserializes a message object of type '<TOSNET_write-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reg) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'word) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TOSNET_write-request>)))
  "Returns string type for a service object of type '<TOSNET_write-request>"
  "TOSNETDriver/TOSNET_writeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TOSNET_write-request)))
  "Returns string type for a service object of type 'TOSNET_write-request"
  "TOSNETDriver/TOSNET_writeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TOSNET_write-request>)))
  "Returns md5sum for a message object of type '<TOSNET_write-request>"
  "5801e791d40e1c3270e20e12cf5a168d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TOSNET_write-request)))
  "Returns md5sum for a message object of type 'TOSNET_write-request"
  "5801e791d40e1c3270e20e12cf5a168d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TOSNET_write-request>)))
  "Returns full string definition for message of type '<TOSNET_write-request>"
  (cl:format cl:nil "int8 reg~%int8 word~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TOSNET_write-request)))
  "Returns full string definition for message of type 'TOSNET_write-request"
  (cl:format cl:nil "int8 reg~%int8 word~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TOSNET_write-request>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TOSNET_write-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TOSNET_write-request
    (cl:cons ':reg (reg msg))
    (cl:cons ':word (word msg))
    (cl:cons ':data (data msg))
))
;//! \htmlinclude TOSNET_write-response.msg.html

(cl:defclass <TOSNET_write-response> (roslisp-msg-protocol:ros-message)
  ((errorCode
    :reader errorCode
    :initarg :errorCode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TOSNET_write-response (<TOSNET_write-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TOSNET_write-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TOSNET_write-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name TOSNETDriver-srv:<TOSNET_write-response> is deprecated: use TOSNETDriver-srv:TOSNET_write-response instead.")))

(cl:ensure-generic-function 'errorCode-val :lambda-list '(m))
(cl:defmethod errorCode-val ((m <TOSNET_write-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader TOSNETDriver-srv:errorCode-val is deprecated.  Use TOSNETDriver-srv:errorCode instead.")
  (errorCode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TOSNET_write-response>) ostream)
  "Serializes a message object of type '<TOSNET_write-response>"
  (cl:let* ((signed (cl:slot-value msg 'errorCode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TOSNET_write-response>) istream)
  "Deserializes a message object of type '<TOSNET_write-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'errorCode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TOSNET_write-response>)))
  "Returns string type for a service object of type '<TOSNET_write-response>"
  "TOSNETDriver/TOSNET_writeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TOSNET_write-response)))
  "Returns string type for a service object of type 'TOSNET_write-response"
  "TOSNETDriver/TOSNET_writeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TOSNET_write-response>)))
  "Returns md5sum for a message object of type '<TOSNET_write-response>"
  "5801e791d40e1c3270e20e12cf5a168d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TOSNET_write-response)))
  "Returns md5sum for a message object of type 'TOSNET_write-response"
  "5801e791d40e1c3270e20e12cf5a168d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TOSNET_write-response>)))
  "Returns full string definition for message of type '<TOSNET_write-response>"
  (cl:format cl:nil "int8 errorCode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TOSNET_write-response)))
  "Returns full string definition for message of type 'TOSNET_write-response"
  (cl:format cl:nil "int8 errorCode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TOSNET_write-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TOSNET_write-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TOSNET_write-response
    (cl:cons ':errorCode (errorCode msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TOSNET_write)))
  'TOSNET_write-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TOSNET_write)))
  'TOSNET_write-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TOSNET_write)))
  "Returns string type for a service object of type '<TOSNET_write>"
  "TOSNETDriver/TOSNET_write")