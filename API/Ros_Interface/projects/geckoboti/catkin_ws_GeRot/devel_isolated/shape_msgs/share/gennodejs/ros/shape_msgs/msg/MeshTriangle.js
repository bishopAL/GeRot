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

class MeshTriangle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vertex_indices = null;
    }
    else {
      if (initObj.hasOwnProperty('vertex_indices')) {
        this.vertex_indices = initObj.vertex_indices
      }
      else {
        this.vertex_indices = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MeshTriangle
    // Check that the constant length array field [vertex_indices] has the right length
    if (obj.vertex_indices.length !== 3) {
      throw new Error('Unable to serialize array field vertex_indices - length must be 3')
    }
    // Serialize message field [vertex_indices]
    bufferOffset = _arraySerializer.uint32(obj.vertex_indices, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MeshTriangle
    let len;
    let data = new MeshTriangle(null);
    // Deserialize message field [vertex_indices]
    data.vertex_indices = _arrayDeserializer.uint32(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'shape_msgs/MeshTriangle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '23688b2e6d2de3d32fe8af104a903253';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Definition of a triangle's vertices
    uint32[3] vertex_indices
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MeshTriangle(null);
    if (msg.vertex_indices !== undefined) {
      resolved.vertex_indices = msg.vertex_indices;
    }
    else {
      resolved.vertex_indices = new Array(3).fill(0)
    }

    return resolved;
    }
};

module.exports = MeshTriangle;
