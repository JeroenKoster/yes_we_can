; Auto-generated. Do not edit!


(cl:in-package rfid_msg-msg)


;//! \htmlinclude PDO2.msg.html

(cl:defclass <PDO2> (roslisp-msg-protocol:ros-message)
  ((inductionPosition1
    :reader inductionPosition1
    :initarg :inductionPosition1
    :type cl:float
    :initform 0.0)
   (inductionSignal1
    :reader inductionSignal1
    :initarg :inductionSignal1
    :type cl:float
    :initform 0.0)
   (inductionPosition2
    :reader inductionPosition2
    :initarg :inductionPosition2
    :type cl:float
    :initform 0.0)
   (inductionSignal2
    :reader inductionSignal2
    :initarg :inductionSignal2
    :type cl:float
    :initform 0.0))
)

(cl:defclass PDO2 (<PDO2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PDO2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PDO2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rfid_msg-msg:<PDO2> is deprecated: use rfid_msg-msg:PDO2 instead.")))

(cl:ensure-generic-function 'inductionPosition1-val :lambda-list '(m))
(cl:defmethod inductionPosition1-val ((m <PDO2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:inductionPosition1-val is deprecated.  Use rfid_msg-msg:inductionPosition1 instead.")
  (inductionPosition1 m))

(cl:ensure-generic-function 'inductionSignal1-val :lambda-list '(m))
(cl:defmethod inductionSignal1-val ((m <PDO2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:inductionSignal1-val is deprecated.  Use rfid_msg-msg:inductionSignal1 instead.")
  (inductionSignal1 m))

(cl:ensure-generic-function 'inductionPosition2-val :lambda-list '(m))
(cl:defmethod inductionPosition2-val ((m <PDO2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:inductionPosition2-val is deprecated.  Use rfid_msg-msg:inductionPosition2 instead.")
  (inductionPosition2 m))

(cl:ensure-generic-function 'inductionSignal2-val :lambda-list '(m))
(cl:defmethod inductionSignal2-val ((m <PDO2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:inductionSignal2-val is deprecated.  Use rfid_msg-msg:inductionSignal2 instead.")
  (inductionSignal2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PDO2>) ostream)
  "Serializes a message object of type '<PDO2>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'inductionPosition1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'inductionSignal1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'inductionPosition2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'inductionSignal2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PDO2>) istream)
  "Deserializes a message object of type '<PDO2>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'inductionPosition1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'inductionSignal1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'inductionPosition2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'inductionSignal2) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PDO2>)))
  "Returns string type for a message object of type '<PDO2>"
  "rfid_msg/PDO2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PDO2)))
  "Returns string type for a message object of type 'PDO2"
  "rfid_msg/PDO2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PDO2>)))
  "Returns md5sum for a message object of type '<PDO2>"
  "e090932213462699dc59df25654c653e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PDO2)))
  "Returns md5sum for a message object of type 'PDO2"
  "e090932213462699dc59df25654c653e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PDO2>)))
  "Returns full string definition for message of type '<PDO2>"
  (cl:format cl:nil "float32 inductionPosition1~%float32 inductionSignal1~%float32 inductionPosition2~%float32 inductionSignal2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PDO2)))
  "Returns full string definition for message of type 'PDO2"
  (cl:format cl:nil "float32 inductionPosition1~%float32 inductionSignal1~%float32 inductionPosition2~%float32 inductionSignal2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PDO2>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PDO2>))
  "Converts a ROS message object to a list"
  (cl:list 'PDO2
    (cl:cons ':inductionPosition1 (inductionPosition1 msg))
    (cl:cons ':inductionSignal1 (inductionSignal1 msg))
    (cl:cons ':inductionPosition2 (inductionPosition2 msg))
    (cl:cons ':inductionSignal2 (inductionSignal2 msg))
))
