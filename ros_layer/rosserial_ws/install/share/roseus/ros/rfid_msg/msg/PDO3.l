;; Auto-generated. Do not edit!


(when (boundp 'rfid_msg::PDO3)
  (if (not (find-package "RFID_MSG"))
    (make-package "RFID_MSG"))
  (shadow 'PDO3 (find-package "RFID_MSG")))
(unless (find-package "RFID_MSG::PDO3")
  (make-package "RFID_MSG::PDO3"))

(in-package "ROS")
;;//! \htmlinclude PDO3.msg.html


(defclass rfid_msg::PDO3
  :super ros::object
  :slots (_gyroX _gyroY _gyroZ _rfidSignal1 _rfidSignal2 ))

(defmethod rfid_msg::PDO3
  (:init
   (&key
    ((:gyroX __gyroX) 0.0)
    ((:gyroY __gyroY) 0.0)
    ((:gyroZ __gyroZ) 0.0)
    ((:rfidSignal1 __rfidSignal1) 0.0)
    ((:rfidSignal2 __rfidSignal2) 0.0)
    )
   (send-super :init)
   (setq _gyroX (float __gyroX))
   (setq _gyroY (float __gyroY))
   (setq _gyroZ (float __gyroZ))
   (setq _rfidSignal1 (float __rfidSignal1))
   (setq _rfidSignal2 (float __rfidSignal2))
   self)
  (:gyroX
   (&optional __gyroX)
   (if __gyroX (setq _gyroX __gyroX)) _gyroX)
  (:gyroY
   (&optional __gyroY)
   (if __gyroY (setq _gyroY __gyroY)) _gyroY)
  (:gyroZ
   (&optional __gyroZ)
   (if __gyroZ (setq _gyroZ __gyroZ)) _gyroZ)
  (:rfidSignal1
   (&optional __rfidSignal1)
   (if __rfidSignal1 (setq _rfidSignal1 __rfidSignal1)) _rfidSignal1)
  (:rfidSignal2
   (&optional __rfidSignal2)
   (if __rfidSignal2 (setq _rfidSignal2 __rfidSignal2)) _rfidSignal2)
  (:serialization-length
   ()
   (+
    ;; float32 _gyroX
    4
    ;; float32 _gyroY
    4
    ;; float32 _gyroZ
    4
    ;; float32 _rfidSignal1
    4
    ;; float32 _rfidSignal2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _gyroX
       (sys::poke _gyroX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyroY
       (sys::poke _gyroY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyroZ
       (sys::poke _gyroZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rfidSignal1
       (sys::poke _rfidSignal1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rfidSignal2
       (sys::poke _rfidSignal2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _gyroX
     (setq _gyroX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyroY
     (setq _gyroY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyroZ
     (setq _gyroZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rfidSignal1
     (setq _rfidSignal1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rfidSignal2
     (setq _rfidSignal2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rfid_msg::PDO3 :md5sum-) "3ad77accb5978b7a753a2d9c57d247a9")
(setf (get rfid_msg::PDO3 :datatype-) "rfid_msg/PDO3")
(setf (get rfid_msg::PDO3 :definition-)
      "float32 gyroX
float32 gyroY
float32 gyroZ
float32 rfidSignal1
float32 rfidSignal2

")



(provide :rfid_msg/PDO3 "3ad77accb5978b7a753a2d9c57d247a9")


