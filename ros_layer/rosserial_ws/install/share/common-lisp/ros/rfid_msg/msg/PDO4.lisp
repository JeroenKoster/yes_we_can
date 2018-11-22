; Auto-generated. Do not edit!


(cl:in-package rfid_msg-msg)


;//! \htmlinclude PDO4.msg.html

(cl:defclass <PDO4> (roslisp-msg-protocol:ros-message)
  ((accX
    :reader accX
    :initarg :accX
    :type cl:float
    :initform 0.0)
   (accY
    :reader accY
    :initarg :accY
    :type cl:float
    :initform 0.0)
   (accZ
    :reader accZ
    :initarg :accZ
    :type cl:float
    :initform 0.0)
   (posResult
    :reader posResult
    :initarg :posResult
    :type cl:boolean
    :initform cl:nil)
   (error
    :reader error
    :initarg :error
    :type cl:boolean
    :initform cl:nil)
   (inaccurate
    :reader inaccurate
    :initarg :inaccurate
    :type cl:boolean
    :initform cl:nil)
   (analysisError
    :reader analysisError
    :initarg :analysisError
    :type cl:boolean
    :initform cl:nil)
   (tdiffError
    :reader tdiffError
    :initarg :tdiffError
    :type cl:boolean
    :initform cl:nil)
   (speedError
    :reader speedError
    :initarg :speedError
    :type cl:boolean
    :initform cl:nil)
   (speedSignError
    :reader speedSignError
    :initarg :speedSignError
    :type cl:boolean
    :initform cl:nil)
   (speedAccelerationError
    :reader speedAccelerationError
    :initarg :speedAccelerationError
    :type cl:boolean
    :initform cl:nil)
   (posOutOfBoundsError
    :reader posOutOfBoundsError
    :initarg :posOutOfBoundsError
    :type cl:boolean
    :initform cl:nil)
   (noResultError
    :reader noResultError
    :initarg :noResultError
    :type cl:boolean
    :initform cl:nil)
   (positionResultFault
    :reader positionResultFault
    :initarg :positionResultFault
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PDO4 (<PDO4>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PDO4>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PDO4)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rfid_msg-msg:<PDO4> is deprecated: use rfid_msg-msg:PDO4 instead.")))

(cl:ensure-generic-function 'accX-val :lambda-list '(m))
(cl:defmethod accX-val ((m <PDO4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:accX-val is deprecated.  Use rfid_msg-msg:accX instead.")
  (accX m))

(cl:ensure-generic-function 'accY-val :lambda-list '(m))
(cl:defmethod accY-val ((m <PDO4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:accY-val is deprecated.  Use rfid_msg-msg:accY instead.")
  (accY m))

(cl:ensure-generic-function 'accZ-val :lambda-list '(m))
(cl:defmethod accZ-val ((m <PDO4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:accZ-val is deprecated.  Use rfid_msg-msg:accZ instead.")
  (accZ m))

(cl:ensure-generic-function 'posResult-val :lambda-list '(m))
(cl:defmethod posResult-val ((m <PDO4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:posResult-val is deprecated.  Use rfid_msg-msg:posResult instead.")
  (posResult m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <PDO4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:error-val is deprecated.  Use rfid_msg-msg:error instead.")
  (error m))

(cl:ensure-generic-function 'inaccurate-val :lambda-list '(m))
(cl:defmethod inaccurate-val ((m <PDO4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:inaccurate-val is deprecated.  Use rfid_msg-msg:inaccurate instead.")
  (inaccurate m))

(cl:ensure-generic-function 'analysisError-val :lambda-list '(m))
(cl:defmethod analysisError-val ((m <PDO4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:analysisError-val is deprecated.  Use rfid_msg-msg:analysisError instead.")
  (analysisError m))

(cl:ensure-generic-function 'tdiffError-val :lambda-list '(m))
(cl:defmethod tdiffError-val ((m <PDO4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:tdiffError-val is deprecated.  Use rfid_msg-msg:tdiffError instead.")
  (tdiffError m))

(cl:ensure-generic-function 'speedError-val :lambda-list '(m))
(cl:defmethod speedError-val ((m <PDO4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:speedError-val is deprecated.  Use rfid_msg-msg:speedError instead.")
  (speedError m))

(cl:ensure-generic-function 'speedSignError-val :lambda-list '(m))
(cl:defmethod speedSignError-val ((m <PDO4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:speedSignError-val is deprecated.  Use rfid_msg-msg:speedSignError instead.")
  (speedSignError m))

(cl:ensure-generic-function 'speedAccelerationError-val :lambda-list '(m))
(cl:defmethod speedAccelerationError-val ((m <PDO4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:speedAccelerationError-val is deprecated.  Use rfid_msg-msg:speedAccelerationError instead.")
  (speedAccelerationError m))

(cl:ensure-generic-function 'posOutOfBoundsError-val :lambda-list '(m))
(cl:defmethod posOutOfBoundsError-val ((m <PDO4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:posOutOfBoundsError-val is deprecated.  Use rfid_msg-msg:posOutOfBoundsError instead.")
  (posOutOfBoundsError m))

(cl:ensure-generic-function 'noResultError-val :lambda-list '(m))
(cl:defmethod noResultError-val ((m <PDO4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:noResultError-val is deprecated.  Use rfid_msg-msg:noResultError instead.")
  (noResultError m))

(cl:ensure-generic-function 'positionResultFault-val :lambda-list '(m))
(cl:defmethod positionResultFault-val ((m <PDO4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:positionResultFault-val is deprecated.  Use rfid_msg-msg:positionResultFault instead.")
  (positionResultFault m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PDO4>) ostream)
  "Serializes a message object of type '<PDO4>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'posResult) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'inaccurate) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'analysisError) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tdiffError) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'speedError) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'speedSignError) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'speedAccelerationError) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'posOutOfBoundsError) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'noResultError) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'positionResultFault) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PDO4>) istream)
  "Deserializes a message object of type '<PDO4>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accZ) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'posResult) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'inaccurate) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'analysisError) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'tdiffError) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'speedError) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'speedSignError) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'speedAccelerationError) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'posOutOfBoundsError) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'noResultError) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'positionResultFault) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PDO4>)))
  "Returns string type for a message object of type '<PDO4>"
  "rfid_msg/PDO4")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PDO4)))
  "Returns string type for a message object of type 'PDO4"
  "rfid_msg/PDO4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PDO4>)))
  "Returns md5sum for a message object of type '<PDO4>"
  "50aae4a0ce8f7819ec3249b06ed01686")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PDO4)))
  "Returns md5sum for a message object of type 'PDO4"
  "50aae4a0ce8f7819ec3249b06ed01686")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PDO4>)))
  "Returns full string definition for message of type '<PDO4>"
  (cl:format cl:nil "float32 accX~%float32 accY~%float32 accZ~%bool posResult~%bool error~%bool inaccurate~%bool analysisError~%bool tdiffError~%bool speedError~%bool speedSignError~%bool speedAccelerationError~%bool posOutOfBoundsError~%bool noResultError~%bool positionResultFault~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PDO4)))
  "Returns full string definition for message of type 'PDO4"
  (cl:format cl:nil "float32 accX~%float32 accY~%float32 accZ~%bool posResult~%bool error~%bool inaccurate~%bool analysisError~%bool tdiffError~%bool speedError~%bool speedSignError~%bool speedAccelerationError~%bool posOutOfBoundsError~%bool noResultError~%bool positionResultFault~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PDO4>))
  (cl:+ 0
     4
     4
     4
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PDO4>))
  "Converts a ROS message object to a list"
  (cl:list 'PDO4
    (cl:cons ':accX (accX msg))
    (cl:cons ':accY (accY msg))
    (cl:cons ':accZ (accZ msg))
    (cl:cons ':posResult (posResult msg))
    (cl:cons ':error (error msg))
    (cl:cons ':inaccurate (inaccurate msg))
    (cl:cons ':analysisError (analysisError msg))
    (cl:cons ':tdiffError (tdiffError msg))
    (cl:cons ':speedError (speedError msg))
    (cl:cons ':speedSignError (speedSignError msg))
    (cl:cons ':speedAccelerationError (speedAccelerationError msg))
    (cl:cons ':posOutOfBoundsError (posOutOfBoundsError msg))
    (cl:cons ':noResultError (noResultError msg))
    (cl:cons ':positionResultFault (positionResultFault msg))
))
