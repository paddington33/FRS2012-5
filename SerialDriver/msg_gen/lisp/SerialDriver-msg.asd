
(cl:in-package :asdf)

(defsystem "SerialDriver-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "serial_mode" :depends-on ("_package_serial_mode"))
    (:file "_package_serial_mode" :depends-on ("_package"))
  ))