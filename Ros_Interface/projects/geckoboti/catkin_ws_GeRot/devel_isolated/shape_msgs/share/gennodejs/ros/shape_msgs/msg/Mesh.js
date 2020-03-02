// Auto-generated. Do not edit!

// (in-package shape_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MeshTriangle = require('./MeshTriangle.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Mesh {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.triangles = null;
      this.vertices = null;
    }
    else {
      if (initObj.hasOwnProperty('triangles')) {
        this.triangles = initObj.triangles
      }
      else {
        this.triangles = [];
      }
      if (initObj.hasOwnProperty('vertices')) {
        this.vertices = initObj.vertices
      }
      else {
        this.vertices = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Mesh
    // Serialize message field [triangles]
    // Serialize the length for message field [triangles]
    bufferOffset = _serializer.uint32(obj.triangles.length, buffer, bufferOffset);
    obj.triangles.forEach((val) => {
      bufferOffset = MeshTriangle.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [vertices]
    // Serialize the length for message field [vertices]
    bufferOffset = _serializer.uint32(obj.vertices.length, buffer, bufferOffset);
    obj.vertices.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Mesh
    let len;
    let data = new Mesh(null);
    // Deserialize message field [triangles]
    // Deserialize array length for message field [triangles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.triangles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.triangles[i] = MeshTriangle.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [vertices]
    // Deserialize array length for message field [vertices]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.vertices = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.vertices[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.triangles.length;
    length += 24 * object.vertices.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'shape_msgs/Mesh';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1ffdae9486cd3316a121c578b47a85cc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Definition of a mesh
    
    # list of triangles; the index values refer to positions in vertices[]
    MeshTriangle[] triangles
    
    # the actual vertices that make up the mesh
    geometry_msgs/Point[] vertices
    
    ================================================================================
    MSG: shape_msgs/MeshTriangle
    # Definition of a triangle's vertices
    uint32[3] vertex_indices
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new Mesh(null);
    if (msg.triangles !== undefined) {
      resolved.triangles = new Array(msg.triangles.length);
      for (let i = 0; i < resolved.triangles.length; ++i) {
        resolved.triangles[i] = MeshTriangle.Resolve(msg.triangles[i]);
      }
    }
    else {
      resolved.triangles = []
    }

    if (msg.vertices !== undefined) {
      resolved.vertices = new Array(msg.vertices.length);
      for (let i = 0; i < resolved.vertices.length; ++i) {
        resolved.vertices[i] = geometry_msgs.msg.Point.Resolve(msg.vertices[i]);
      }
    }
    else {
      resolved.vertices = []
    }

    return resolved;
    }
};

module.exports = Mesh;
