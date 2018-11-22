;; Auto-generated. Do not edit!


(when (boundp 'rfid_msg::PDO1)
  (if (not (find-package "RFID_MSG"))
    (make-package "RFID_MSG"))
  (shadow 'PDO1 (find-package "RFID_MSG")))
(unless (find-package "RFID_MSG::PDO1")
  (make-package "RFID_MSG::PDO1"))

(in-package "ROS")
;;//! \htmlinclude PDO1.msg.html


(defclass rfid_msg::PDO1
  :super ros::object
  :slots (_tagInField _codeOk _xyDeviationDetermined _centerPuls _positionError _positionEstimate _fatalError _antennaStarted _rfidCode _xDeviation _yDeviation ))

(defmethod rfid_msg::PDO1
  (:init
   (&key
    ((:tagInField __tagInField) nil)
    ((:codeOk __codeOk) nil)
    ((:xyDeviationDetermined __xyDeviationDetermined) nil)
    ((:centerPuls __centerPuls) nil)
    ((:positionError __positionError) nil)
    ((:positionEstimate __positionEstimate) nil)
    ((:fatalError __fatalError) nil)
    ((:antennaStarted __antennaStarted) nil)
    ((:rfidCode __rfidCode) 0.0)
    ((:xDeviation __xDeviation) 0.0)
    ((:yDeviation __yDeviation) 0.0)
    )
   (send-super :init)
   (setq _tagInField __tagInField)
   (setq _codeOk __codeOk)
   (setq _xyDeviationDetermined __xyDeviationDetermined)
   (setq _centerPuls __centerPuls)
   (setq _positionError __positionError)
   (setq _positionEstimate __positionEstimate)
   (setq _fatalError __fatalError)
   (setq _antennaStarted __antennaStarted)
   (setq _rfidCode (float __rfidCode))
   (setq _xDeviation (float __xDeviation))
   (setq _yDeviation (float __yDeviation))
   self)
  (:tagInField
   (&optional __tagInField)
   (if __tagInField (setq _tagInField __tagInField)) _tagInField)
  (:codeOk
   (&optional __codeOk)
   (if __codeOk (setq _codeOk __codeOk)) _codeOk)
  (:xyDeviationDetermined
   (&optional __xyDeviationDetermined)
   (if __xyDeviationDetermined (setq _xyDeviationDetermined __xyDeviationDetermined)) _xyDeviationDetermined)
  (:centerPuls
   (&optional __centerPuls)
   (if __centerPuls (setq _centerPuls __centerPuls)) _centerPuls)
  (:positionError
   (&optional __positionError)
   (if __positionError (setq _positionError __positionError)) _positionError)
  (:positionEstimate
   (&optional __positionEstimate)
   (if __positionEstimate (setq _positionEstimate __positionEstimate)) _positionEstimate)
  (:fatalError
   (&optional __fatalError)
   (if __fatalError (setq _fatalError __fatalError)) _fatalError)
  (:antennaStarted
   (&optional __antennaStarted)
   (if __antennaStarted (setq _antennaStarted __antennaStarted)) _antennaStarted)
  (:rfidCode
   (&optional __rfidCode)
   (if __rfidCode (setq _rfidCode __rfidCode)) _rfidCode)
  (:xDeviation
   (&optional __xDeviation)
   (if __xDeviation (setq _xDeviation __xDeviation)) _xDeviation)
  (:yDeviation
   (&optional __yDeviation)
   (if __yDeviation (setq _yDeviation __yDeviation)) _yDeviation)
  (:serialization-length
   ()
   (+
    ;; bool _tagInField
    1
    ;; bool _codeOk
    1
    ;; bool _xyDeviationDetermined
    1
    ;; bool _centerPuls
    1
    ;; bool _positionError
    1
    ;; bool _positionEstimate
    1
    ;; bool _fatalError
    1
    ;; bool _antennaStarted
    1
    ;; float32 _rfidCode
    4
    ;; float32 _xDeviation
    4
    ;; float32 _yDeviation
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _tagInField
       (if _tagInField (write-byte -1 s) (write-byte 0 s))
     ;; bool _codeOk
       (if _codeOk (write-byte -1 s) (write-byte 0 s))
     ;; bool _xyDeviationDetermined
       (if _xyDeviationDetermined (write-byte -1 s) (write-byte 0 s))
     ;; bool _centerPuls
       (if _centerPuls (write-byte -1 s) (write-byte 0 s))
     ;; bool _positionError
       (if _positionError (write-byte -1 s) (write-byte 0 s))
     ;; bool _positionEstimate
       (if _positionEstimate (write-byte -1 s) (write-byte 0 s))
     ;; bool _fatalError
       (if _fatalError (write-byte -1 s) (write-byte 0 s))
     ;; bool _antennaStarted
       (if _antennaStarted (write-byte -1 s) (write-byte 0 s))
     ;; float32 _rfidCode
       (sys::poke _rfidCode (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _xDeviation
       (sys::poke _xDeviation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yDeviation
       (sys::poke _yDeviation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _tagInField
     (setq _tagInField (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _codeOk
     (setq _codeOk (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _xyDeviationDetermined
     (setq _xyDeviationDetermined (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _centerPuls
     (setq _centerPuls (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _positionError
     (setq _positionError (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _positionEstimate
     (setq _positionEstimate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fatalError
     (setq _fatalError (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _antennaStarted
     (setq _antennaStarted (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _rfidCode
     (setq _rfidCode (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _xDeviation
     (setq _xDeviation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yDeviation
     (setq _yDeviation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rfid_msg::PDO1 :md5sum-) "530464652e88ccd5dd9df1e0e69d16b1")
(setf (get rfid_msg::PDO1 :datatype-) "rfid_msg/PDO1")
(setf (get rfid_msg::PDO1 :definition-)
      "bool tagInField
bool codeOk
bool xyDeviationDetermined
bool centerPuls
bool positionError
bool positionEstimate
bool fatalError
bool antennaStarted
float32 rfidCode
float32 xDeviation
float32 yDeviation

")



(provide :rfid_msg/PDO1 "530464652e88ccd5dd9df1e0e69d16b1")


