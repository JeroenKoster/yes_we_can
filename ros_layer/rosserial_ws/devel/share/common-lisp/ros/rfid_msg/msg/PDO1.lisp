; Auto-generated. Do not edit!


(cl:in-package rfid_msg-msg)


;//! \htmlinclude PDO1.msg.html

(cl:defclass <PDO1> (roslisp-msg-protocol:ros-message)
  ((tagInField
    :reader tagInField
    :initarg :tagInField
    :type cl:boolean
    :initform cl:nil)
   (codeOk
    :reader codeOk
    :initarg :codeOk
    :type cl:boolean
    :initform cl:nil)
   (xyDeviationDetermined
    :reader xyDeviationDetermined
    :initarg :xyDeviationDetermined
    :type cl:boolean
    :initform cl:nil)
   (centerPuls
    :reader centerPuls
    :initarg :centerPuls
    :type cl:boolean
    :initform cl:nil)
   (positionError
    :reader positionError
    :initarg :positionError
    :type cl:boolean
    :initform cl:nil)
   (positionEstimate
    :reader positionEstimate
    :initarg :positionEstimate
    :type cl:boolean
    :initform cl:nil)
   (fatalError
    :reader fatalError
    :initarg :fatalError
    :type cl:boolean
    :initform cl:nil)
   (antennaStarted
    :reader antennaStarted
    :initarg :antennaStarted
    :type cl:boolean
    :initform cl:nil)
   (rfidCode
    :reader rfidCode
    :initarg :rfidCode
    :type cl:float
    :initform 0.0)
   (xDeviation
    :reader xDeviation
    :initarg :xDeviation
    :type cl:float
    :initform 0.0)
   (yDeviation
    :reader yDeviation
    :initarg :yDeviation
    :type cl:float
    :initform 0.0))
)

(cl:defclass PDO1 (<PDO1>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PDO1>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PDO1)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rfid_msg-msg:<PDO1> is deprecated: use rfid_msg-msg:PDO1 instead.")))

(cl:ensure-generic-function 'tagInField-val :lambda-list '(m))
(cl:defmethod tagInField-val ((m <PDO1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:tagInField-val is deprecated.  Use rfid_msg-msg:tagInField instead.")
  (tagInField m))

(cl:ensure-generic-function 'codeOk-val :lambda-list '(m))
(cl:defmethod codeOk-val ((m <PDO1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:codeOk-val is deprecated.  Use rfid_msg-msg:codeOk instead.")
  (codeOk m))

(cl:ensure-generic-function 'xyDeviationDetermined-val :lambda-list '(m))
(cl:defmethod xyDeviationDetermined-val ((m <PDO1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:xyDeviationDetermined-val is deprecated.  Use rfid_msg-msg:xyDeviationDetermined instead.")
  (xyDeviationDetermined m))

(cl:ensure-generic-function 'centerPuls-val :lambda-list '(m))
(cl:defmethod centerPuls-val ((m <PDO1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:centerPuls-val is deprecated.  Use rfid_msg-msg:centerPuls instead.")
  (centerPuls m))

(cl:ensure-generic-function 'positionError-val :lambda-list '(m))
(cl:defmethod positionError-val ((m <PDO1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:positionError-val is deprecated.  Use rfid_msg-msg:positionError instead.")
  (positionError m))

(cl:ensure-generic-function 'positionEstimate-val :lambda-list '(m))
(cl:defmethod positionEstimate-val ((m <PDO1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:positionEstimate-val is deprecated.  Use rfid_msg-msg:positionEstimate instead.")
  (positionEstimate m))

(cl:ensure-generic-function 'fatalError-val :lambda-list '(m))
(cl:defmethod fatalError-val ((m <PDO1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:fatalError-val is deprecated.  Use rfid_msg-msg:fatalError instead.")
  (fatalError m))

(cl:ensure-generic-function 'antennaStarted-val :lambda-list '(m))
(cl:defmethod antennaStarted-val ((m <PDO1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:antennaStarted-val is deprecated.  Use rfid_msg-msg:antennaStarted instead.")
  (antennaStarted m))

(cl:ensure-generic-function 'rfidCode-val :lambda-list '(m))
(cl:defmethod rfidCode-val ((m <PDO1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:rfidCode-val is deprecated.  Use rfid_msg-msg:rfidCode instead.")
  (rfidCode m))

(cl:ensure-generic-function 'xDeviation-val :lambda-list '(m))
(cl:defmethod xDeviation-val ((m <PDO1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:xDeviation-val is deprecated.  Use rfid_msg-msg:xDeviation instead.")
  (xDeviation m))

(cl:ensure-generic-function 'yDeviation-val :lambda-list '(m))
(cl:defmethod yDeviation-val ((m <PDO1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rfid_msg-msg:yDeviation-val is deprecated.  Use rfid_msg-msg:yDeviation instead.")
  (yDeviation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PDO1>) ostream)
  "Serializes a message object of type '<PDO1>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tagInField) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'codeOk) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'xyDeviationDetermined) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'centerPuls) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'positionError) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'positionEstimate) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fatalError) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'antennaStarted) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rfidCode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'xDeviation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yDeviation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PDO1>) istream)
  "Deserializes a message object of type '<PDO1>"
    (cl:setf (cl:slot-value msg 'tagInField) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'codeOk) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'xyDeviationDetermined) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'centerPuls) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'positionError) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'positionEstimate) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fatalError) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'antennaStarted) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rfidCode) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xDeviation) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yDeviation) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PDO1>)))
  "Returns string type for a message object of type '<PDO1>"
  "rfid_msg/PDO1")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PDO1)))
  "Returns string type for a message object of type 'PDO1"
  "rfid_msg/PDO1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PDO1>)))
  "Returns md5sum for a message object of type '<PDO1>"
  "530464652e88ccd5dd9df1e0e69d16b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PDO1)))
  "Returns md5sum for a message object of type 'PDO1"
  "530464652e88ccd5dd9df1e0e69d16b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PDO1>)))
  "Returns full string definition for message of type '<PDO1>"
  (cl:format cl:nil "bool tagInField~%bool codeOk~%bool xyDeviationDetermined~%bool centerPuls~%bool positionError~%bool positionEstimate~%bool fatalError~%bool antennaStarted~%float32 rfidCode~%float32 xDeviation~%float32 yDeviation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PDO1)))
  "Returns full string definition for message of type 'PDO1"
  (cl:format cl:nil "bool tagInField~%bool codeOk~%bool xyDeviationDetermined~%bool centerPuls~%bool positionError~%bool positionEstimate~%bool fatalError~%bool antennaStarted~%float32 rfidCode~%float32 xDeviation~%float32 yDeviation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PDO1>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PDO1>))
  "Converts a ROS message object to a list"
  (cl:list 'PDO1
    (cl:cons ':tagInField (tagInField msg))
    (cl:cons ':codeOk (codeOk msg))
    (cl:cons ':xyDeviationDetermined (xyDeviationDetermined msg))
    (cl:cons ':centerPuls (centerPuls msg))
    (cl:cons ':positionError (positionError msg))
    (cl:cons ':positionEstimate (positionEstimate msg))
    (cl:cons ':fatalError (fatalError msg))
    (cl:cons ':antennaStarted (antennaStarted msg))
    (cl:cons ':rfidCode (rfidCode msg))
    (cl:cons ':xDeviation (xDeviation msg))
    (cl:cons ':yDeviation (yDeviation msg))
))
