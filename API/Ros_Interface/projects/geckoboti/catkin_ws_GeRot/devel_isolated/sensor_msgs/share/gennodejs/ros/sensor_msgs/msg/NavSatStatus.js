// Auto-generated. Do not edit!

// (in-package sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class NavSatStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.service = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('service')) {
        this.service = initObj.service
      }
      else {
        this.service = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavSatStatus
    // Serialize message field [status]
    bufferOffset = _serializer.int8(obj.status, buffer, bufferOffset);
    // Serialize message field [service]
    bufferOffset = _serializer.uint16(obj.service, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavSatStatus
    let len;
    let data = new NavSatStatus(null);
    // Deserialize message field [status]
    data.status = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [service]
    data.service = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_msgs/NavSatStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '331cdbddfa4bc96ffc3b9ad98900a54c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavSatStatus(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.service !== undefined) {
      resolved.service = msg.service;
    }
    else {
      resolved.service = 0
    }

    return resolved;
    }
};

// Constants for message
NavSatStatus.Constants = {
  STATUS_NO_FIX: -1,
  STATUS_FIX: 0,
  STATUS_SBAS_FIX: 1,
  STATUS_GBAS_FIX: 2,
  SERVICE_GPS: 1,
  SERVICE_GLONASS: 2,
  SERVICE_COMPASS: 4,
  SERVICE_GALILEO: 8,
}

module.exports = NavSatStatus;
