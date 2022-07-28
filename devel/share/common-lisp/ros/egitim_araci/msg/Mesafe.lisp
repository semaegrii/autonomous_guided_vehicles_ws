; Auto-generated. Do not edit!


(cl:in-package egitim_araci-msg)


;//! \htmlinclude Mesafe.msg.html

(cl:defclass <Mesafe> (roslisp-msg-protocol:ros-message)
  ((mesafe
    :reader mesafe
    :initarg :mesafe
    :type cl:float
    :initform 0.0))
)

(cl:defclass Mesafe (<Mesafe>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Mesafe>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Mesafe)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name egitim_araci-msg:<Mesafe> is deprecated: use egitim_araci-msg:Mesafe instead.")))

(cl:ensure-generic-function 'mesafe-val :lambda-list '(m))
(cl:defmethod mesafe-val ((m <Mesafe>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader egitim_araci-msg:mesafe-val is deprecated.  Use egitim_araci-msg:mesafe instead.")
  (mesafe m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Mesafe>) ostream)
  "Serializes a message object of type '<Mesafe>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mesafe))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Mesafe>) istream)
  "Deserializes a message object of type '<Mesafe>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mesafe) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Mesafe>)))
  "Returns string type for a message object of type '<Mesafe>"
  "egitim_araci/Mesafe")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mesafe)))
  "Returns string type for a message object of type 'Mesafe"
  "egitim_araci/Mesafe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Mesafe>)))
  "Returns md5sum for a message object of type '<Mesafe>"
  "67ce55637aff33e83a28f98ea42e7243")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Mesafe)))
  "Returns md5sum for a message object of type 'Mesafe"
  "67ce55637aff33e83a28f98ea42e7243")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Mesafe>)))
  "Returns full string definition for message of type '<Mesafe>"
  (cl:format cl:nil "float64 mesafe~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Mesafe)))
  "Returns full string definition for message of type 'Mesafe"
  (cl:format cl:nil "float64 mesafe~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Mesafe>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Mesafe>))
  "Converts a ROS message object to a list"
  (cl:list 'Mesafe
    (cl:cons ':mesafe (mesafe msg))
))
