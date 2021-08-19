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

class RegionOfInterest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_offset = null;
      this.y_offset = null;
      this.height = null;
      this.width = null;
      this.do_rectify = null;
    }
    else {
      if (initObj.hasOwnProperty('x_offset')) {
        this.x_offset = initObj.x_offset
      }
      else {
        this.x_offset = 0;
      }
      if (initObj.hasOwnProperty('y_offset')) {
        this.y_offset = initObj.y_offset
      }
      else {
        this.y_offset = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
      if (initObj.hasOwnProperty('do_rectify')) {
        this.do_rectify = initObj.do_rectify
      }
      else {
        this.do_rectify = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RegionOfInterest
    // Serialize message field [x_offset]
    bufferOffset = _serializer.uint32(obj.x_offset, buffer, bufferOffset);
    // Serialize message field [y_offset]
    bufferOffset = _serializer.uint32(obj.y_offset, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.uint32(obj.height, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.uint32(obj.width, buffer, bufferOffset);
    // Serialize message field [do_rectify]
    bufferOffset = _serializer.bool(obj.do_rectify, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RegionOfInterest
    let len;
    let data = new RegionOfInterest(null);
    // Deserialize message field [x_offset]
    data.x_offset = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [y_offset]
    data.y_offset = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [do_rectify]
    data.do_rectify = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_msgs/RegionOfInterest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bdb633039d588fcccb441a4d43ccfe09';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message is used to specify a region of interest within an image.
    #
    # When used to specify the ROI setting of the camera when the image was
    # taken, the height and width fields should either match the height and
    # width fields for the associated image; or height = width = 0
    # indicates that the full resolution image was captured.
    
    uint32 x_offset  # Leftmost pixel of the ROI
                     # (0 if the ROI includes the left edge of the image)
    uint32 y_offset  # Topmost pixel of the ROI
                     # (0 if the ROI includes the top edge of the image)
    uint32 height    # Height of ROI
    uint32 width     # Width of ROI
    
    # True if a distinct rectified ROI should be calculated from the "raw"
    # ROI in this message. Typically this should be False if the full image
    # is captured (ROI not used), and True if a subwindow is captured (ROI
    # used).
    bool do_rectify
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RegionOfInterest(null);
    if (msg.x_offset !== undefined) {
      resolved.x_offset = msg.x_offset;
    }
    else {
      resolved.x_offset = 0
    }

    if (msg.y_offset !== undefined) {
      resolved.y_offset = msg.y_offset;
    }
    else {
      resolved.y_offset = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    if (msg.do_rectify !== undefined) {
      resolved.do_rectify = msg.do_rectify;
    }
    else {
      resolved.do_rectify = false
    }

    return resolved;
    }
};

module.exports = RegionOfInterest;
