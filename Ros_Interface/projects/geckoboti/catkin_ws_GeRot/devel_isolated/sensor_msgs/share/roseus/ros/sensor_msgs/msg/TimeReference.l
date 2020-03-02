;; Auto-generated. Do not edit!


(when (boundp 'sensor_msgs::TimeReference)
  (if (not (find-package "SENSOR_MSGS"))
    (make-package "SENSOR_MSGS"))
  (shadow 'TimeReference (find-package "SENSOR_MSGS")))
(unless (find-package "SENSOR_MSGS::TIMEREFERENCE")
  (make-package "SENSOR_MSGS::TIMEREFERENCE"))

(in-package "ROS")
;;//! \htmlinclude TimeReference.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sensor_msgs::TimeReference
  :super ros::object
  :slots (_header _time_ref _source ))

(defmethod sensor_msgs::TimeReference
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_ref __time_ref) (instance ros::time :init))
    ((:source __source) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_ref __time_ref)
   (setq _source (string __source))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time_ref
   (&optional __time_ref)
   (if __time_ref (setq _time_ref __time_ref)) _time_ref)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; time _time_ref
    8
    ;; string _source
    4 (length _source)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; time _time_ref
       (write-long (send _time_ref :sec) s) (write-long (send _time_ref :nsec) s)
     ;; string _source
       (write-long (length _source) s) (princ _source s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; time _time_ref
     (send _time_ref :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_ref :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _source
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _source (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get sensor_msgs::TimeReference :md5sum-) "fded64a0265108ba86c3d38fb11c0c16")
(setf (get sensor_msgs::TimeReference :datatype-) "sensor_msgs/TimeReference")
(setf (get sensor_msgs::TimeReference :definition-)
      "# Measurement from an external time source not actively synchronized with the system clock.

Header header    # stamp is system time for which measurement was valid
                 # frame_id is not used 

time   time_ref  # corresponding time from this external source
string source    # (optional) name of time source

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

")



(provide :sensor_msgs/TimeReference "fded64a0265108ba86c3d38fb11c0c16")


