;; Auto-generated. Do not edit!


(when (boundp 'diagnostic_msgs::SelfTest)
  (if (not (find-package "DIAGNOSTIC_MSGS"))
    (make-package "DIAGNOSTIC_MSGS"))
  (shadow 'SelfTest (find-package "DIAGNOSTIC_MSGS")))
(unless (find-package "DIAGNOSTIC_MSGS::SELFTEST")
  (make-package "DIAGNOSTIC_MSGS::SELFTEST"))
(unless (find-package "DIAGNOSTIC_MSGS::SELFTESTREQUEST")
  (make-package "DIAGNOSTIC_MSGS::SELFTESTREQUEST"))
(unless (find-package "DIAGNOSTIC_MSGS::SELFTESTRESPONSE")
  (make-package "DIAGNOSTIC_MSGS::SELFTESTRESPONSE"))

(in-package "ROS")





(defclass diagnostic_msgs::SelfTestRequest
  :super ros::object
  :slots ())

(defmethod diagnostic_msgs::SelfTestRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass diagnostic_msgs::SelfTestResponse
  :super ros::object
  :slots (_id _passed _status ))

(defmethod diagnostic_msgs::SelfTestResponse
  (:init
   (&key
    ((:id __id) "")
    ((:passed __passed) 0)
    ((:status __status) (let (r) (dotimes (i 0) (push (instance diagnostic_msgs::DiagnosticStatus :init) r)) r))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _passed (round __passed))
   (setq _status __status)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:passed
   (&optional __passed)
   (if __passed (setq _passed __passed)) _passed)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; byte _passed
    1
    ;; diagnostic_msgs/DiagnosticStatus[] _status
    (apply #'+ (send-all _status :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; byte _passed
       (write-byte _passed s)
     ;; diagnostic_msgs/DiagnosticStatus[] _status
     (write-long (length _status) s)
     (dolist (elem _status)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; byte _passed
     (setq _passed (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _passed 127) (setq _passed (- _passed 256)))
   ;; diagnostic_msgs/DiagnosticStatus[] _status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _status (let (r) (dotimes (i n) (push (instance diagnostic_msgs::DiagnosticStatus :init) r)) r))
     (dolist (elem- _status)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass diagnostic_msgs::SelfTest
  :super ros::object
  :slots ())

(setf (get diagnostic_msgs::SelfTest :md5sum-) "ac21b1bab7ab17546986536c22eb34e9")
(setf (get diagnostic_msgs::SelfTest :datatype-) "diagnostic_msgs/SelfTest")
(setf (get diagnostic_msgs::SelfTest :request) diagnostic_msgs::SelfTestRequest)
(setf (get diagnostic_msgs::SelfTest :response) diagnostic_msgs::SelfTestResponse)

(defmethod diagnostic_msgs::SelfTestRequest
  (:response () (instance diagnostic_msgs::SelfTestResponse :init)))

(setf (get diagnostic_msgs::SelfTestRequest :md5sum-) "ac21b1bab7ab17546986536c22eb34e9")
(setf (get diagnostic_msgs::SelfTestRequest :datatype-) "diagnostic_msgs/SelfTestRequest")
(setf (get diagnostic_msgs::SelfTestRequest :definition-)
      "---
string id
byte passed
DiagnosticStatus[] status


================================================================================
MSG: diagnostic_msgs/DiagnosticStatus
# This message holds the status of an individual component of the robot.
# 

# Possible levels of operations
byte OK=0
byte WARN=1
byte ERROR=2
byte STALE=3

byte level # level of operation enumerated above 
string name # a description of the test/component reporting
string message # a description of the status
string hardware_id # a hardware unique string
KeyValue[] values # an array of values associated with the status


================================================================================
MSG: diagnostic_msgs/KeyValue
string key # what to label this value when viewing
string value # a value to track over time
")

(setf (get diagnostic_msgs::SelfTestResponse :md5sum-) "ac21b1bab7ab17546986536c22eb34e9")
(setf (get diagnostic_msgs::SelfTestResponse :datatype-) "diagnostic_msgs/SelfTestResponse")
(setf (get diagnostic_msgs::SelfTestResponse :definition-)
      "---
string id
byte passed
DiagnosticStatus[] status


================================================================================
MSG: diagnostic_msgs/DiagnosticStatus
# This message holds the status of an individual component of the robot.
# 

# Possible levels of operations
byte OK=0
byte WARN=1
byte ERROR=2
byte STALE=3

byte level # level of operation enumerated above 
string name # a description of the test/component reporting
string message # a description of the status
string hardware_id # a hardware unique string
KeyValue[] values # an array of values associated with the status


================================================================================
MSG: diagnostic_msgs/KeyValue
string key # what to label this value when viewing
string value # a value to track over time
")



(provide :diagnostic_msgs/SelfTest "ac21b1bab7ab17546986536c22eb34e9")


