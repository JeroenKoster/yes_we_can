;; Auto-generated. Do not edit!


(when (boundp 'rfid_msg::PDO2)
  (if (not (find-package "RFID_MSG"))
    (make-package "RFID_MSG"))
  (shadow 'PDO2 (find-package "RFID_MSG")))
(unless (find-package "RFID_MSG::PDO2")
  (make-package "RFID_MSG::PDO2"))

(in-package "ROS")
;;//! \htmlinclude PDO2.msg.html


(defclass rfid_msg::PDO2
  :super ros::object
  :slots (_inductionPosition1 _inductionSignal1 _inductionPosition2 _inductionSignal2 ))

(defmethod rfid_msg::PDO2
  (:init
   (&key
    ((:inductionPosition1 __inductionPosition1) 0.0)
    ((:inductionSignal1 __inductionSignal1) 0.0)
    ((:inductionPosition2 __inductionPosition2) 0.0)
    ((:inductionSignal2 __inductionSignal2) 0.0)
    )
   (send-super :init)
   (setq _inductionPosition1 (float __inductionPosition1))
   (setq _inductionSignal1 (float __inductionSignal1))
   (setq _inductionPosition2 (float __inductionPosition2))
   (setq _inductionSignal2 (float __inductionSignal2))
   self)
  (:inductionPosition1
   (&optional __inductionPosition1)
   (if __inductionPosition1 (setq _inductionPosition1 __inductionPosition1)) _inductionPosition1)
  (:inductionSignal1
   (&optional __inductionSignal1)
   (if __inductionSignal1 (setq _inductionSignal1 __inductionSignal1)) _inductionSignal1)
  (:inductionPosition2
   (&optional __inductionPosition2)
   (if __inductionPosition2 (setq _inductionPosition2 __inductionPosition2)) _inductionPosition2)
  (:inductionSignal2
   (&optional __inductionSignal2)
   (if __inductionSignal2 (setq _inductionSignal2 __inductionSignal2)) _inductionSignal2)
  (:serialization-length
   ()
   (+
    ;; float32 _inductionPosition1
    4
    ;; float32 _inductionSignal1
    4
    ;; float32 _inductionPosition2
    4
    ;; float32 _inductionSignal2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _inductionPosition1
       (sys::poke _inductionPosition1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _inductionSignal1
       (sys::poke _inductionSignal1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _inductionPosition2
       (sys::poke _inductionPosition2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _inductionSignal2
       (sys::poke _inductionSignal2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _inductionPosition1
     (setq _inductionPosition1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _inductionSignal1
     (setq _inductionSignal1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _inductionPosition2
     (setq _inductionPosition2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _inductionSignal2
     (setq _inductionSignal2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rfid_msg::PDO2 :md5sum-) "e090932213462699dc59df25654c653e")
(setf (get rfid_msg::PDO2 :datatype-) "rfid_msg/PDO2")
(setf (get rfid_msg::PDO2 :definition-)
      "float32 inductionPosition1
float32 inductionSignal1
float32 inductionPosition2
float32 inductionSignal2

")



(provide :rfid_msg/PDO2 "e090932213462699dc59df25654c653e")


