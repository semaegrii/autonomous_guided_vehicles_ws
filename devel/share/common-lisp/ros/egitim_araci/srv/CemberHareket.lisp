; Auto-generated. Do not edit!


(cl:in-package egitim_araci-srv)


;//! \htmlinclude CemberHareket-request.msg.html

(cl:defclass <CemberHareket-request> (roslisp-msg-protocol:ros-message)
  ((yaricap
    :reader yaricap
    :initarg :yaricap
    :type cl:float
    :initform 0.0))
)

(cl:defclass CemberHareket-request (<CemberHareket-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CemberHareket-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CemberHareket-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name egitim_araci-srv:<CemberHareket-request> is deprecated: use egitim_araci-srv:CemberHareket-request instead.")))

(cl:ensure-generic-function 'yaricap-val :lambda-list '(m))
(cl:defmethod yaricap-val ((m <CemberHareket-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader egitim_araci-srv:yaricap-val is deprecated.  Use egitim_araci-srv:yaricap instead.")
  (yaricap m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CemberHareket-request>) ostream)
  "Serializes a message object of type '<CemberHareket-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaricap))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CemberHareket-request>) istream)
  "Deserializes a message object of type '<CemberHareket-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaricap) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CemberHareket-request>)))
  "Returns string type for a service object of type '<CemberHareket-request>"
  "egitim_araci/CemberHareketRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CemberHareket-request)))
  "Returns string type for a service object of type 'CemberHareket-request"
  "egitim_araci/CemberHareketRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CemberHareket-request>)))
  "Returns md5sum for a message object of type '<CemberHareket-request>"
  "534fdc954659adaf837ecd56d547676d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CemberHareket-request)))
  "Returns md5sum for a message object of type 'CemberHareket-request"
  "534fdc954659adaf837ecd56d547676d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CemberHareket-request>)))
  "Returns full string definition for message of type '<CemberHareket-request>"
  (cl:format cl:nil "float64 yaricap~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CemberHareket-request)))
  "Returns full string definition for message of type 'CemberHareket-request"
  (cl:format cl:nil "float64 yaricap~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CemberHareket-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CemberHareket-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CemberHareket-request
    (cl:cons ':yaricap (yaricap msg))
))
;//! \htmlinclude CemberHareket-response.msg.html

(cl:defclass <CemberHareket-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CemberHareket-response (<CemberHareket-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CemberHareket-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CemberHareket-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name egitim_araci-srv:<CemberHareket-response> is deprecated: use egitim_araci-srv:CemberHareket-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CemberHareket-response>) ostream)
  "Serializes a message object of type '<CemberHareket-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CemberHareket-response>) istream)
  "Deserializes a message object of type '<CemberHareket-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CemberHareket-response>)))
  "Returns string type for a service object of type '<CemberHareket-response>"
  "egitim_araci/CemberHareketResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CemberHareket-response)))
  "Returns string type for a service object of type 'CemberHareket-response"
  "egitim_araci/CemberHareketResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CemberHareket-response>)))
  "Returns md5sum for a message object of type '<CemberHareket-response>"
  "534fdc954659adaf837ecd56d547676d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CemberHareket-response)))
  "Returns md5sum for a message object of type 'CemberHareket-response"
  "534fdc954659adaf837ecd56d547676d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CemberHareket-response>)))
  "Returns full string definition for message of type '<CemberHareket-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CemberHareket-response)))
  "Returns full string definition for message of type 'CemberHareket-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CemberHareket-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CemberHareket-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CemberHareket-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CemberHareket)))
  'CemberHareket-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CemberHareket)))
  'CemberHareket-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CemberHareket)))
  "Returns string type for a service object of type '<CemberHareket>"
  "egitim_araci/CemberHareket")