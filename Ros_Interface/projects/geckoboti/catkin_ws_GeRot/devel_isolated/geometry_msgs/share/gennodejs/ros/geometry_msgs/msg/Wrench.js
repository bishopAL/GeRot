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

class Wrench {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.force = null;
      this.torque = null;
    }
    else {
      if (initObj.hasOwnProperty('force')) {
        this.force = initObj.force
      }
      else {
        this.force = new Vector3();
      }
      if (initObj.hasOwnProperty('torque')) {
        this.torque = initObj.torque
      }
      else {
        this.torque = new Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Wrench
    // Serialize message field [force]
    bufferOffset = Vector3.serialize(obj.force, buffer, bufferOffset);
    // Serialize message field [torque]
    bufferOffset = Vector3.serialize(obj.torque, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Wrench
    let len;
    let data = new Wrench(null);
    // Deserialize message field [force]
    data.force = Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [torque]
    data.torque = Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'geometry_msgs/Wrench';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4f539cf138b23283b520fd271b567936';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This represents force in free space, separated into
    # its linear and angular parts.
    Vector3  force
    Vector3  torque
    
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
    const resolved = new Wrench(null);
    if (msg.force !== undefined) {
      resolved.force = Vector3.Resolve(msg.force)
    }
    else {
      resolved.force = new Vector3()
    }

    if (msg.torque !== undefined) {
      resolved.torque = Vector3.Resolve(msg.torque)
    }
    else {
      resolved.torque = new Vector3()
    }

    return resolved;
    }
};

module.exports = Wrench;
