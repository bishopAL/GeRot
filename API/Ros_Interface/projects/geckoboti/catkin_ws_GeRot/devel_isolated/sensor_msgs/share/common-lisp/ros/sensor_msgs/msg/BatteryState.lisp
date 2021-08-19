; Auto-generated. Do not edit!


(cl:in-package sensor_msgs-msg)


;//! \htmlinclude BatteryState.msg.html

(cl:defclass <BatteryState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (voltage
    :reader voltage
    :initarg :voltage
    :type cl:float
    :initform 0.0)
   (current
    :reader current
    :initarg :current
    :type cl:float
    :initform 0.0)
   (charge
    :reader charge
    :initarg :charge
    :type cl:float
    :initform 0.0)
   (capacity
    :reader capacity
    :initarg :capacity
    :type cl:float
    :initform 0.0)
   (design_capacity
    :reader design_capacity
    :initarg :design_capacity
    :type cl:float
    :initform 0.0)
   (percentage
    :reader percentage
    :initarg :percentage
    :type cl:float
    :initform 0.0)
   (power_supply_status
    :reader power_supply_status
    :initarg :power_supply_status
    :type cl:fixnum
    :initform 0)
   (power_supply_health
    :reader power_supply_health
    :initarg :power_supply_health
    :type cl:fixnum
    :initform 0)
   (power_supply_technology
    :reader power_supply_technology
    :initarg :power_supply_technology
    :type cl:fixnum
    :initform 0)
   (present
    :reader present
    :initarg :present
    :type cl:boolean
    :initform cl:nil)
   (cell_voltage
    :reader cell_voltage
    :initarg :cell_voltage
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (location
    :reader location
    :initarg :location
    :type cl:string
    :initform "")
   (serial_number
    :reader serial_number
    :initarg :serial_number
    :type cl:string
    :initform ""))
)

(cl:defclass BatteryState (<BatteryState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BatteryState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BatteryState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_msgs-msg:<BatteryState> is deprecated: use sensor_msgs-msg:BatteryState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:header-val is deprecated.  Use sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:voltage-val is deprecated.  Use sensor_msgs-msg:voltage instead.")
  (voltage m))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:current-val is deprecated.  Use sensor_msgs-msg:current instead.")
  (current m))

(cl:ensure-generic-function 'charge-val :lambda-list '(m))
(cl:defmethod charge-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:charge-val is deprecated.  Use sensor_msgs-msg:charge instead.")
  (charge m))

(cl:ensure-generic-function 'capacity-val :lambda-list '(m))
(cl:defmethod capacity-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:capacity-val is deprecated.  Use sensor_msgs-msg:capacity instead.")
  (capacity m))

(cl:ensure-generic-function 'design_capacity-val :lambda-list '(m))
(cl:defmethod design_capacity-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:design_capacity-val is deprecated.  Use sensor_msgs-msg:design_capacity instead.")
  (design_capacity m))

(cl:ensure-generic-function 'percentage-val :lambda-list '(m))
(cl:defmethod percentage-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:percentage-val is deprecated.  Use sensor_msgs-msg:percentage instead.")
  (percentage m))

(cl:ensure-generic-function 'power_supply_status-val :lambda-list '(m))
(cl:defmethod power_supply_status-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:power_supply_status-val is deprecated.  Use sensor_msgs-msg:power_supply_status instead.")
  (power_supply_status m))

(cl:ensure-generic-function 'power_supply_health-val :lambda-list '(m))
(cl:defmethod power_supply_health-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:power_supply_health-val is deprecated.  Use sensor_msgs-msg:power_supply_health instead.")
  (power_supply_health m))

(cl:ensure-generic-function 'power_supply_technology-val :lambda-list '(m))
(cl:defmethod power_supply_technology-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:power_supply_technology-val is deprecated.  Use sensor_msgs-msg:power_supply_technology instead.")
  (power_supply_technology m))

(cl:ensure-generic-function 'present-val :lambda-list '(m))
(cl:defmethod present-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:present-val is deprecated.  Use sensor_msgs-msg:present instead.")
  (present m))

(cl:ensure-generic-function 'cell_voltage-val :lambda-list '(m))
(cl:defmethod cell_voltage-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:cell_voltage-val is deprecated.  Use sensor_msgs-msg:cell_voltage instead.")
  (cell_voltage m))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:location-val is deprecated.  Use sensor_msgs-msg:location instead.")
  (location m))

(cl:ensure-generic-function 'serial_number-val :lambda-list '(m))
(cl:defmethod serial_number-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:serial_number-val is deprecated.  Use sensor_msgs-msg:serial_number instead.")
  (serial_number m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BatteryState>)))
    "Constants for message type '<BatteryState>"
  '((:POWER_SUPPLY_STATUS_UNKNOWN . 0)
    (:POWER_SUPPLY_STATUS_CHARGING . 1)
    (:POWER_SUPPLY_STATUS_DISCHARGING . 2)
    (:POWER_SUPPLY_STATUS_NOT_CHARGING . 3)
    (:POWER_SUPPLY_STATUS_FULL . 4)
    (:POWER_SUPPLY_HEALTH_UNKNOWN . 0)
    (:POWER_SUPPLY_HEALTH_GOOD . 1)
    (:POWER_SUPPLY_HEALTH_OVERHEAT . 2)
    (:POWER_SUPPLY_HEALTH_DEAD . 3)
    (:POWER_SUPPLY_HEALTH_OVERVOLTAGE . 4)
    (:POWER_SUPPLY_HEALTH_UNSPEC_FAILURE . 5)
    (:POWER_SUPPLY_HEALTH_COLD . 6)
    (:POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE . 7)
    (:POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE . 8)
    (:POWER_SUPPLY_TECHNOLOGY_UNKNOWN . 0)
    (:POWER_SUPPLY_TECHNOLOGY_NIMH . 1)
    (:POWER_SUPPLY_TECHNOLOGY_LION . 2)
    (:POWER_SUPPLY_TECHNOLOGY_LIPO . 3)
    (:POWER_SUPPLY_TECHNOLOGY_LIFE . 4)
    (:POWER_SUPPLY_TECHNOLOGY_NICD . 5)
    (:POWER_SUPPLY_TECHNOLOGY_LIMN . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BatteryState)))
    "Constants for message type 'BatteryState"
  '((:POWER_SUPPLY_STATUS_UNKNOWN . 0)
    (:POWER_SUPPLY_STATUS_CHARGING . 1)
    (:POWER_SUPPLY_STATUS_DISCHARGING . 2)
    (:POWER_SUPPLY_STATUS_NOT_CHARGING . 3)
    (:POWER_SUPPLY_STATUS_FULL . 4)
    (:POWER_SUPPLY_HEALTH_UNKNOWN . 0)
    (:POWER_SUPPLY_HEALTH_GOOD . 1)
    (:POWER_SUPPLY_HEALTH_OVERHEAT . 2)
    (:POWER_SUPPLY_HEALTH_DEAD . 3)
    (:POWER_SUPPLY_HEALTH_OVERVOLTAGE . 4)
    (:POWER_SUPPLY_HEALTH_UNSPEC_FAILURE . 5)
    (:POWER_SUPPLY_HEALTH_COLD . 6)
    (:POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE . 7)
    (:POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE . 8)
    (:POWER_SUPPLY_TECHNOLOGY_UNKNOWN . 0)
    (:POWER_SUPPLY_TECHNOLOGY_NIMH . 1)
    (:POWER_SUPPLY_TECHNOLOGY_LION . 2)
    (:POWER_SUPPLY_TECHNOLOGY_LIPO . 3)
    (:POWER_SUPPLY_TECHNOLOGY_LIFE . 4)
    (:POWER_SUPPLY_TECHNOLOGY_NICD . 5)
    (:POWER_SUPPLY_TECHNOLOGY_LIMN . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BatteryState>) ostream)
  "Serializes a message object of type '<BatteryState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'charge))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'capacity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'design_capacity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'percentage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_supply_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_supply_health)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_supply_technology)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'present) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cell_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'cell_voltage))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'location))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'serial_number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'serial_number))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BatteryState>) istream)
  "Deserializes a message object of type '<BatteryState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'charge) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'capacity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'design_capacity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'percentage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_supply_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_supply_health)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_supply_technology)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'present) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cell_voltage) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cell_voltage)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'location) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'location) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'serial_number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'serial_number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BatteryState>)))
  "Returns string type for a message object of type '<BatteryState>"
  "sensor_msgs/BatteryState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatteryState)))
  "Returns string type for a message object of type 'BatteryState"
  "sensor_msgs/BatteryState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BatteryState>)))
  "Returns md5sum for a message object of type '<BatteryState>"
  "476f837fa6771f6e16e3bf4ef96f8770")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BatteryState)))
  "Returns md5sum for a message object of type 'BatteryState"
  "476f837fa6771f6e16e3bf4ef96f8770")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BatteryState>)))
  "Returns full string definition for message of type '<BatteryState>"
  (cl:format cl:nil "~%# Constants are chosen to match the enums in the linux kernel~%# defined in include/linux/power_supply.h as of version 3.7~%# The one difference is for style reasons the constants are~%# all uppercase not mixed case.~%~%# Power supply status constants~%uint8 POWER_SUPPLY_STATUS_UNKNOWN = 0~%uint8 POWER_SUPPLY_STATUS_CHARGING = 1~%uint8 POWER_SUPPLY_STATUS_DISCHARGING = 2~%uint8 POWER_SUPPLY_STATUS_NOT_CHARGING = 3~%uint8 POWER_SUPPLY_STATUS_FULL = 4~%~%# Power supply health constants~%uint8 POWER_SUPPLY_HEALTH_UNKNOWN = 0~%uint8 POWER_SUPPLY_HEALTH_GOOD = 1~%uint8 POWER_SUPPLY_HEALTH_OVERHEAT = 2~%uint8 POWER_SUPPLY_HEALTH_DEAD = 3~%uint8 POWER_SUPPLY_HEALTH_OVERVOLTAGE = 4~%uint8 POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = 5~%uint8 POWER_SUPPLY_HEALTH_COLD = 6~%uint8 POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE = 7~%uint8 POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE = 8~%~%# Power supply technology (chemistry) constants~%uint8 POWER_SUPPLY_TECHNOLOGY_UNKNOWN = 0~%uint8 POWER_SUPPLY_TECHNOLOGY_NIMH = 1~%uint8 POWER_SUPPLY_TECHNOLOGY_LION = 2~%uint8 POWER_SUPPLY_TECHNOLOGY_LIPO = 3~%uint8 POWER_SUPPLY_TECHNOLOGY_LIFE = 4~%uint8 POWER_SUPPLY_TECHNOLOGY_NICD = 5~%uint8 POWER_SUPPLY_TECHNOLOGY_LIMN = 6~%~%Header  header~%float32 voltage          # Voltage in Volts (Mandatory)~%float32 current          # Negative when discharging (A)  (If unmeasured NaN)~%float32 charge           # Current charge in Ah  (If unmeasured NaN)~%float32 capacity         # Capacity in Ah (last full capacity)  (If unmeasured NaN)~%float32 design_capacity  # Capacity in Ah (design capacity)  (If unmeasured NaN)~%float32 percentage       # Charge percentage on 0 to 1 range  (If unmeasured NaN)~%uint8   power_supply_status     # The charging status as reported. Values defined above~%uint8   power_supply_health     # The battery health metric. Values defined above~%uint8   power_supply_technology # The battery chemistry. Values defined above~%bool    present          # True if the battery is present~%~%float32[] cell_voltage   # An array of individual cell voltages for each cell in the pack~%                         # If individual voltages unknown but number of cells known set each to NaN~%string location          # The location into which the battery is inserted. (slot number or plug)~%string serial_number     # The best approximation of the battery serial number~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BatteryState)))
  "Returns full string definition for message of type 'BatteryState"
  (cl:format cl:nil "~%# Constants are chosen to match the enums in the linux kernel~%# defined in include/linux/power_supply.h as of version 3.7~%# The one difference is for style reasons the constants are~%# all uppercase not mixed case.~%~%# Power supply status constants~%uint8 POWER_SUPPLY_STATUS_UNKNOWN = 0~%uint8 POWER_SUPPLY_STATUS_CHARGING = 1~%uint8 POWER_SUPPLY_STATUS_DISCHARGING = 2~%uint8 POWER_SUPPLY_STATUS_NOT_CHARGING = 3~%uint8 POWER_SUPPLY_STATUS_FULL = 4~%~%# Power supply health constants~%uint8 POWER_SUPPLY_HEALTH_UNKNOWN = 0~%uint8 POWER_SUPPLY_HEALTH_GOOD = 1~%uint8 POWER_SUPPLY_HEALTH_OVERHEAT = 2~%uint8 POWER_SUPPLY_HEALTH_DEAD = 3~%uint8 POWER_SUPPLY_HEALTH_OVERVOLTAGE = 4~%uint8 POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = 5~%uint8 POWER_SUPPLY_HEALTH_COLD = 6~%uint8 POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE = 7~%uint8 POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE = 8~%~%# Power supply technology (chemistry) constants~%uint8 POWER_SUPPLY_TECHNOLOGY_UNKNOWN = 0~%uint8 POWER_SUPPLY_TECHNOLOGY_NIMH = 1~%uint8 POWER_SUPPLY_TECHNOLOGY_LION = 2~%uint8 POWER_SUPPLY_TECHNOLOGY_LIPO = 3~%uint8 POWER_SUPPLY_TECHNOLOGY_LIFE = 4~%uint8 POWER_SUPPLY_TECHNOLOGY_NICD = 5~%uint8 POWER_SUPPLY_TECHNOLOGY_LIMN = 6~%~%Header  header~%float32 voltage          # Voltage in Volts (Mandatory)~%float32 current          # Negative when discharging (A)  (If unmeasured NaN)~%float32 charge           # Current charge in Ah  (If unmeasured NaN)~%float32 capacity         # Capacity in Ah (last full capacity)  (If unmeasured NaN)~%float32 design_capacity  # Capacity in Ah (design capacity)  (If unmeasured NaN)~%float32 percentage       # Charge percentage on 0 to 1 range  (If unmeasured NaN)~%uint8   power_supply_status     # The charging status as reported. Values defined above~%uint8   power_supply_health     # The battery health metric. Values defined above~%uint8   power_supply_technology # The battery chemistry. Values defined above~%bool    present          # True if the battery is present~%~%float32[] cell_voltage   # An array of individual cell voltages for each cell in the pack~%                         # If individual voltages unknown but number of cells known set each to NaN~%string location          # The location into which the battery is inserted. (slot number or plug)~%string serial_number     # The best approximation of the battery serial number~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BatteryState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     1
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cell_voltage) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:length (cl:slot-value msg 'location))
     4 (cl:length (cl:slot-value msg 'serial_number))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BatteryState>))
  "Converts a ROS message object to a list"
  (cl:list 'BatteryState
    (cl:cons ':header (header msg))
    (cl:cons ':voltage (voltage msg))
    (cl:cons ':current (current msg))
    (cl:cons ':charge (charge msg))
    (cl:cons ':capacity (capacity msg))
    (cl:cons ':design_capacity (design_capacity msg))
    (cl:cons ':percentage (percentage msg))
    (cl:cons ':power_supply_status (power_supply_status msg))
    (cl:cons ':power_supply_health (power_supply_health msg))
    (cl:cons ':power_supply_technology (power_supply_technology msg))
    (cl:cons ':present (present msg))
    (cl:cons ':cell_voltage (cell_voltage msg))
    (cl:cons ':location (location msg))
    (cl:cons ':serial_number (serial_number msg))
))
