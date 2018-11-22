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

class PDO3 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gyroX = null;
      this.gyroY = null;
      this.gyroZ = null;
      this.rfidSignal1 = null;
      this.rfidSignal2 = null;
    }
    else {
      if (initObj.hasOwnProperty('gyroX')) {
        this.gyroX = initObj.gyroX
      }
      else {
        this.gyroX = 0.0;
      }
      if (initObj.hasOwnProperty('gyroY')) {
        this.gyroY = initObj.gyroY
      }
      else {
        this.gyroY = 0.0;
      }
      if (initObj.hasOwnProperty('gyroZ')) {
        this.gyroZ = initObj.gyroZ
      }
      else {
        this.gyroZ = 0.0;
      }
      if (initObj.hasOwnProperty('rfidSignal1')) {
        this.rfidSignal1 = initObj.rfidSignal1
      }
      else {
        this.rfidSignal1 = 0.0;
      }
      if (initObj.hasOwnProperty('rfidSignal2')) {
        this.rfidSignal2 = initObj.rfidSignal2
      }
      else {
        this.rfidSignal2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PDO3
    // Serialize message field [gyroX]
    bufferOffset = _serializer.float32(obj.gyroX, buffer, bufferOffset);
    // Serialize message field [gyroY]
    bufferOffset = _serializer.float32(obj.gyroY, buffer, bufferOffset);
    // Serialize message field [gyroZ]
    bufferOffset = _serializer.float32(obj.gyroZ, buffer, bufferOffset);
    // Serialize message field [rfidSignal1]
    bufferOffset = _serializer.float32(obj.rfidSignal1, buffer, bufferOffset);
    // Serialize message field [rfidSignal2]
    bufferOffset = _serializer.float32(obj.rfidSignal2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PDO3
    let len;
    let data = new PDO3(null);
    // Deserialize message field [gyroX]
    data.gyroX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gyroY]
    data.gyroY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gyroZ]
    data.gyroZ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rfidSignal1]
    data.rfidSignal1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rfidSignal2]
    data.rfidSignal2 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rfid_msg/PDO3';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3ad77accb5978b7a753a2d9c57d247a9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 gyroX
    float32 gyroY
    float32 gyroZ
    float32 rfidSignal1
    float32 rfidSignal2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PDO3(null);
    if (msg.gyroX !== undefined) {
      resolved.gyroX = msg.gyroX;
    }
    else {
      resolved.gyroX = 0.0
    }

    if (msg.gyroY !== undefined) {
      resolved.gyroY = msg.gyroY;
    }
    else {
      resolved.gyroY = 0.0
    }

    if (msg.gyroZ !== undefined) {
      resolved.gyroZ = msg.gyroZ;
    }
    else {
      resolved.gyroZ = 0.0
    }

    if (msg.rfidSignal1 !== undefined) {
      resolved.rfidSignal1 = msg.rfidSignal1;
    }
    else {
      resolved.rfidSignal1 = 0.0
    }

    if (msg.rfidSignal2 !== undefined) {
      resolved.rfidSignal2 = msg.rfidSignal2;
    }
    else {
      resolved.rfidSignal2 = 0.0
    }

    return resolved;
    }
};

module.exports = PDO3;
