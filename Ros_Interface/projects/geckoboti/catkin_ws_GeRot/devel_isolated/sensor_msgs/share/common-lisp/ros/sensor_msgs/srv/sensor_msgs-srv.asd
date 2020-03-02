
(cl:in-package :asdf)

(defsystem "sensor_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "SetCameraInfo" :depends-on ("_package_SetCameraInfo"))
    (:file "_package_SetCameraInfo" :depends-on ("_package"))
  ))