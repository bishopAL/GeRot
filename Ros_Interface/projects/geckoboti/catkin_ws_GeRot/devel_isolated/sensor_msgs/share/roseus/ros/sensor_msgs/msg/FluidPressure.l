;; Auto-generated. Do not edit!


(when (boundp 'sensor_msgs::FluidPressure)
  (if (not (find-package "SENSOR_MSGS"))
    (make-package "SENSOR_MSGS"))
  (shadow 'FluidPressure (find-package "SENSOR_MSGS")))
(unless (find-package "SENSOR_MSGS::FLUIDPRESSURE")
  (make-package "SENSOR_MSGS::FLUIDPRESSURE"))

(in-package "ROS")
;;//! \htmlinclude FluidPressure.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sensor_msgs::FluidPressure
  :super ros::object
  :slots (_header _fluid_pressure _variance ))

(defmethod sensor_msgs::FluidPressure
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:fluid_pressure __fluid_pressure) 0.0)
    ((:variance __variance) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _fluid_pressure (float __fluid_pressure))
   (setq _variance (float __variance))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:fluid_pressure
   (&optional __fluid_pressure)
   (if __fluid_pressure (setq _fluid_pressure __fluid_pressure)) _fluid_pressure)
  (:variance
   (&optional __variance)
   (if __variance (setq _variance __variance)) _variance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _fluid_pressure
    8
    ;; float64 _variance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _fluid_pressure
       (sys::poke _fluid_pressure (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _variance
       (sys::poke _variance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _fluid_pressure
     (setq _fluid_pressure (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _variance
     (setq _variance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get sensor_msgs::FluidPressure :md5sum-) "804dc5cea1c5306d6a2eb80b9833befe")
(setf (get sensor_msgs::FluidPressure :datatype-) "sensor_msgs/FluidPressure")
(setf (get sensor_msgs::FluidPressure :definition-)
      " # Single pressure reading.  This message is appropriate for measuring the
 # pressure inside of a fluid (air, water, etc).  This also includes
 # atmospheric or barometric pressure.

 # This message is not appropriate for force/pressure contact sensors.

 Header header           # timestamp of the measurement
                         # frame_id is the location of the pressure sensor

 float64 fluid_pressure  # Absolute pressure reading in Pascals.

 float64 variance        # 0 is interpreted as variance unknown
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



(provide :sensor_msgs/FluidPressure "804dc5cea1c5306d6a2eb80b9833befe")


