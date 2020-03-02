;; Auto-generated. Do not edit!


(when (boundp 'sensor_msgs::BatteryState)
  (if (not (find-package "SENSOR_MSGS"))
    (make-package "SENSOR_MSGS"))
  (shadow 'BatteryState (find-package "SENSOR_MSGS")))
(unless (find-package "SENSOR_MSGS::BATTERYSTATE")
  (make-package "SENSOR_MSGS::BATTERYSTATE"))

(in-package "ROS")
;;//! \htmlinclude BatteryState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*POWER_SUPPLY_STATUS_UNKNOWN*" (find-package "SENSOR_MSGS::BATTERYSTATE"))
(shadow '*POWER_SUPPLY_STATUS_UNKNOWN* (find-package "SENSOR_MSGS::BATTERYSTATE"))
(defconstant sensor_msgs::BatteryState::*POWER_SUPPLY_STATUS_UNKNOWN* 0)
(intern "*POWER_SUPPLY_STATUS_CHARGING*" (find-package "SENSOR_MSGS::BATTERYSTATE"))
(shadow '*POWER_SUPPLY_STATUS_CHARGING* (find-package "SENSOR_MSGS::BATTERYSTATE"))
(defconstant sensor_msgs::BatteryState::*POWER_SUPPLY_STATUS_CHARGING* 1)
(intern "*POWER_SUPPLY_STATUS_DISCHARGING*" (find-package "SENSOR_MSGS::BATTERYSTATE"))
(shadow '*POWER_SUPPLY_STATUS_DISCHARGING* (find-package "SENSOR_MSGS::BATTERYSTATE"))
(defconstant sensor_msgs::BatteryState::*POWER_SUPPLY_STATUS_DISCHARGING* 2)
(intern "*POWER_SUPPLY_STATUS_NOT_CHARGING*" (find-package "SENSOR_MSGS::BATTERYSTATE"))
(shadow '*POWER_SUPPLY_STATUS_NOT_CHARGING* (find-package "SENSOR_MSGS::BATTERYSTATE"))
(defconstant sensor_msgs::BatteryState::*POWER_SUPPLY_STATUS_NOT_CHARGING* 3)
(intern "*POWER_SUPPLY_STATUS_FULL*" (find-package "SENSOR_MSGS::BATTERYSTATE"))
(shadow '*POWER_SUPPLY_STATUS_FULL* (find-package "SENSOR_MSGS::BATTERYSTATE"))
(defconstant sensor_msgs::BatteryState::*POWER_SUPPLY_STATUS_FULL* 4)
(intern "*POWER_SUPPLY_HEALTH_UNKNOWN*" (find-package "SENSOR_MSGS::BATTERYSTATE"))
(shadow '*POWER_SUPPLY_HEALTH_UNKNOWN* (find-package "SENSOR_MSGS::BATTERYSTATE"))
(defconstant sensor_msgs::BatteryState::*POWER_SUPPLY_HEALTH_UNKNOWN* 0)
(intern "*POWER_SUPPLY_HEALTH_GOOD*" (find-package "SENSOR_MSGS::BATTERYSTATE"))
(shadow '*POWER_SUPPLY_HEALTH_GOOD* (find-package "SENSOR_MSGS::BATTERYSTATE"))
(defconstant sensor_msgs::BatteryState::*POWER_SUPPLY_HEALTH_GOOD* 1)
(intern "*POWER_SUPPLY_HEALTH_OVERHEAT*" (find-package "SENSOR_MSGS::BATTERYSTATE"))
(shadow '*POWER_SUPPLY_HEALTH_OVERHEAT* (find-package "SENSOR_MSGS::BATTERYSTATE"))
(defconstant sensor_msgs::BatteryState::*POWER_SUPPLY_HEALTH_OVERHEAT* 2)
(intern "*POWER_SUPPLY_HEALTH_DEAD*" (find-package "SENSOR_MSGS::BATTERYSTATE"))
(shadow '*POWER_SUPPLY_HEALTH_DEAD* (find-package "SENSOR_MSGS::BATTERYSTATE"))
(defconstant sensor_msgs::BatteryState::*POWER_SUPPLY_HEALTH_DEAD* 3)
(intern "*POWER_SUPPLY_HEALTH_OVERVOLTAGE*" (find-package "SENSOR_MSGS::BATTERYSTATE"))
(shadow '*POWER_SUPPLY_HEALTH_OVERVOLTAGE* (find-package "SENSOR_MSGS::BATTERYSTATE"))
(defconstant sensor_msgs::BatteryState::*POWER_SUPPLY_HEALTH_OVERVOLTAGE* 4)
(intern "*POWER_SUPPLY_HEALTH_UNSPEC_FAILURE*" (find-package "SENSOR_MSGS::BATTERYSTATE"))
(shadow '*POWER_SUPPLY_HEALTH_UNSPEC_FAILURE* (find-package "SENSOR_MSGS::BATTERYSTATE"))
(defconstant sensor_msgs::BatteryState::*POWER_SUPPLY_HEALTH_UNSPEC_FAILURE* 5)
(intern "*POWER_SUPPLY_HEALTH_COLD*" (find-package "SENSOR_MSGS::BATTERYSTATE"))
(shadow '*POWER_SUPPLY_HEALTH_COLD* (find-package "SENSOR_MSGS::BATTERYSTATE"))
(defconstant sensor_msgs::BatteryState::*POWER_SUPPLY_HEALTH_COLD* 6)
(intern "*POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE*" (find-package "SENSOR_MSGS::BATTERYSTATE"))
(shadow '*POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE* (find-package "SENSOR_MSGS::BATTERYSTATE"))
(defconstant sensor_msgs::BatteryState::*POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE* 7)
(intern "*POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE*" (find-package "SENSOR_MSGS::BATTERYSTATE"))
(shadow '*POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE* (find-package "SENSOR_MSGS::BATTERYSTATE"))
(defconstant sensor_msgs::BatteryState::*POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE* 8)
(intern "*POWER_SUPPLY_TECHNOLOGY_UNKNOWN*" (find-package "SENSOR_MSGS::BATTERYSTATE"))
(shadow '*POWER_SUPPLY_TECHNOLOGY_UNKNOWN* (find-package "SENSOR_MSGS::BATTERYSTATE"))
(defconstant sensor_msgs::BatteryState::*POWER_SUPPLY_TECHNOLOGY_UNKNOWN* 0)
(intern "*POWER_SUPPLY_TECHNOLOGY_NIMH*" (find-package "SENSOR_MSGS::BATTERYSTATE"))
(shadow '*POWER_SUPPLY_TECHNOLOGY_NIMH* (find-package "SENSOR_MSGS::BATTERYSTATE"))
(defconstant sensor_msgs::BatteryState::*POWER_SUPPLY_TECHNOLOGY_NIMH* 1)
(intern "*POWER_SUPPLY_TECHNOLOGY_LION*" (find-package "SENSOR_MSGS::BATTERYSTATE"))
(shadow '*POWER_SUPPLY_TECHNOLOGY_LION* (find-package "SENSOR_MSGS::BATTERYSTATE"))
(defconstant sensor_msgs::BatteryState::*POWER_SUPPLY_TECHNOLOGY_LION* 2)
(intern "*POWER_SUPPLY_TECHNOLOGY_LIPO*" (find-package "SENSOR_MSGS::BATTERYSTATE"))
(shadow '*POWER_SUPPLY_TECHNOLOGY_LIPO* (find-package "SENSOR_MSGS::BATTERYSTATE"))
(defconstant sensor_msgs::BatteryState::*POWER_SUPPLY_TECHNOLOGY_LIPO* 3)
(intern "*POWER_SUPPLY_TECHNOLOGY_LIFE*" (find-package "SENSOR_MSGS::BATTERYSTATE"))
(shadow '*POWER_SUPPLY_TECHNOLOGY_LIFE* (find-package "SENSOR_MSGS::BATTERYSTATE"))
(defconstant sensor_msgs::BatteryState::*POWER_SUPPLY_TECHNOLOGY_LIFE* 4)
(intern "*POWER_SUPPLY_TECHNOLOGY_NICD*" (find-package "SENSOR_MSGS::BATTERYSTATE"))
(shadow '*POWER_SUPPLY_TECHNOLOGY_NICD* (find-package "SENSOR_MSGS::BATTERYSTATE"))
(defconstant sensor_msgs::BatteryState::*POWER_SUPPLY_TECHNOLOGY_NICD* 5)
(intern "*POWER_SUPPLY_TECHNOLOGY_LIMN*" (find-package "SENSOR_MSGS::BATTERYSTATE"))
(shadow '*POWER_SUPPLY_TECHNOLOGY_LIMN* (find-package "SENSOR_MSGS::BATTERYSTATE"))
(defconstant sensor_msgs::BatteryState::*POWER_SUPPLY_TECHNOLOGY_LIMN* 6)
(defclass sensor_msgs::BatteryState
  :super ros::object
  :slots (_header _voltage _current _charge _capacity _design_capacity _percentage _power_supply_status _power_supply_health _power_supply_technology _present _cell_voltage _location _serial_number ))

(defmethod sensor_msgs::BatteryState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:voltage __voltage) 0.0)
    ((:current __current) 0.0)
    ((:charge __charge) 0.0)
    ((:capacity __capacity) 0.0)
    ((:design_capacity __design_capacity) 0.0)
    ((:percentage __percentage) 0.0)
    ((:power_supply_status __power_supply_status) 0)
    ((:power_supply_health __power_supply_health) 0)
    ((:power_supply_technology __power_supply_technology) 0)
    ((:present __present) nil)
    ((:cell_voltage __cell_voltage) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:location __location) "")
    ((:serial_number __serial_number) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _voltage (float __voltage))
   (setq _current (float __current))
   (setq _charge (float __charge))
   (setq _capacity (float __capacity))
   (setq _design_capacity (float __design_capacity))
   (setq _percentage (float __percentage))
   (setq _power_supply_status (round __power_supply_status))
   (setq _power_supply_health (round __power_supply_health))
   (setq _power_supply_technology (round __power_supply_technology))
   (setq _present __present)
   (setq _cell_voltage __cell_voltage)
   (setq _location (string __location))
   (setq _serial_number (string __serial_number))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:charge
   (&optional __charge)
   (if __charge (setq _charge __charge)) _charge)
  (:capacity
   (&optional __capacity)
   (if __capacity (setq _capacity __capacity)) _capacity)
  (:design_capacity
   (&optional __design_capacity)
   (if __design_capacity (setq _design_capacity __design_capacity)) _design_capacity)
  (:percentage
   (&optional __percentage)
   (if __percentage (setq _percentage __percentage)) _percentage)
  (:power_supply_status
   (&optional __power_supply_status)
   (if __power_supply_status (setq _power_supply_status __power_supply_status)) _power_supply_status)
  (:power_supply_health
   (&optional __power_supply_health)
   (if __power_supply_health (setq _power_supply_health __power_supply_health)) _power_supply_health)
  (:power_supply_technology
   (&optional __power_supply_technology)
   (if __power_supply_technology (setq _power_supply_technology __power_supply_technology)) _power_supply_technology)
  (:present
   (&optional __present)
   (if __present (setq _present __present)) _present)
  (:cell_voltage
   (&optional __cell_voltage)
   (if __cell_voltage (setq _cell_voltage __cell_voltage)) _cell_voltage)
  (:location
   (&optional __location)
   (if __location (setq _location __location)) _location)
  (:serial_number
   (&optional __serial_number)
   (if __serial_number (setq _serial_number __serial_number)) _serial_number)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _voltage
    4
    ;; float32 _current
    4
    ;; float32 _charge
    4
    ;; float32 _capacity
    4
    ;; float32 _design_capacity
    4
    ;; float32 _percentage
    4
    ;; uint8 _power_supply_status
    1
    ;; uint8 _power_supply_health
    1
    ;; uint8 _power_supply_technology
    1
    ;; bool _present
    1
    ;; float32[] _cell_voltage
    (* 4    (length _cell_voltage)) 4
    ;; string _location
    4 (length _location)
    ;; string _serial_number
    4 (length _serial_number)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current
       (sys::poke _current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _charge
       (sys::poke _charge (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _capacity
       (sys::poke _capacity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _design_capacity
       (sys::poke _design_capacity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _percentage
       (sys::poke _percentage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _power_supply_status
       (write-byte _power_supply_status s)
     ;; uint8 _power_supply_health
       (write-byte _power_supply_health s)
     ;; uint8 _power_supply_technology
       (write-byte _power_supply_technology s)
     ;; bool _present
       (if _present (write-byte -1 s) (write-byte 0 s))
     ;; float32[] _cell_voltage
     (write-long (length _cell_voltage) s)
     (dotimes (i (length _cell_voltage))
       (sys::poke (elt _cell_voltage i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; string _location
       (write-long (length _location) s) (princ _location s)
     ;; string _serial_number
       (write-long (length _serial_number) s) (princ _serial_number s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _voltage
     (setq _voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current
     (setq _current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _charge
     (setq _charge (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _capacity
     (setq _capacity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _design_capacity
     (setq _design_capacity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _percentage
     (setq _percentage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _power_supply_status
     (setq _power_supply_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _power_supply_health
     (setq _power_supply_health (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _power_supply_technology
     (setq _power_supply_technology (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _present
     (setq _present (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32[] _cell_voltage
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cell_voltage (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cell_voltage i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; string _location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _serial_number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _serial_number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get sensor_msgs::BatteryState :md5sum-) "476f837fa6771f6e16e3bf4ef96f8770")
(setf (get sensor_msgs::BatteryState :datatype-) "sensor_msgs/BatteryState")
(setf (get sensor_msgs::BatteryState :definition-)
      "
# Constants are chosen to match the enums in the linux kernel
# defined in include/linux/power_supply.h as of version 3.7
# The one difference is for style reasons the constants are
# all uppercase not mixed case.

# Power supply status constants
uint8 POWER_SUPPLY_STATUS_UNKNOWN = 0
uint8 POWER_SUPPLY_STATUS_CHARGING = 1
uint8 POWER_SUPPLY_STATUS_DISCHARGING = 2
uint8 POWER_SUPPLY_STATUS_NOT_CHARGING = 3
uint8 POWER_SUPPLY_STATUS_FULL = 4

# Power supply health constants
uint8 POWER_SUPPLY_HEALTH_UNKNOWN = 0
uint8 POWER_SUPPLY_HEALTH_GOOD = 1
uint8 POWER_SUPPLY_HEALTH_OVERHEAT = 2
uint8 POWER_SUPPLY_HEALTH_DEAD = 3
uint8 POWER_SUPPLY_HEALTH_OVERVOLTAGE = 4
uint8 POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = 5
uint8 POWER_SUPPLY_HEALTH_COLD = 6
uint8 POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE = 7
uint8 POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE = 8

# Power supply technology (chemistry) constants
uint8 POWER_SUPPLY_TECHNOLOGY_UNKNOWN = 0
uint8 POWER_SUPPLY_TECHNOLOGY_NIMH = 1
uint8 POWER_SUPPLY_TECHNOLOGY_LION = 2
uint8 POWER_SUPPLY_TECHNOLOGY_LIPO = 3
uint8 POWER_SUPPLY_TECHNOLOGY_LIFE = 4
uint8 POWER_SUPPLY_TECHNOLOGY_NICD = 5
uint8 POWER_SUPPLY_TECHNOLOGY_LIMN = 6

Header  header
float32 voltage          # Voltage in Volts (Mandatory)
float32 current          # Negative when discharging (A)  (If unmeasured NaN)
float32 charge           # Current charge in Ah  (If unmeasured NaN)
float32 capacity         # Capacity in Ah (last full capacity)  (If unmeasured NaN)
float32 design_capacity  # Capacity in Ah (design capacity)  (If unmeasured NaN)
float32 percentage       # Charge percentage on 0 to 1 range  (If unmeasured NaN)
uint8   power_supply_status     # The charging status as reported. Values defined above
uint8   power_supply_health     # The battery health metric. Values defined above
uint8   power_supply_technology # The battery chemistry. Values defined above
bool    present          # True if the battery is present

float32[] cell_voltage   # An array of individual cell voltages for each cell in the pack
                         # If individual voltages unknown but number of cells known set each to NaN
string location          # The location into which the battery is inserted. (slot number or plug)
string serial_number     # The best approximation of the battery serial number

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



(provide :sensor_msgs/BatteryState "476f837fa6771f6e16e3bf4ef96f8770")


