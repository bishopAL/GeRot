;; Auto-generated. Do not edit!


(when (boundp 'diagnostic_msgs::AddDiagnostics)
  (if (not (find-package "DIAGNOSTIC_MSGS"))
    (make-package "DIAGNOSTIC_MSGS"))
  (shadow 'AddDiagnostics (find-package "DIAGNOSTIC_MSGS")))
(unless (find-package "DIAGNOSTIC_MSGS::ADDDIAGNOSTICS")
  (make-package "DIAGNOSTIC_MSGS::ADDDIAGNOSTICS"))
(unless (find-package "DIAGNOSTIC_MSGS::ADDDIAGNOSTICSREQUEST")
  (make-package "DIAGNOSTIC_MSGS::ADDDIAGNOSTICSREQUEST"))
(unless (find-package "DIAGNOSTIC_MSGS::ADDDIAGNOSTICSRESPONSE")
  (make-package "DIAGNOSTIC_MSGS::ADDDIAGNOSTICSRESPONSE"))

(in-package "ROS")





(defclass diagnostic_msgs::AddDiagnosticsRequest
  :super ros::object
  :slots (_load_namespace ))

(defmethod diagnostic_msgs::AddDiagnosticsRequest
  (:init
   (&key
    ((:load_namespace __load_namespace) "")
    )
   (send-super :init)
   (setq _load_namespace (string __load_namespace))
   self)
  (:load_namespace
   (&optional __load_namespace)
   (if __load_namespace (setq _load_namespace __load_namespace)) _load_namespace)
  (:serialization-length
   ()
   (+
    ;; string _load_namespace
    4 (length _load_namespace)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _load_namespace
       (write-long (length _load_namespace) s) (princ _load_namespace s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _load_namespace
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _load_namespace (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass diagnostic_msgs::AddDiagnosticsResponse
  :super ros::object
  :slots (_success _message ))

(defmethod diagnostic_msgs::AddDiagnosticsResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass diagnostic_msgs::AddDiagnostics
  :super ros::object
  :slots ())

(setf (get diagnostic_msgs::AddDiagnostics :md5sum-) "e6ac9bbde83d0d3186523c3687aecaee")
(setf (get diagnostic_msgs::AddDiagnostics :datatype-) "diagnostic_msgs/AddDiagnostics")
(setf (get diagnostic_msgs::AddDiagnostics :request) diagnostic_msgs::AddDiagnosticsRequest)
(setf (get diagnostic_msgs::AddDiagnostics :response) diagnostic_msgs::AddDiagnosticsResponse)

(defmethod diagnostic_msgs::AddDiagnosticsRequest
  (:response () (instance diagnostic_msgs::AddDiagnosticsResponse :init)))

(setf (get diagnostic_msgs::AddDiagnosticsRequest :md5sum-) "e6ac9bbde83d0d3186523c3687aecaee")
(setf (get diagnostic_msgs::AddDiagnosticsRequest :datatype-) "diagnostic_msgs/AddDiagnosticsRequest")
(setf (get diagnostic_msgs::AddDiagnosticsRequest :definition-)
      "















string load_namespace
---





bool success


string message

")

(setf (get diagnostic_msgs::AddDiagnosticsResponse :md5sum-) "e6ac9bbde83d0d3186523c3687aecaee")
(setf (get diagnostic_msgs::AddDiagnosticsResponse :datatype-) "diagnostic_msgs/AddDiagnosticsResponse")
(setf (get diagnostic_msgs::AddDiagnosticsResponse :definition-)
      "















string load_namespace
---





bool success


string message

")



(provide :diagnostic_msgs/AddDiagnostics "e6ac9bbde83d0d3186523c3687aecaee")


