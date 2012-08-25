
(cl:in-package :asdf)

(defsystem "botI-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "position_in_row" :depends-on ("_package_position_in_row"))
    (:file "_package_position_in_row" :depends-on ("_package"))
    (:file "control_msg" :depends-on ("_package_control_msg"))
    (:file "_package_control_msg" :depends-on ("_package"))
  ))