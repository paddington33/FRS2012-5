
(cl:in-package :asdf)

(defsystem "fmMsgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "gyroscope" :depends-on ("_package_gyroscope"))
    (:file "_package_gyroscope" :depends-on ("_package"))
    (:file "rtq_command" :depends-on ("_package_rtq_command"))
    (:file "_package_rtq_command" :depends-on ("_package"))
    (:file "can" :depends-on ("_package_can"))
    (:file "_package_can" :depends-on ("_package"))
    (:file "row" :depends-on ("_package_row"))
    (:file "_package_row" :depends-on ("_package"))
    (:file "gps_state" :depends-on ("_package_gps_state"))
    (:file "_package_gps_state" :depends-on ("_package"))
    (:file "serial" :depends-on ("_package_serial"))
    (:file "_package_serial" :depends-on ("_package"))
    (:file "accelerometer" :depends-on ("_package_accelerometer"))
    (:file "_package_accelerometer" :depends-on ("_package"))
    (:file "rtq" :depends-on ("_package_rtq"))
    (:file "_package_rtq" :depends-on ("_package"))
    (:file "encoder" :depends-on ("_package_encoder"))
    (:file "_package_encoder" :depends-on ("_package"))
    (:file "gpgga" :depends-on ("_package_gpgga"))
    (:file "_package_gpgga" :depends-on ("_package"))
    (:file "steering_angle_cmd" :depends-on ("_package_steering_angle_cmd"))
    (:file "_package_steering_angle_cmd" :depends-on ("_package"))
    (:file "claas_row_cam" :depends-on ("_package_claas_row_cam"))
    (:file "_package_claas_row_cam" :depends-on ("_package"))
    (:file "motor_status" :depends-on ("_package_motor_status"))
    (:file "_package_motor_status" :depends-on ("_package"))
    (:file "magnetometer" :depends-on ("_package_magnetometer"))
    (:file "_package_magnetometer" :depends-on ("_package"))
    (:file "rtq_lamp_command" :depends-on ("_package_rtq_lamp_command"))
    (:file "_package_rtq_lamp_command" :depends-on ("_package"))
  ))