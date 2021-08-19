// Auto-generated. Do not edit!

// (in-package visualization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ImageMarker {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ns = null;
      this.id = null;
      this.type = null;
      this.action = null;
      this.position = null;
      this.scale = null;
      this.outline_color = null;
      this.filled = null;
      this.fill_color = null;
      this.lifetime = null;
      this.points = null;
      this.outline_colors = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ns')) {
        this.ns = initObj.ns
      }
      else {
        this.ns = '';
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('scale')) {
        this.scale = initObj.scale
      }
      else {
        this.scale = 0.0;
      }
      if (initObj.hasOwnProperty('outline_color')) {
        this.outline_color = initObj.outline_color
      }
      else {
        this.outline_color = new std_msgs.msg.ColorRGBA();
      }
      if (initObj.hasOwnProperty('filled')) {
        this.filled = initObj.filled
      }
      else {
        this.filled = 0;
      }
      if (initObj.hasOwnProperty('fill_color')) {
        this.fill_color = initObj.fill_color
      }
      else {
        this.fill_color = new std_msgs.msg.ColorRGBA();
      }
      if (initObj.hasOwnProperty('lifetime')) {
        this.lifetime = initObj.lifetime
      }
      else {
        this.lifetime = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('outline_colors')) {
        this.outline_colors = initObj.outline_colors
      }
      else {
        this.outline_colors = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImageMarker
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ns]
    bufferOffset = _serializer.string(obj.ns, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.int32(obj.action, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [scale]
    bufferOffset = _serializer.float32(obj.scale, buffer, bufferOffset);
    // Serialize message field [outline_color]
    bufferOffset = std_msgs.msg.ColorRGBA.serialize(obj.outline_color, buffer, bufferOffset);
    // Serialize message field [filled]
    bufferOffset = _serializer.uint8(obj.filled, buffer, bufferOffset);
    // Serialize message field [fill_color]
    bufferOffset = std_msgs.msg.ColorRGBA.serialize(obj.fill_color, buffer, bufferOffset);
    // Serialize message field [lifetime]
    bufferOffset = _serializer.duration(obj.lifetime, buffer, bufferOffset);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [outline_colors]
    // Serialize the length for message field [outline_colors]
    bufferOffset = _serializer.uint32(obj.outline_colors.length, buffer, bufferOffset);
    obj.outline_colors.forEach((val) => {
      bufferOffset = std_msgs.msg.ColorRGBA.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImageMarker
    let len;
    let data = new ImageMarker(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ns]
    data.ns = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [scale]
    data.scale = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [outline_color]
    data.outline_color = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset);
    // Deserialize message field [filled]
    data.filled = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [fill_color]
    data.fill_color = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset);
    // Deserialize message field [lifetime]
    data.lifetime = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [outline_colors]
    // Deserialize array length for message field [outline_colors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.outline_colors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.outline_colors[i] = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.ns.length;
    length += 24 * object.points.length;
    length += 16 * object.outline_colors.length;
    return length + 93;
  }

  static datatype() {
    // Returns string type for a message object
    return 'visualization_msgs/ImageMarker';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1de93c67ec8858b831025a08fbf1b35c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 CIRCLE=0
    uint8 LINE_STRIP=1
    uint8 LINE_LIST=2
    uint8 POLYGON=3
    uint8 POINTS=4
    
    uint8 ADD=0
    uint8 REMOVE=1
    
    Header header
    string ns		# namespace, used with id to form a unique id
    int32 id          	# unique id within the namespace
    int32 type        	# CIRCLE/LINE_STRIP/etc.
    int32 action      	# ADD/REMOVE
    geometry_msgs/Point position # 2D, in pixel-coords
    float32 scale	 	# the diameter for a circle, etc.
    std_msgs/ColorRGBA outline_color
    uint8 filled		# whether to fill in the shape with color
    std_msgs/ColorRGBA fill_color # color [0.0-1.0]
    duration lifetime       # How long the object should last before being automatically deleted.  0 means forever
    
    
    geometry_msgs/Point[] points # used for LINE_STRIP/LINE_LIST/POINTS/etc., 2D in pixel coords
    std_msgs/ColorRGBA[] outline_colors # a color for each line, point, etc.
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: std_msgs/ColorRGBA
    float32 r
    float32 g
    float32 b
    float32 a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImageMarker(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ns !== undefined) {
      resolved.ns = msg.ns;
    }
    else {
      resolved.ns = ''
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    if (msg.scale !== undefined) {
      resolved.scale = msg.scale;
    }
    else {
      resolved.scale = 0.0
    }

    if (msg.outline_color !== undefined) {
      resolved.outline_color = std_msgs.msg.ColorRGBA.Resolve(msg.outline_color)
    }
    else {
      resolved.outline_color = new std_msgs.msg.ColorRGBA()
    }

    if (msg.filled !== undefined) {
      resolved.filled = msg.filled;
    }
    else {
      resolved.filled = 0
    }

    if (msg.fill_color !== undefined) {
      resolved.fill_color = std_msgs.msg.ColorRGBA.Resolve(msg.fill_color)
    }
    else {
      resolved.fill_color = new std_msgs.msg.ColorRGBA()
    }

    if (msg.lifetime !== undefined) {
      resolved.lifetime = msg.lifetime;
    }
    else {
      resolved.lifetime = {secs: 0, nsecs: 0}
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = geometry_msgs.msg.Point.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    if (msg.outline_colors !== undefined) {
      resolved.outline_colors = new Array(msg.outline_colors.length);
      for (let i = 0; i < resolved.outline_colors.length; ++i) {
        resolved.outline_colors[i] = std_msgs.msg.ColorRGBA.Resolve(msg.outline_colors[i]);
      }
    }
    else {
      resolved.outline_colors = []
    }

    return resolved;
    }
};

// Constants for message
ImageMarker.Constants = {
  CIRCLE: 0,
  LINE_STRIP: 1,
  LINE_LIST: 2,
  POLYGON: 3,
  POINTS: 4,
  ADD: 0,
  REMOVE: 1,
}

module.exports = ImageMarker;
