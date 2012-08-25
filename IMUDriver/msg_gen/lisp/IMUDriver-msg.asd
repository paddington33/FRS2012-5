
(cl:in-package :asdf)

(defsystem "IMUDriver-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "gyroscope" :depends-on ("_package_gyroscope"))
    (:file "_package_gyroscope" :depends-on ("_package"))
    (:file "accelerometer" :depends-on ("_package_accelerometer"))
    (:file "_package_accelerometer" :depends-on ("_package"))
    (:file "magnetometer" :depends-on ("_package_magnetometer"))
    (:file "_package_magnetometer" :depends-on ("_package"))
  ))