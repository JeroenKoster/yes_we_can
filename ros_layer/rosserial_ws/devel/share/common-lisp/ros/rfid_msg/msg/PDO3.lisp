; Auto-generated. Do not edit!


(cl:in-package rfid_msg-msg)


;//! \htmlinclude PDO3.msg.html

(cl:defclass <PDO3> (roslisp-msg-protocol:ros-message)
  ((gyroX
    :reader gyroX
    :initarg :gyroX
    :type cl:float
    :initform 0.0)
   (gyroY
    :reader gyroY
    :initarg :gyroY
    :type cl:float
    :initform 0.0)
   (gyroZ
    :reader gyroZ
    :initarg :gyroZ
    :type cl:float
    :initform 0.0)
   (rfidSignal1
    :reader rfidSignal1
    :initarg :rfidSignal1
    :type cl:float
    :initform 0.0)
   (rfidSignal2
    :reader rfidSignal2
    :initarg :rfidSignal2
    :type cl:float
    :initform 0.0))
)

(cl:defclass PDO3 (<PDO3>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PDO3>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PDO3)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rfid_msg-msg:<PDO3> is deprecated: use rfid_msg-msg:PDO3 instead.")))

(cl:ensure-generic-function 'gyroX-val :lambda-list '(m))
(cl:defmethod gyroX-val ((m <PDO3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:gyroX-val is deprecated.  Use rfid_msg-msg:gyroX instead.")
  (gyroX m))

(cl:ensure-generic-function 'gyroY-val :lambda-list '(m))
(cl:defmethod gyroY-val ((m <PDO3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:gyroY-val is deprecated.  Use rfid_msg-msg:gyroY instead.")
  (gyroY m))

(cl:ensure-generic-function 'gyroZ-val :lambda-list '(m))
(cl:defmethod gyroZ-val ((m <PDO3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:gyroZ-val is deprecated.  Use rfid_msg-msg:gyroZ instead.")
  (gyroZ m))

(cl:ensure-generic-function 'rfidSignal1-val :lambda-list '(m))
(cl:defmethod rfidSignal1-val ((m <PDO3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:rfidSignal1-val is deprecated.  Use rfid_msg-msg:rfidSignal1 instead.")
  (rfidSignal1 m))

(cl:ensure-generic-function 'rfidSignal2-val :lambda-list '(m))
(cl:defmethod rfidSignal2-val ((m <PDO3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:rfidSignal2-val is deprecated.  Use rfid_msg-msg:rfidSignal2 instead.")
  (rfidSignal2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PDO3>) ostream)
  "Serializes a message object of type '<PDO3>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyroX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyroY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyroZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rfidSignal1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rfidSignal2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PDO3>) istream)
  "Deserializes a message object of type '<PDO3>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyroX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyroY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyroZ) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rfidSignal1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rfidSignal2) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PDO3>)))
  "Returns string type for a message object of type '<PDO3>"
  "rfid_msg/PDO3")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PDO3)))
  "Returns string type for a message object of type 'PDO3"
  "rfid_msg/PDO3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PDO3>)))
  "Returns md5sum for a message object of type '<PDO3>"
  "3ad77accb5978b7a753a2d9c57d247a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PDO3)))
  "Returns md5sum for a message object of type 'PDO3"
  "3ad77accb5978b7a753a2d9c57d247a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PDO3>)))
  "Returns full string definition for message of type '<PDO3>"
  (cl:format cl:nil "float32 gyroX~%float32 gyroY~%float32 gyroZ~%float32 rfidSignal1~%float32 rfidSignal2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PDO3)))
  "Returns full string definition for message of type 'PDO3"
  (cl:format cl:nil "float32 gyroX~%float32 gyroY~%float32 gyroZ~%float32 rfidSignal1~%float32 rfidSignal2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PDO3>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PDO3>))
  "Converts a ROS message object to a list"
  (cl:list 'PDO3
    (cl:cons ':gyroX (gyroX msg))
    (cl:cons ':gyroY (gyroY msg))
    (cl:cons ':gyroZ (gyroZ msg))
    (cl:cons ':rfidSignal1 (rfidSignal1 msg))
    (cl:cons ':rfidSignal2 (rfidSignal2 msg))
))
