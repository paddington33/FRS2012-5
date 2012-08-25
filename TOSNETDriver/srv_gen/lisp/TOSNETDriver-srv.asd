
(cl:in-package :asdf)

(defsystem "TOSNETDriver-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TOSNET_read" :depends-on ("_package_TOSNET_read"))
    (:file "_package_TOSNET_read" :depends-on ("_package"))
    (:file "TOSNET_write" :depends-on ("_package_TOSNET_write"))
    (:file "_package_TOSNET_write" :depends-on ("_package"))
  ))