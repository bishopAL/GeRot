// Auto-generated. Do not edit!

// (in-package shape_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Plane {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.coef = null;
    }
    else {
      if (initObj.hasOwnProperty('coef')) {
        this.coef = initObj.coef
      }
      else {
        this.coef = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Plane
    // Check that the constant length array field [coef] has the right length
    if (obj.coef.length !== 4) {
      throw new Error('Unable to serialize array field coef - length must be 4')
    }
    // Serialize message field [coef]
    bufferOffset = _arraySerializer.float64(obj.coef, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Plane
    let len;
    let data = new Plane(null);
    // Deserialize message field [coef]
    data.coef = _arrayDeserializer.float64(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'shape_msgs/Plane';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c1b92ed8f31492f8e73f6a4a44ca796';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Representation of a plane, using the plane equation ax + by + cz + d = 0
    
    # a := coef[0]
    # b := coef[1]
    # c := coef[2]
    # d := coef[3]
    
    float64[4] coef
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Plane(null);
    if (msg.coef !== undefined) {
      resolved.coef = msg.coef;
    }
    else {
      resolved.coef = new Array(4).fill(0)
    }

    return resolved;
    }
};

module.exports = Plane;
