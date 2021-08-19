
(cl:in-package :asdf)

(defsystem "diagnostic_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DiagnosticArray" :depends-on ("_package_DiagnosticArray"))
    (:file "_package_DiagnosticArray" :depends-on ("_package"))
    (:file "DiagnosticStatus" :depends-on ("_package_DiagnosticStatus"))
    (:file "_package_DiagnosticStatus" :depends-on ("_package"))
    (:file "KeyValue" :depends-on ("_package_KeyValue"))
    (:file "_package_KeyValue" :depends-on ("_package"))
  ))