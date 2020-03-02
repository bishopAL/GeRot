;; Auto-generated. Do not edit!


(when (boundp 'diagnostic_msgs::DiagnosticStatus)
  (if (not (find-package "DIAGNOSTIC_MSGS"))
    (make-package "DIAGNOSTIC_MSGS"))
  (shadow 'DiagnosticStatus (find-package "DIAGNOSTIC_MSGS")))
(unless (find-package "DIAGNOSTIC_MSGS::DIAGNOSTICSTATUS")
  (make-package "DIAGNOSTIC_MSGS::DIAGNOSTICSTATUS"))

(in-package "ROS")
;;//! \htmlinclude DiagnosticStatus.msg.html


(intern "*OK*" (find-package "DIAGNOSTIC_MSGS::DIAGNOSTICSTATUS"))
(shadow '*OK* (find-package "DIAGNOSTIC_MSGS::DIAGNOSTICSTATUS"))
(defconstant diagnostic_msgs::DiagnosticStatus::*OK* 0)
(intern "*WARN*" (find-package "DIAGNOSTIC_MSGS::DIAGNOSTICSTATUS"))
(shadow '*WARN* (find-package "DIAGNOSTIC_MSGS::DIAGNOSTICSTATUS"))
(defconstant diagnostic_msgs::DiagnosticStatus::*WARN* 1)
(intern "*ERROR*" (find-package "DIAGNOSTIC_MSGS::DIAGNOSTICSTATUS"))
(shadow '*ERROR* (find-package "DIAGNOSTIC_MSGS::DIAGNOSTICSTATUS"))
(defconstant diagnostic_msgs::DiagnosticStatus::*ERROR* 2)
(intern "*STALE*" (find-package "DIAGNOSTIC_MSGS::DIAGNOSTICSTATUS"))
(shadow '*STALE* (find-package "DIAGNOSTIC_MSGS::DIAGNOSTICSTATUS"))
(defconstant diagnostic_msgs::DiagnosticStatus::*STALE* 3)
(defclass diagnostic_msgs::DiagnosticStatus
  :super ros::object
  :slots (_level _name _message _hardware_id _values ))

(defmethod diagnostic_msgs::DiagnosticStatus
  (:init
   (&key
    ((:level __level) 0)
    ((:name __name) "")
    ((:message __message) "")
    ((:hardware_id __hardware_id) "")
    ((:values __values) (let (r) (dotimes (i 0) (push (instance diagnostic_msgs::KeyValue :init) r)) r))
    )
   (send-super :init)
   (setq _level (round __level))
   (setq _name (string __name))
   (setq _message (string __message))
   (setq _hardware_id (string __hardware_id))
   (setq _values __values)
   self)
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:hardware_id
   (&optional __hardware_id)
   (if __hardware_id (setq _hardware_id __hardware_id)) _hardware_id)
  (:values
   (&rest __values)
   (if (keywordp (car __values))
       (send* _values __values)
     (progn
       (if __values (setq _values (car __values)))
       _values)))
  (:serialization-length
   ()
   (+
    ;; byte _level
    1
    ;; string _name
    4 (length _name)
    ;; string _message
    4 (length _message)
    ;; string _hardware_id
    4 (length _hardware_id)
    ;; diagnostic_msgs/KeyValue[] _values
    (apply #'+ (send-all _values :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; byte _level
       (write-byte _level s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; string _hardware_id
       (write-long (length _hardware_id) s) (princ _hardware_id s)
     ;; diagnostic_msgs/KeyValue[] _values
     (write-long (length _values) s)
     (dolist (elem _values)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; byte _level
     (setq _level (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _level 127) (setq _level (- _level 256)))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _hardware_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _hardware_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; diagnostic_msgs/KeyValue[] _values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _values (let (r) (dotimes (i n) (push (instance diagnostic_msgs::KeyValue :init) r)) r))
     (dolist (elem- _values)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get diagnostic_msgs::DiagnosticStatus :md5sum-) "d0ce08bc6e5ba34c7754f563a9cabaf1")
(setf (get diagnostic_msgs::DiagnosticStatus :datatype-) "diagnostic_msgs/DiagnosticStatus")
(setf (get diagnostic_msgs::DiagnosticStatus :definition-)
      "# This message holds the status of an individual component of the robot.
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



(provide :diagnostic_msgs/DiagnosticStatus "d0ce08bc6e5ba34c7754f563a9cabaf1")


