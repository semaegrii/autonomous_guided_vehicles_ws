// Auto-generated. Do not edit!

// (in-package egitim_araci.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Mesafe {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mesafe = null;
    }
    else {
      if (initObj.hasOwnProperty('mesafe')) {
        this.mesafe = initObj.mesafe
      }
      else {
        this.mesafe = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Mesafe
    // Serialize message field [mesafe]
    bufferOffset = _serializer.float64(obj.mesafe, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Mesafe
    let len;
    let data = new Mesafe(null);
    // Deserialize message field [mesafe]
    data.mesafe = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'egitim_araci/Mesafe';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '67ce55637aff33e83a28f98ea42e7243';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 mesafe
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Mesafe(null);
    if (msg.mesafe !== undefined) {
      resolved.mesafe = msg.mesafe;
    }
    else {
      resolved.mesafe = 0.0
    }

    return resolved;
    }
};

module.exports = Mesafe;
