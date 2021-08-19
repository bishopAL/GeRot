
(cl:in-package :asdf)

(defsystem "stereo_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DisparityImage" :depends-on ("_package_DisparityImage"))
    (:file "_package_DisparityImage" :depends-on ("_package"))
  ))