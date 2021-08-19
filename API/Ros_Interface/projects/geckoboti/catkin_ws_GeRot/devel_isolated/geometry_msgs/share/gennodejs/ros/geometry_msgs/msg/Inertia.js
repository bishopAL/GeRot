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

class Inertia {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.m = null;
      this.com = null;
      this.ixx = null;
      this.ixy = null;
      this.ixz = null;
      this.iyy = null;
      this.iyz = null;
      this.izz = null;
    }
    else {
      if (initObj.hasOwnProperty('m')) {
        this.m = initObj.m
      }
      else {
        this.m = 0.0;
      }
      if (initObj.hasOwnProperty('com')) {
        this.com = initObj.com
      }
      else {
        this.com = new Vector3();
      }
      if (initObj.hasOwnProperty('ixx')) {
        this.ixx = initObj.ixx
      }
      else {
        this.ixx = 0.0;
      }
      if (initObj.hasOwnProperty('ixy')) {
        this.ixy = initObj.ixy
      }
      else {
        this.ixy = 0.0;
      }
      if (initObj.hasOwnProperty('ixz')) {
        this.ixz = initObj.ixz
      }
      else {
        this.ixz = 0.0;
      }
      if (initObj.hasOwnProperty('iyy')) {
        this.iyy = initObj.iyy
      }
      else {
        this.iyy = 0.0;
      }
      if (initObj.hasOwnProperty('iyz')) {
        this.iyz = initObj.iyz
      }
      else {
        this.iyz = 0.0;
      }
      if (initObj.hasOwnProperty('izz')) {
        this.izz = initObj.izz
      }
      else {
        this.izz = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Inertia
    // Serialize message field [m]
    bufferOffset = _serializer.float64(obj.m, buffer, bufferOffset);
    // Serialize message field [com]
    bufferOffset = Vector3.serialize(obj.com, buffer, bufferOffset);
    // Serialize message field [ixx]
    bufferOffset = _serializer.float64(obj.ixx, buffer, bufferOffset);
    // Serialize message field [ixy]
    bufferOffset = _serializer.float64(obj.ixy, buffer, bufferOffset);
    // Serialize message field [ixz]
    bufferOffset = _serializer.float64(obj.ixz, buffer, bufferOffset);
    // Serialize message field [iyy]
    bufferOffset = _serializer.float64(obj.iyy, buffer, bufferOffset);
    // Serialize message field [iyz]
    bufferOffset = _serializer.float64(obj.iyz, buffer, bufferOffset);
    // Serialize message field [izz]
    bufferOffset = _serializer.float64(obj.izz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Inertia
    let len;
    let data = new Inertia(null);
    // Deserialize message field [m]
    data.m = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [com]
    data.com = Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [ixx]
    data.ixx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ixy]
    data.ixy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ixz]
    data.ixz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [iyy]
    data.iyy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [iyz]
    data.iyz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [izz]
    data.izz = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'geometry_msgs/Inertia';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1d26e4bb6c83ff141c5cf0d883c2b0fe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Mass [kg]
    float64 m
    
    # Center of mass [m]
    geometry_msgs/Vector3 com
    
    # Inertia Tensor [kg-m^2]
    #     | ixx ixy ixz |
    # I = | ixy iyy iyz |
    #     | ixz iyz izz |
    float64 ixx
    float64 ixy
    float64 ixz
    float64 iyy
    float64 iyz
    float64 izz
    
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
    const resolved = new Inertia(null);
    if (msg.m !== undefined) {
      resolved.m = msg.m;
    }
    else {
      resolved.m = 0.0
    }

    if (msg.com !== undefined) {
      resolved.com = Vector3.Resolve(msg.com)
    }
    else {
      resolved.com = new Vector3()
    }

    if (msg.ixx !== undefined) {
      resolved.ixx = msg.ixx;
    }
    else {
      resolved.ixx = 0.0
    }

    if (msg.ixy !== undefined) {
      resolved.ixy = msg.ixy;
    }
    else {
      resolved.ixy = 0.0
    }

    if (msg.ixz !== undefined) {
      resolved.ixz = msg.ixz;
    }
    else {
      resolved.ixz = 0.0
    }

    if (msg.iyy !== undefined) {
      resolved.iyy = msg.iyy;
    }
    else {
      resolved.iyy = 0.0
    }

    if (msg.iyz !== undefined) {
      resolved.iyz = msg.iyz;
    }
    else {
      resolved.iyz = 0.0
    }

    if (msg.izz !== undefined) {
      resolved.izz = msg.izz;
    }
    else {
      resolved.izz = 0.0
    }

    return resolved;
    }
};

module.exports = Inertia;
