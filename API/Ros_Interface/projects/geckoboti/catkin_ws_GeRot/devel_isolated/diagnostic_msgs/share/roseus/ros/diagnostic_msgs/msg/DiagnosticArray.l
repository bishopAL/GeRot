;; Auto-generated. Do not edit!


(when (boundp 'diagnostic_msgs::DiagnosticArray)
  (if (not (find-package "DIAGNOSTIC_MSGS"))
    (make-package "DIAGNOSTIC_MSGS"))
  (shadow 'DiagnosticArray (find-package "DIAGNOSTIC_MSGS")))
(unless (find-package "DIAGNOSTIC_MSGS::DIAGNOSTICARRAY")
  (make-package "DIAGNOSTIC_MSGS::DIAGNOSTICARRAY"))

(in-package "ROS")
;;//! \htmlinclude DiagnosticArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass diagnostic_msgs::DiagnosticArray
  :super ros::object
  :slots (_header _status ))

(defmethod diagnostic_msgs::DiagnosticArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) (let (r) (dotimes (i 0) (push (instance diagnostic_msgs::DiagnosticStatus :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _status __status)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
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
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; diagnostic_msgs/DiagnosticStatus[] _status
    (apply #'+ (send-all _status :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; diagnostic_msgs/DiagnosticStatus[] _status
     (write-long (length _status) s)
     (dolist (elem _status)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
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

(setf (get diagnostic_msgs::DiagnosticArray :md5sum-) "60810da900de1dd6ddd437c3503511da")
(setf (get diagnostic_msgs::DiagnosticArray :datatype-) "diagnostic_msgs/DiagnosticArray")
(setf (get diagnostic_msgs::DiagnosticArray :definition-)
      "# This message is used to send diagnostic information about the state of the robot
Header header #for timestamp
DiagnosticStatus[] status # an array of components being reported on
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

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



(provide :diagnostic_msgs/DiagnosticArray "60810da900de1dd6ddd437c3503511da")


