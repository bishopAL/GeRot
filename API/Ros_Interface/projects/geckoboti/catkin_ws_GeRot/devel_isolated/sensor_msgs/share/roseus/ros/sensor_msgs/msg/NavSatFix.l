;; Auto-generated. Do not edit!


(when (boundp 'sensor_msgs::NavSatFix)
  (if (not (find-package "SENSOR_MSGS"))
    (make-package "SENSOR_MSGS"))
  (shadow 'NavSatFix (find-package "SENSOR_MSGS")))
(unless (find-package "SENSOR_MSGS::NAVSATFIX")
  (make-package "SENSOR_MSGS::NAVSATFIX"))

(in-package "ROS")
;;//! \htmlinclude NavSatFix.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*COVARIANCE_TYPE_UNKNOWN*" (find-package "SENSOR_MSGS::NAVSATFIX"))
(shadow '*COVARIANCE_TYPE_UNKNOWN* (find-package "SENSOR_MSGS::NAVSATFIX"))
(defconstant sensor_msgs::NavSatFix::*COVARIANCE_TYPE_UNKNOWN* 0)
(intern "*COVARIANCE_TYPE_APPROXIMATED*" (find-package "SENSOR_MSGS::NAVSATFIX"))
(shadow '*COVARIANCE_TYPE_APPROXIMATED* (find-package "SENSOR_MSGS::NAVSATFIX"))
(defconstant sensor_msgs::NavSatFix::*COVARIANCE_TYPE_APPROXIMATED* 1)
(intern "*COVARIANCE_TYPE_DIAGONAL_KNOWN*" (find-package "SENSOR_MSGS::NAVSATFIX"))
(shadow '*COVARIANCE_TYPE_DIAGONAL_KNOWN* (find-package "SENSOR_MSGS::NAVSATFIX"))
(defconstant sensor_msgs::NavSatFix::*COVARIANCE_TYPE_DIAGONAL_KNOWN* 2)
(intern "*COVARIANCE_TYPE_KNOWN*" (find-package "SENSOR_MSGS::NAVSATFIX"))
(shadow '*COVARIANCE_TYPE_KNOWN* (find-package "SENSOR_MSGS::NAVSATFIX"))
(defconstant sensor_msgs::NavSatFix::*COVARIANCE_TYPE_KNOWN* 3)
(defclass sensor_msgs::NavSatFix
  :super ros::object
  :slots (_header _status _latitude _longitude _altitude _position_covariance _position_covariance_type ))

(defmethod sensor_msgs::NavSatFix
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) (instance sensor_msgs::NavSatStatus :init))
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:position_covariance __position_covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:position_covariance_type __position_covariance_type) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _status __status)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _position_covariance __position_covariance)
   (setq _position_covariance_type (round __position_covariance_type))
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
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:position_covariance
   (&optional __position_covariance)
   (if __position_covariance (setq _position_covariance __position_covariance)) _position_covariance)
  (:position_covariance_type
   (&optional __position_covariance_type)
   (if __position_covariance_type (setq _position_covariance_type __position_covariance_type)) _position_covariance_type)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; sensor_msgs/NavSatStatus _status
    (send _status :serialization-length)
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _altitude
    8
    ;; float64[9] _position_covariance
    (* 8    9)
    ;; uint8 _position_covariance_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sensor_msgs/NavSatStatus _status
       (send _status :serialize s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[9] _position_covariance
     (dotimes (i 9)
       (sys::poke (elt _position_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint8 _position_covariance_type
       (write-byte _position_covariance_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sensor_msgs/NavSatStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[9] _position_covariance
   (dotimes (i (length _position_covariance))
     (setf (elt _position_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; uint8 _position_covariance_type
     (setq _position_covariance_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get sensor_msgs::NavSatFix :md5sum-) "2d3a8cd499b9b4a0249fb98fd05cfa48")
(setf (get sensor_msgs::NavSatFix :datatype-) "sensor_msgs/NavSatFix")
(setf (get sensor_msgs::NavSatFix :definition-)
      "# Navigation Satellite fix for any Global Navigation Satellite System
#
# Specified using the WGS 84 reference ellipsoid

# header.stamp specifies the ROS time for this measurement (the
#        corresponding satellite time may be reported using the
#        sensor_msgs/TimeReference message).
#
# header.frame_id is the frame of reference reported by the satellite
#        receiver, usually the location of the antenna.  This is a
#        Euclidean frame relative to the vehicle, not a reference
#        ellipsoid.
Header header

# satellite fix status information
NavSatStatus status

# Latitude [degrees]. Positive is north of equator; negative is south.
float64 latitude

# Longitude [degrees]. Positive is east of prime meridian; negative is west.
float64 longitude

# Altitude [m]. Positive is above the WGS 84 ellipsoid
# (quiet NaN if no altitude is available).
float64 altitude

# Position covariance [m^2] defined relative to a tangential plane
# through the reported position. The components are East, North, and
# Up (ENU), in row-major order.
#
# Beware: this coordinate system exhibits singularities at the poles.

float64[9] position_covariance

# If the covariance of the fix is known, fill it in completely. If the
# GPS receiver provides the variance of each measurement, put them
# along the diagonal. If only Dilution of Precision is available,
# estimate an approximate covariance from that.

uint8 COVARIANCE_TYPE_UNKNOWN = 0
uint8 COVARIANCE_TYPE_APPROXIMATED = 1
uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2
uint8 COVARIANCE_TYPE_KNOWN = 3

uint8 position_covariance_type

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
MSG: sensor_msgs/NavSatStatus
# Navigation Satellite fix status for any Global Navigation Satellite System

# Whether to output an augmented fix is determined by both the fix
# type and the last time differential corrections were received.  A
# fix is valid when status >= STATUS_FIX.

int8 STATUS_NO_FIX =  -1        # unable to fix position
int8 STATUS_FIX =      0        # unaugmented fix
int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation
int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation

int8 status

# Bits defining which Global Navigation Satellite System signals were
# used by the receiver.

uint16 SERVICE_GPS =     1
uint16 SERVICE_GLONASS = 2
uint16 SERVICE_COMPASS = 4      # includes BeiDou.
uint16 SERVICE_GALILEO = 8

uint16 service

")



(provide :sensor_msgs/NavSatFix "2d3a8cd499b9b4a0249fb98fd05cfa48")


