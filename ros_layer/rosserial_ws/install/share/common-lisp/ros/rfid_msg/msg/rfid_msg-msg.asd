
(cl:in-package :asdf)

(defsystem "rfid_msg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PDO1" :depends-on ("_package_PDO1"))
    (:file "_package_PDO1" :depends-on ("_package"))
    (:file "PDO2" :depends-on ("_package_PDO2"))
    (:file "_package_PDO2" :depends-on ("_package"))
    (:file "PDO3" :depends-on ("_package_PDO3"))
    (:file "_package_PDO3" :depends-on ("_package"))
    (:file "PDO4" :depends-on ("_package_PDO4"))
    (:file "_package_PDO4" :depends-on ("_package"))
    (:file "Rfidmsg" :depends-on ("_package_Rfidmsg"))
    (:file "_package_Rfidmsg" :depends-on ("_package"))
  ))