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

class Illuminance {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.illuminance = null;
      this.variance = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('illuminance')) {
        this.illuminance = initObj.illuminance
      }
      else {
        this.illuminance = 0.0;
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
    // Serializes a message object of type Illuminance
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [illuminance]
    bufferOffset = _serializer.float64(obj.illuminance, buffer, bufferOffset);
    // Serialize message field [variance]
    bufferOffset = _serializer.float64(obj.variance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Illuminance
    let len;
    let data = new Illuminance(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [illuminance]
    data.illuminance = _deserializer.float64(buffer, bufferOffset);
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
    return 'sensor_msgs/Illuminance';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8cf5febb0952fca9d650c3d11a81a188';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
     # Single photometric illuminance measurement.  Light should be assumed to be
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Illuminance(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.illuminance !== undefined) {
      resolved.illuminance = msg.illuminance;
    }
    else {
      resolved.illuminance = 0.0
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

module.exports = Illuminance;
