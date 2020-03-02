// Auto-generated. Do not edit!

// (in-package diagnostic_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class AddDiagnosticsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.load_namespace = null;
    }
    else {
      if (initObj.hasOwnProperty('load_namespace')) {
        this.load_namespace = initObj.load_namespace
      }
      else {
        this.load_namespace = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddDiagnosticsRequest
    // Serialize message field [load_namespace]
    bufferOffset = _serializer.string(obj.load_namespace, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddDiagnosticsRequest
    let len;
    let data = new AddDiagnosticsRequest(null);
    // Deserialize message field [load_namespace]
    data.load_namespace = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.load_namespace.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'diagnostic_msgs/AddDiagnosticsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c26cf6e164288fbc6050d74f838bcdf0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    string load_namespace
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddDiagnosticsRequest(null);
    if (msg.load_namespace !== undefined) {
      resolved.load_namespace = msg.load_namespace;
    }
    else {
      resolved.load_namespace = ''
    }

    return resolved;
    }
};

class AddDiagnosticsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddDiagnosticsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddDiagnosticsResponse
    let len;
    let data = new AddDiagnosticsResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'diagnostic_msgs/AddDiagnosticsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    bool success
    
    
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddDiagnosticsResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: AddDiagnosticsRequest,
  Response: AddDiagnosticsResponse,
  md5sum() { return 'e6ac9bbde83d0d3186523c3687aecaee'; },
  datatype() { return 'diagnostic_msgs/AddDiagnostics'; }
};
