;; Auto-generated. Do not edit!


(when (boundp 'sensor_msgs::RelativeHumidity)
  (if (not (find-package "SENSOR_MSGS"))
    (make-package "SENSOR_MSGS"))
  (shadow 'RelativeHumidity (find-package "SENSOR_MSGS")))
(unless (find-package "SENSOR_MSGS::RELATIVEHUMIDITY")
  (make-package "SENSOR_MSGS::RELATIVEHUMIDITY"))

(in-package "ROS")
;;//! \htmlinclude RelativeHumidity.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sensor_msgs::RelativeHumidity
  :super ros::object
  :slots (_header _relative_humidity _variance ))

(defmethod sensor_msgs::RelativeHumidity
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:relative_humidity __relative_humidity) 0.0)
    ((:variance __variance) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _relative_humidity (float __relative_humidity))
   (setq _variance (float __variance))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:relative_humidity
   (&optional __relative_humidity)
   (if __relative_humidity (setq _relative_humidity __relative_humidity)) _relative_humidity)
  (:variance
   (&optional __variance)
   (if __variance (setq _variance __variance)) _variance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _relative_humidity
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
     ;; float64 _relative_humidity
       (sys::poke _relative_humidity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _variance
       (sys::poke _variance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _relative_humidity
     (setq _relative_humidity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _variance
     (setq _variance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get sensor_msgs::RelativeHumidity :md5sum-) "8730015b05955b7e992ce29a2678d90f")
(setf (get sensor_msgs::RelativeHumidity :datatype-) "sensor_msgs/RelativeHumidity")
(setf (get sensor_msgs::RelativeHumidity :definition-)
      " # Single reading from a relative humidity sensor.  Defines the ratio of partial
 # pressure of water vapor to the saturated vapor pressure at a temperature.

 Header header             # timestamp of the measurement
                           # frame_id is the location of the humidity sensor

 float64 relative_humidity # Expression of the relative humidity
                           # from 0.0 to 1.0.
                           # 0.0 is no partial pressure of water vapor
                           # 1.0 represents partial pressure of saturation

 float64 variance          # 0 is interpreted as variance unknown
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



(provide :sensor_msgs/RelativeHumidity "8730015b05955b7e992ce29a2678d90f")


