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

class RelativeHumidity {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.relative_humidity = null;
      this.variance = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('relative_humidity')) {
        this.relative_humidity = initObj.relative_humidity
      }
      else {
        this.relative_humidity = 0.0;
      }
      if (initObj.hasOwnProperty('variance')) {
        this.variance = initObj.variance
      }
      else {
        this.variance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RelativeHumidity
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [relative_humidity]
    bufferOffset = _serializer.float64(obj.relative_humidity, buffer, bufferOffset);
    // Serialize message field [variance]
    bufferOffset = _serializer.float64(obj.variance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RelativeHumidity
    let len;
    let data = new RelativeHumidity(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_humidity]
    data.relative_humidity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [variance]
    data.variance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_msgs/RelativeHumidity';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8730015b05955b7e992ce29a2678d90f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
     # Single reading from a relative humidity sensor.  Defines the ratio of partial
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RelativeHumidity(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.relative_humidity !== undefined) {
      resolved.relative_humidity = msg.relative_humidity;
    }
    else {
      resolved.relative_humidity = 0.0
    }

    if (msg.variance !== undefined) {
      resolved.variance = msg.variance;
    }
    else {
      resolved.variance = 0.0
    }

    return resolved;
    }
};

module.exports = RelativeHumidity;
