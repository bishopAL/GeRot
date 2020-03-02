;; Auto-generated. Do not edit!


(when (boundp 'sensor_msgs::Range)
  (if (not (find-package "SENSOR_MSGS"))
    (make-package "SENSOR_MSGS"))
  (shadow 'Range (find-package "SENSOR_MSGS")))
(unless (find-package "SENSOR_MSGS::RANGE")
  (make-package "SENSOR_MSGS::RANGE"))

(in-package "ROS")
;;//! \htmlinclude Range.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ULTRASOUND*" (find-package "SENSOR_MSGS::RANGE"))
(shadow '*ULTRASOUND* (find-package "SENSOR_MSGS::RANGE"))
(defconstant sensor_msgs::Range::*ULTRASOUND* 0)
(intern "*INFRARED*" (find-package "SENSOR_MSGS::RANGE"))
(shadow '*INFRARED* (find-package "SENSOR_MSGS::RANGE"))
(defconstant sensor_msgs::Range::*INFRARED* 1)
(defclass sensor_msgs::Range
  :super ros::object
  :slots (_header _radiation_type _field_of_view _min_range _max_range _range ))

(defmethod sensor_msgs::Range
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:radiation_type __radiation_type) 0)
    ((:field_of_view __field_of_view) 0.0)
    ((:min_range __min_range) 0.0)
    ((:max_range __max_range) 0.0)
    ((:range __range) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _radiation_type (round __radiation_type))
   (setq _field_of_view (float __field_of_view))
   (setq _min_range (float __min_range))
   (setq _max_range (float __max_range))
   (setq _range (float __range))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:radiation_type
   (&optional __radiation_type)
   (if __radiation_type (setq _radiation_type __radiation_type)) _radiation_type)
  (:field_of_view
   (&optional __field_of_view)
   (if __field_of_view (setq _field_of_view __field_of_view)) _field_of_view)
  (:min_range
   (&optional __min_range)
   (if __min_range (setq _min_range __min_range)) _min_range)
  (:max_range
   (&optional __max_range)
   (if __max_range (setq _max_range __max_range)) _max_range)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _radiation_type
    1
    ;; float32 _field_of_view
    4
    ;; float32 _min_range
    4
    ;; float32 _max_range
    4
    ;; float32 _range
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _radiation_type
       (write-byte _radiation_type s)
     ;; float32 _field_of_view
       (sys::poke _field_of_view (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min_range
       (sys::poke _min_range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_range
       (sys::poke _max_range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _range
       (sys::poke _range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _radiation_type
     (setq _radiation_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _field_of_view
     (setq _field_of_view (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min_range
     (setq _min_range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_range
     (setq _max_range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _range
     (setq _range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sensor_msgs::Range :md5sum-) "c005c34273dc426c67a020a87bc24148")
(setf (get sensor_msgs::Range :datatype-) "sensor_msgs/Range")
(setf (get sensor_msgs::Range :definition-)
      "# Single range reading from an active ranger that emits energy and reports
# one range reading that is valid along an arc at the distance measured. 
# This message is  not appropriate for laser scanners. See the LaserScan
# message if you are working with a laser scanner.

# This message also can represent a fixed-distance (binary) ranger.  This
# sensor will have min_range===max_range===distance of detection.
# These sensors follow REP 117 and will output -Inf if the object is detected
# and +Inf if the object is outside of the detection range.

Header header           # timestamp in the header is the time the ranger
                        # returned the distance reading

# Radiation type enums
# If you want a value added to this list, send an email to the ros-users list
uint8 ULTRASOUND=0
uint8 INFRARED=1

uint8 radiation_type    # the type of radiation used by the sensor
                        # (sound, IR, etc) [enum]

float32 field_of_view   # the size of the arc that the distance reading is
                        # valid for [rad]
                        # the object causing the range reading may have
                        # been anywhere within -field_of_view/2 and
                        # field_of_view/2 at the measured range. 
                        # 0 angle corresponds to the x-axis of the sensor.

float32 min_range       # minimum range value [m]
float32 max_range       # maximum range value [m]
                        # Fixed distance rangers require min_range==max_range

float32 range           # range data [m]
                        # (Note: values < range_min or > range_max
                        # should be discarded)
                        # Fixed distance rangers only output -Inf or +Inf.
                        # -Inf represents a detection within fixed distance.
                        # (Detection too close to the sensor to quantify)
                        # +Inf represents no detection within the fixed distance.
                        # (Object out of range)
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



(provide :sensor_msgs/Range "c005c34273dc426c67a020a87bc24148")


