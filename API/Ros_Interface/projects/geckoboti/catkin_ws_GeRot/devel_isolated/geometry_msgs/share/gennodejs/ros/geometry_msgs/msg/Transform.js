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
let Quaternion = require('./Quaternion.js');

//-----------------------------------------------------------

class Transform {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.translation = null;
      this.rotation = null;
    }
    else {
      if (initObj.hasOwnProperty('translation')) {
        this.translation = initObj.translation
      }
      else {
        this.translation = new Vector3();
      }
      if (initObj.hasOwnProperty('rotation')) {
        this.rotation = initObj.rotation
      }
      else {
        this.rotation = new Quaternion();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Transform
    // Serialize message field [translation]
    bufferOffset = Vector3.serialize(obj.translation, buffer, bufferOffset);
    // Serialize message field [rotation]
    bufferOffset = Quaternion.serialize(obj.rotation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Transform
    let len;
    let data = new Transform(null);
    // Deserialize message field [translation]
    data.translation = Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [rotation]
    data.rotation = Quaternion.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'geometry_msgs/Transform';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ac9eff44abf714214112b05d54a3cf9b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
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
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Transform(null);
    if (msg.translation !== undefined) {
      resolved.translation = Vector3.Resolve(msg.translation)
    }
    else {
      resolved.translation = new Vector3()
    }

    if (msg.rotation !== undefined) {
      resolved.rotation = Quaternion.Resolve(msg.rotation)
    }
    else {
      resolved.rotation = new Quaternion()
    }

    return resolved;
    }
};

module.exports = Transform;
