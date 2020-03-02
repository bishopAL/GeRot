// Auto-generated. Do not edit!

// (in-package sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class BatteryState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.voltage = null;
      this.current = null;
      this.charge = null;
      this.capacity = null;
      this.design_capacity = null;
      this.percentage = null;
      this.power_supply_status = null;
      this.power_supply_health = null;
      this.power_supply_technology = null;
      this.present = null;
      this.cell_voltage = null;
      this.location = null;
      this.serial_number = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = 0.0;
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = 0.0;
      }
      if (initObj.hasOwnProperty('charge')) {
        this.charge = initObj.charge
      }
      else {
        this.charge = 0.0;
      }
      if (initObj.hasOwnProperty('capacity')) {
        this.capacity = initObj.capacity
      }
      else {
        this.capacity = 0.0;
      }
      if (initObj.hasOwnProperty('design_capacity')) {
        this.design_capacity = initObj.design_capacity
      }
      else {
        this.design_capacity = 0.0;
      }
      if (initObj.hasOwnProperty('percentage')) {
        this.percentage = initObj.percentage
      }
      else {
        this.percentage = 0.0;
      }
      if (initObj.hasOwnProperty('power_supply_status')) {
        this.power_supply_status = initObj.power_supply_status
      }
      else {
        this.power_supply_status = 0;
      }
      if (initObj.hasOwnProperty('power_supply_health')) {
        this.power_supply_health = initObj.power_supply_health
      }
      else {
        this.power_supply_health = 0;
      }
      if (initObj.hasOwnProperty('power_supply_technology')) {
        this.power_supply_technology = initObj.power_supply_technology
      }
      else {
        this.power_supply_technology = 0;
      }
      if (initObj.hasOwnProperty('present')) {
        this.present = initObj.present
      }
      else {
        this.present = false;
      }
      if (initObj.hasOwnProperty('cell_voltage')) {
        this.cell_voltage = initObj.cell_voltage
      }
      else {
        this.cell_voltage = [];
      }
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = '';
      }
      if (initObj.hasOwnProperty('serial_number')) {
        this.serial_number = initObj.serial_number
      }
      else {
        this.serial_number = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BatteryState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [voltage]
    bufferOffset = _serializer.float32(obj.voltage, buffer, bufferOffset);
    // Serialize message field [current]
    bufferOffset = _serializer.float32(obj.current, buffer, bufferOffset);
    // Serialize message field [charge]
    bufferOffset = _serializer.float32(obj.charge, buffer, bufferOffset);
    // Serialize message field [capacity]
    bufferOffset = _serializer.float32(obj.capacity, buffer, bufferOffset);
    // Serialize message field [design_capacity]
    bufferOffset = _serializer.float32(obj.design_capacity, buffer, bufferOffset);
    // Serialize message field [percentage]
    bufferOffset = _serializer.float32(obj.percentage, buffer, bufferOffset);
    // Serialize message field [power_supply_status]
    bufferOffset = _serializer.uint8(obj.power_supply_status, buffer, bufferOffset);
    // Serialize message field [power_supply_health]
    bufferOffset = _serializer.uint8(obj.power_supply_health, buffer, bufferOffset);
    // Serialize message field [power_supply_technology]
    bufferOffset = _serializer.uint8(obj.power_supply_technology, buffer, bufferOffset);
    // Serialize message field [present]
    bufferOffset = _serializer.bool(obj.present, buffer, bufferOffset);
    // Serialize message field [cell_voltage]
    bufferOffset = _arraySerializer.float32(obj.cell_voltage, buffer, bufferOffset, null);
    // Serialize message field [location]
    bufferOffset = _serializer.string(obj.location, buffer, bufferOffset);
    // Serialize message field [serial_number]
    bufferOffset = _serializer.string(obj.serial_number, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BatteryState
    let len;
    let data = new BatteryState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [voltage]
    data.voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [charge]
    data.charge = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [capacity]
    data.capacity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [design_capacity]
    data.design_capacity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [percentage]
    data.percentage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [power_supply_status]
    data.power_supply_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [power_supply_health]
    data.power_supply_health = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [power_supply_technology]
    data.power_supply_technology = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [present]
    data.present = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cell_voltage]
    data.cell_voltage = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [location]
    data.location = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [serial_number]
    data.serial_number = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.cell_voltage.length;
    length += object.location.length;
    length += object.serial_number.length;
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_msgs/BatteryState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '476f837fa6771f6e16e3bf4ef96f8770';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BatteryState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = 0.0
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = 0.0
    }

    if (msg.charge !== undefined) {
      resolved.charge = msg.charge;
    }
    else {
      resolved.charge = 0.0
    }

    if (msg.capacity !== undefined) {
      resolved.capacity = msg.capacity;
    }
    else {
      resolved.capacity = 0.0
    }

    if (msg.design_capacity !== undefined) {
      resolved.design_capacity = msg.design_capacity;
    }
    else {
      resolved.design_capacity = 0.0
    }

    if (msg.percentage !== undefined) {
      resolved.percentage = msg.percentage;
    }
    else {
      resolved.percentage = 0.0
    }

    if (msg.power_supply_status !== undefined) {
      resolved.power_supply_status = msg.power_supply_status;
    }
    else {
      resolved.power_supply_status = 0
    }

    if (msg.power_supply_health !== undefined) {
      resolved.power_supply_health = msg.power_supply_health;
    }
    else {
      resolved.power_supply_health = 0
    }

    if (msg.power_supply_technology !== undefined) {
      resolved.power_supply_technology = msg.power_supply_technology;
    }
    else {
      resolved.power_supply_technology = 0
    }

    if (msg.present !== undefined) {
      resolved.present = msg.present;
    }
    else {
      resolved.present = false
    }

    if (msg.cell_voltage !== undefined) {
      resolved.cell_voltage = msg.cell_voltage;
    }
    else {
      resolved.cell_voltage = []
    }

    if (msg.location !== undefined) {
      resolved.location = msg.location;
    }
    else {
      resolved.location = ''
    }

    if (msg.serial_number !== undefined) {
      resolved.serial_number = msg.serial_number;
    }
    else {
      resolved.serial_number = ''
    }

    return resolved;
    }
};

// Constants for message
BatteryState.Constants = {
  POWER_SUPPLY_STATUS_UNKNOWN: 0,
  POWER_SUPPLY_STATUS_CHARGING: 1,
  POWER_SUPPLY_STATUS_DISCHARGING: 2,
  POWER_SUPPLY_STATUS_NOT_CHARGING: 3,
  POWER_SUPPLY_STATUS_FULL: 4,
  POWER_SUPPLY_HEALTH_UNKNOWN: 0,
  POWER_SUPPLY_HEALTH_GOOD: 1,
  POWER_SUPPLY_HEALTH_OVERHEAT: 2,
  POWER_SUPPLY_HEALTH_DEAD: 3,
  POWER_SUPPLY_HEALTH_OVERVOLTAGE: 4,
  POWER_SUPPLY_HEALTH_UNSPEC_FAILURE: 5,
  POWER_SUPPLY_HEALTH_COLD: 6,
  POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE: 7,
  POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE: 8,
  POWER_SUPPLY_TECHNOLOGY_UNKNOWN: 0,
  POWER_SUPPLY_TECHNOLOGY_NIMH: 1,
  POWER_SUPPLY_TECHNOLOGY_LION: 2,
  POWER_SUPPLY_TECHNOLOGY_LIPO: 3,
  POWER_SUPPLY_TECHNOLOGY_LIFE: 4,
  POWER_SUPPLY_TECHNOLOGY_NICD: 5,
  POWER_SUPPLY_TECHNOLOGY_LIMN: 6,
}

module.exports = BatteryState;
