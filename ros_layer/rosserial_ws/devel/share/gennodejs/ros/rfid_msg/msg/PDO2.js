// Auto-generated. Do not edit!

// (in-package rfid_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PDO2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.inductionPosition1 = null;
      this.inductionSignal1 = null;
      this.inductionPosition2 = null;
      this.inductionSignal2 = null;
    }
    else {
      if (initObj.hasOwnProperty('inductionPosition1')) {
        this.inductionPosition1 = initObj.inductionPosition1
      }
      else {
        this.inductionPosition1 = 0.0;
      }
      if (initObj.hasOwnProperty('inductionSignal1')) {
        this.inductionSignal1 = initObj.inductionSignal1
      }
      else {
        this.inductionSignal1 = 0.0;
      }
      if (initObj.hasOwnProperty('inductionPosition2')) {
        this.inductionPosition2 = initObj.inductionPosition2
      }
      else {
        this.inductionPosition2 = 0.0;
      }
      if (initObj.hasOwnProperty('inductionSignal2')) {
        this.inductionSignal2 = initObj.inductionSignal2
      }
      else {
        this.inductionSignal2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PDO2
    // Serialize message field [inductionPosition1]
    bufferOffset = _serializer.float32(obj.inductionPosition1, buffer, bufferOffset);
    // Serialize message field [inductionSignal1]
    bufferOffset = _serializer.float32(obj.inductionSignal1, buffer, bufferOffset);
    // Serialize message field [inductionPosition2]
    bufferOffset = _serializer.float32(obj.inductionPosition2, buffer, bufferOffset);
    // Serialize message field [inductionSignal2]
    bufferOffset = _serializer.float32(obj.inductionSignal2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PDO2
    let len;
    let data = new PDO2(null);
    // Deserialize message field [inductionPosition1]
    data.inductionPosition1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [inductionSignal1]
    data.inductionSignal1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [inductionPosition2]
    data.inductionPosition2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [inductionSignal2]
    data.inductionSignal2 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rfid_msg/PDO2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e090932213462699dc59df25654c653e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 inductionPosition1
    float32 inductionSignal1
    float32 inductionPosition2
    float32 inductionSignal2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PDO2(null);
    if (msg.inductionPosition1 !== undefined) {
      resolved.inductionPosition1 = msg.inductionPosition1;
    }
    else {
      resolved.inductionPosition1 = 0.0
    }

    if (msg.inductionSignal1 !== undefined) {
      resolved.inductionSignal1 = msg.inductionSignal1;
    }
    else {
      resolved.inductionSignal1 = 0.0
    }

    if (msg.inductionPosition2 !== undefined) {
      resolved.inductionPosition2 = msg.inductionPosition2;
    }
    else {
      resolved.inductionPosition2 = 0.0
    }

    if (msg.inductionSignal2 !== undefined) {
      resolved.inductionSignal2 = msg.inductionSignal2;
    }
    else {
      resolved.inductionSignal2 = 0.0
    }

    return resolved;
    }
};

module.exports = PDO2;
