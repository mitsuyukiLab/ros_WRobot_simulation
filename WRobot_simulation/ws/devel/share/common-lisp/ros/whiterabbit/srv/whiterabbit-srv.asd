
(cl:in-package :asdf)

(defsystem "whiterabbit-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "Canny" :depends-on ("_package_Canny"))
    (:file "_package_Canny" :depends-on ("_package"))
  ))