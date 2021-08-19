// Auto-generated. Do not edit!

// (in-package nav_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let OccupancyGrid = require('../msg/OccupancyGrid.js');

//-----------------------------------------------------------

class GetMapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMapRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMapRequest
    let len;
    let data = new GetMapRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nav_msgs/GetMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetMapRequest(null);
    return resolved;
    }
};

class GetMapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map = null;
    }
    else {
      if (initObj.hasOwnProperty('map')) {
        this.map = initObj.map
      }
      else {
        this.map = new OccupancyGrid();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMapResponse
    // Serialize message field [map]
    bufferOffset = OccupancyGrid.serialize(obj.map, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMapResponse
    let len;
    let data = new GetMapResponse(null);
    // Deserialize message field [map]
    data.map = OccupancyGrid.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += OccupancyGrid.getMessageSize(object.map);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nav_msgs/GetMapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6cdd0a18e0aff5b0a3ca2326a89b54ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    nav_msgs/OccupancyGrid map
    
    
    ================================================================================
    MSG: nav_msgs/OccupancyGrid
    # This represents a 2-D grid map, in which each cell represents the probability of
    # occupancy.
    
    Header header 
    
    #MetaData for the map
    MapMetaData info
    
    # The map data, in row-major order, starting with (0,0).  Occupancy
    # probabilities are in the range [0,100].  Unknown is -1.
    int8[] data
    
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
    MSG: nav_msgs/MapMetaData
    # This hold basic information about the characterists of the OccupancyGrid
    
    # The time at which the map was loaded
    time map_load_time
    # The map resolution [m/cell]
    float32 resolution
    # Map width [cells]
    uint32 width
    # Map height [cells]
    uint32 height
    # The origin of the map [m, m, rad].  This is the real-world pose of the
    # cell (0,0) in the map.
    geometry_msgs/Pose origin
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new GetMapResponse(null);
    if (msg.map !== undefined) {
      resolved.map = OccupancyGrid.Resolve(msg.map)
    }
    else {
      resolved.map = new OccupancyGrid()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetMapRequest,
  Response: GetMapResponse,
  md5sum() { return '6cdd0a18e0aff5b0a3ca2326a89b54ff'; },
  datatype() { return 'nav_msgs/GetMap'; }
};
