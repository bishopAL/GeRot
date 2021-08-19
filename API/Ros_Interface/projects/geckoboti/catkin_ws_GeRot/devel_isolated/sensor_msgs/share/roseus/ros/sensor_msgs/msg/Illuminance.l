;; Auto-generated. Do not edit!


(when (boundp 'sensor_msgs::Illuminance)
  (if (not (find-package "SENSOR_MSGS"))
    (make-package "SENSOR_MSGS"))
  (shadow 'Illuminance (find-package "SENSOR_MSGS")))
(unless (find-package "SENSOR_MSGS::ILLUMINANCE")
  (make-package "SENSOR_MSGS::ILLUMINANCE"))

(in-package "ROS")
;;//! \htmlinclude Illuminance.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sensor_msgs::Illuminance
  :super ros::object
  :slots (_header _illuminance _variance ))

(defmethod sensor_msgs::Illuminance
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:illuminance __illuminance) 0.0)
    ((:variance __variance) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _illuminance (float __illuminance))
   (setq _variance (float __variance))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:illuminance
   (&optional __illuminance)
   (if __illuminance (setq _illuminance __illuminance)) _illuminance)
  (:variance
   (&optional __variance)
   (if __variance (setq _variance __variance)) _variance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _illuminance
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
     ;; float64 _illuminance
       (sys::poke _illuminance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _variance
       (sys::poke _variance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _illuminance
     (setq _illuminance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _variance
     (setq _variance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get sensor_msgs::Illuminance :md5sum-) "8cf5febb0952fca9d650c3d11a81a188")
(setf (get sensor_msgs::Illuminance :datatype-) "sensor_msgs/Illuminance")
(setf (get sensor_msgs::Illuminance :definition-)
      " # Single photometric illuminance measurement.  Light should be assumed to be
 # measured along the sensor's x-axis (the area of detection is the y-z plane).
 # The illuminance should have a 0 or positive value and be received with
 # the sensor's +X axis pointing toward the light source.

 # Photometric illuminance is the measure of the human eye's sensitivity of the
 # intensity of light encountering or passing through a surface.

 # All other Photometric and Radiometric measurements should
 # not use this message.
 # This message cannot represent:
 # Luminous intensity (candela/light source output)
 # Luminance (nits/light output per area)
 # Irradiance (watt/area), etc.

 Header header           # timestamp is the time the illuminance was measured
                         # frame_id is the location and direction of the reading

 float64 illuminance     # Measurement of the Photometric Illuminance in Lux.

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



(provide :sensor_msgs/Illuminance "8cf5febb0952fca9d650c3d11a81a188")


