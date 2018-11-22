;; Auto-generated. Do not edit!


(when (boundp 'rfid_msg::PDO4)
  (if (not (find-package "RFID_MSG"))
    (make-package "RFID_MSG"))
  (shadow 'PDO4 (find-package "RFID_MSG")))
(unless (find-package "RFID_MSG::PDO4")
  (make-package "RFID_MSG::PDO4"))

(in-package "ROS")
;;//! \htmlinclude PDO4.msg.html


(defclass rfid_msg::PDO4
  :super ros::object
  :slots (_accX _accY _accZ _posResult _error _inaccurate _analysisError _tdiffError _speedError _speedSignError _speedAccelerationError _posOutOfBoundsError _noResultError _positionResultFault ))

(defmethod rfid_msg::PDO4
  (:init
   (&key
    ((:accX __accX) 0.0)
    ((:accY __accY) 0.0)
    ((:accZ __accZ) 0.0)
    ((:posResult __posResult) nil)
    ((:error __error) nil)
    ((:inaccurate __inaccurate) nil)
    ((:analysisError __analysisError) nil)
    ((:tdiffError __tdiffError) nil)
    ((:speedError __speedError) nil)
    ((:speedSignError __speedSignError) nil)
    ((:speedAccelerationError __speedAccelerationError) nil)
    ((:posOutOfBoundsError __posOutOfBoundsError) nil)
    ((:noResultError __noResultError) nil)
    ((:positionResultFault __positionResultFault) nil)
    )
   (send-super :init)
   (setq _accX (float __accX))
   (setq _accY (float __accY))
   (setq _accZ (float __accZ))
   (setq _posResult __posResult)
   (setq _error __error)
   (setq _inaccurate __inaccurate)
   (setq _analysisError __analysisError)
   (setq _tdiffError __tdiffError)
   (setq _speedError __speedError)
   (setq _speedSignError __speedSignError)
   (setq _speedAccelerationError __speedAccelerationError)
   (setq _posOutOfBoundsError __posOutOfBoundsError)
   (setq _noResultError __noResultError)
   (setq _positionResultFault __positionResultFault)
   self)
  (:accX
   (&optional __accX)
   (if __accX (setq _accX __accX)) _accX)
  (:accY
   (&optional __accY)
   (if __accY (setq _accY __accY)) _accY)
  (:accZ
   (&optional __accZ)
   (if __accZ (setq _accZ __accZ)) _accZ)
  (:posResult
   (&optional __posResult)
   (if __posResult (setq _posResult __posResult)) _posResult)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:inaccurate
   (&optional __inaccurate)
   (if __inaccurate (setq _inaccurate __inaccurate)) _inaccurate)
  (:analysisError
   (&optional __analysisError)
   (if __analysisError (setq _analysisError __analysisError)) _analysisError)
  (:tdiffError
   (&optional __tdiffError)
   (if __tdiffError (setq _tdiffError __tdiffError)) _tdiffError)
  (:speedError
   (&optional __speedError)
   (if __speedError (setq _speedError __speedError)) _speedError)
  (:speedSignError
   (&optional __speedSignError)
   (if __speedSignError (setq _speedSignError __speedSignError)) _speedSignError)
  (:speedAccelerationError
   (&optional __speedAccelerationError)
   (if __speedAccelerationError (setq _speedAccelerationError __speedAccelerationError)) _speedAccelerationError)
  (:posOutOfBoundsError
   (&optional __posOutOfBoundsError)
   (if __posOutOfBoundsError (setq _posOutOfBoundsError __posOutOfBoundsError)) _posOutOfBoundsError)
  (:noResultError
   (&optional __noResultError)
   (if __noResultError (setq _noResultError __noResultError)) _noResultError)
  (:positionResultFault
   (&optional __positionResultFault)
   (if __positionResultFault (setq _positionResultFault __positionResultFault)) _positionResultFault)
  (:serialization-length
   ()
   (+
    ;; float32 _accX
    4
    ;; float32 _accY
    4
    ;; float32 _accZ
    4
    ;; bool _posResult
    1
    ;; bool _error
    1
    ;; bool _inaccurate
    1
    ;; bool _analysisError
    1
    ;; bool _tdiffError
    1
    ;; bool _speedError
    1
    ;; bool _speedSignError
    1
    ;; bool _speedAccelerationError
    1
    ;; bool _posOutOfBoundsError
    1
    ;; bool _noResultError
    1
    ;; bool _positionResultFault
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _accX
       (sys::poke _accX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accY
       (sys::poke _accY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accZ
       (sys::poke _accZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _posResult
       (if _posResult (write-byte -1 s) (write-byte 0 s))
     ;; bool _error
       (if _error (write-byte -1 s) (write-byte 0 s))
     ;; bool _inaccurate
       (if _inaccurate (write-byte -1 s) (write-byte 0 s))
     ;; bool _analysisError
       (if _analysisError (write-byte -1 s) (write-byte 0 s))
     ;; bool _tdiffError
       (if _tdiffError (write-byte -1 s) (write-byte 0 s))
     ;; bool _speedError
       (if _speedError (write-byte -1 s) (write-byte 0 s))
     ;; bool _speedSignError
       (if _speedSignError (write-byte -1 s) (write-byte 0 s))
     ;; bool _speedAccelerationError
       (if _speedAccelerationError (write-byte -1 s) (write-byte 0 s))
     ;; bool _posOutOfBoundsError
       (if _posOutOfBoundsError (write-byte -1 s) (write-byte 0 s))
     ;; bool _noResultError
       (if _noResultError (write-byte -1 s) (write-byte 0 s))
     ;; bool _positionResultFault
       (if _positionResultFault (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _accX
     (setq _accX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accY
     (setq _accY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accZ
     (setq _accZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _posResult
     (setq _posResult (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _error
     (setq _error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _inaccurate
     (setq _inaccurate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _analysisError
     (setq _analysisError (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _tdiffError
     (setq _tdiffError (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _speedError
     (setq _speedError (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _speedSignError
     (setq _speedSignError (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _speedAccelerationError
     (setq _speedAccelerationError (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _posOutOfBoundsError
     (setq _posOutOfBoundsError (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _noResultError
     (setq _noResultError (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _positionResultFault
     (setq _positionResultFault (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rfid_msg::PDO4 :md5sum-) "50aae4a0ce8f7819ec3249b06ed01686")
(setf (get rfid_msg::PDO4 :datatype-) "rfid_msg/PDO4")
(setf (get rfid_msg::PDO4 :definition-)
      "float32 accX
float32 accY
float32 accZ
bool posResult
bool error
bool inaccurate
bool analysisError
bool tdiffError
bool speedError
bool speedSignError
bool speedAccelerationError
bool posOutOfBoundsError
bool noResultError
bool positionResultFault

")



(provide :rfid_msg/PDO4 "50aae4a0ce8f7819ec3249b06ed01686")


