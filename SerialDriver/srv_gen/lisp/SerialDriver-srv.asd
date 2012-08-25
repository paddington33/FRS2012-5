
(cl:in-package :asdf)

(defsystem "SerialDriver-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "serial_service" :depends-on ("_package_serial_service"))
    (:file "_package_serial_service" :depends-on ("_package"))
    (:file "serial_write_service" :depends-on ("_package_serial_write_service"))
    (:file "_package_serial_write_service" :depends-on ("_package"))
  ))