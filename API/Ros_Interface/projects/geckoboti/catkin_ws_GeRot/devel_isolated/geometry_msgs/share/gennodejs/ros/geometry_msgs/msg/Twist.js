// Auto-generated. Do not edit!

// (in-package geometry_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Vector3 = require('./Vector3.js');

//-----------------------------------------------------------

class Twist {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.linear = null;
      this.angular = null;
    }
    else {
      if (initObj.hasOwnProperty('linear')) {
        this.linear = initObj.linear
      }
      else {
        this.linear = new Vector3();
      }
      if (initObj.hasOwnProperty('angular')) {
        this.angular = initObj.angular
      }
      else {
        this.angular = new Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Twist
    // Serialize message field [linear]
    bufferOffset = Vector3.serialize(obj.linear, buffer, bufferOffset);
    // Serialize message field [angular]
    bufferOffset = Vector3.serialize(obj.angular, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Twist
    let len;
    let data = new Twist(null);
    // Deserialize message field [linear]
    data.linear = Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular]
    data.angular = Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'geometry_msgs/Twist';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f195f881246fdfa2798d1d3eebca84a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Twist(null);
    if (msg.linear !== undefined) {
      resolved.linear = Vector3.Resolve(msg.linear)
    }
    else {
      resolved.linear = new Vector3()
    }

    if (msg.angular !== undefined) {
      resolved.angular = Vector3.Resolve(msg.angular)
    }
    else {
      resolved.angular = new Vector3()
    }

    return resolved;
    }
};

module.exports = Twist;
