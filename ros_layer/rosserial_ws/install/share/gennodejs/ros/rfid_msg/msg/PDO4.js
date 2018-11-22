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

class PDO4 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.accX = null;
      this.accY = null;
      this.accZ = null;
      this.posResult = null;
      this.error = null;
      this.inaccurate = null;
      this.analysisError = null;
      this.tdiffError = null;
      this.speedError = null;
      this.speedSignError = null;
      this.speedAccelerationError = null;
      this.posOutOfBoundsError = null;
      this.noResultError = null;
      this.positionResultFault = null;
    }
    else {
      if (initObj.hasOwnProperty('accX')) {
        this.accX = initObj.accX
      }
      else {
        this.accX = 0.0;
      }
      if (initObj.hasOwnProperty('accY')) {
        this.accY = initObj.accY
      }
      else {
        this.accY = 0.0;
      }
      if (initObj.hasOwnProperty('accZ')) {
        this.accZ = initObj.accZ
      }
      else {
        this.accZ = 0.0;
      }
      if (initObj.hasOwnProperty('posResult')) {
        this.posResult = initObj.posResult
      }
      else {
        this.posResult = false;
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = false;
      }
      if (initObj.hasOwnProperty('inaccurate')) {
        this.inaccurate = initObj.inaccurate
      }
      else {
        this.inaccurate = false;
      }
      if (initObj.hasOwnProperty('analysisError')) {
        this.analysisError = initObj.analysisError
      }
      else {
        this.analysisError = false;
      }
      if (initObj.hasOwnProperty('tdiffError')) {
        this.tdiffError = initObj.tdiffError
      }
      else {
        this.tdiffError = false;
      }
      if (initObj.hasOwnProperty('speedError')) {
        this.speedError = initObj.speedError
      }
      else {
        this.speedError = false;
      }
      if (initObj.hasOwnProperty('speedSignError')) {
        this.speedSignError = initObj.speedSignError
      }
      else {
        this.speedSignError = false;
      }
      if (initObj.hasOwnProperty('speedAccelerationError')) {
        this.speedAccelerationError = initObj.speedAccelerationError
      }
      else {
        this.speedAccelerationError = false;
      }
      if (initObj.hasOwnProperty('posOutOfBoundsError')) {
        this.posOutOfBoundsError = initObj.posOutOfBoundsError
      }
      else {
        this.posOutOfBoundsError = false;
      }
      if (initObj.hasOwnProperty('noResultError')) {
        this.noResultError = initObj.noResultError
      }
      else {
        this.noResultError = false;
      }
      if (initObj.hasOwnProperty('positionResultFault')) {
        this.positionResultFault = initObj.positionResultFault
      }
      else {
        this.positionResultFault = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PDO4
    // Serialize message field [accX]
    bufferOffset = _serializer.float32(obj.accX, buffer, bufferOffset);
    // Serialize message field [accY]
    bufferOffset = _serializer.float32(obj.accY, buffer, bufferOffset);
    // Serialize message field [accZ]
    bufferOffset = _serializer.float32(obj.accZ, buffer, bufferOffset);
    // Serialize message field [posResult]
    bufferOffset = _serializer.bool(obj.posResult, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.bool(obj.error, buffer, bufferOffset);
    // Serialize message field [inaccurate]
    bufferOffset = _serializer.bool(obj.inaccurate, buffer, bufferOffset);
    // Serialize message field [analysisError]
    bufferOffset = _serializer.bool(obj.analysisError, buffer, bufferOffset);
    // Serialize message field [tdiffError]
    bufferOffset = _serializer.bool(obj.tdiffError, buffer, bufferOffset);
    // Serialize message field [speedError]
    bufferOffset = _serializer.bool(obj.speedError, buffer, bufferOffset);
    // Serialize message field [speedSignError]
    bufferOffset = _serializer.bool(obj.speedSignError, buffer, bufferOffset);
    // Serialize message field [speedAccelerationError]
    bufferOffset = _serializer.bool(obj.speedAccelerationError, buffer, bufferOffset);
    // Serialize message field [posOutOfBoundsError]
    bufferOffset = _serializer.bool(obj.posOutOfBoundsError, buffer, bufferOffset);
    // Serialize message field [noResultError]
    bufferOffset = _serializer.bool(obj.noResultError, buffer, bufferOffset);
    // Serialize message field [positionResultFault]
    bufferOffset = _serializer.bool(obj.positionResultFault, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PDO4
    let len;
    let data = new PDO4(null);
    // Deserialize message field [accX]
    data.accX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accY]
    data.accY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accZ]
    data.accZ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [posResult]
    data.posResult = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [inaccurate]
    data.inaccurate = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [analysisError]
    data.analysisError = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tdiffError]
    data.tdiffError = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [speedError]
    data.speedError = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [speedSignError]
    data.speedSignError = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [speedAccelerationError]
    data.speedAccelerationError = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [posOutOfBoundsError]
    data.posOutOfBoundsError = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [noResultError]
    data.noResultError = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [positionResultFault]
    data.positionResultFault = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rfid_msg/PDO4';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '50aae4a0ce8f7819ec3249b06ed01686';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 accX
    float32 accY
    float32 accZ
    bool posResult
    bool error
    bool inaccurate
    bool analysisError
    bool tdiffError
    bool speedError
    bool speedSignError
    bool speedAccelerationError
    bool posOutOfBoundsError
    bool noResultError
    bool positionResultFault
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PDO4(null);
    if (msg.accX !== undefined) {
      resolved.accX = msg.accX;
    }
    else {
      resolved.accX = 0.0
    }

    if (msg.accY !== undefined) {
      resolved.accY = msg.accY;
    }
    else {
      resolved.accY = 0.0
    }

    if (msg.accZ !== undefined) {
      resolved.accZ = msg.accZ;
    }
    else {
      resolved.accZ = 0.0
    }

    if (msg.posResult !== undefined) {
      resolved.posResult = msg.posResult;
    }
    else {
      resolved.posResult = false
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = false
    }

    if (msg.inaccurate !== undefined) {
      resolved.inaccurate = msg.inaccurate;
    }
    else {
      resolved.inaccurate = false
    }

    if (msg.analysisError !== undefined) {
      resolved.analysisError = msg.analysisError;
    }
    else {
      resolved.analysisError = false
    }

    if (msg.tdiffError !== undefined) {
      resolved.tdiffError = msg.tdiffError;
    }
    else {
      resolved.tdiffError = false
    }

    if (msg.speedError !== undefined) {
      resolved.speedError = msg.speedError;
    }
    else {
      resolved.speedError = false
    }

    if (msg.speedSignError !== undefined) {
      resolved.speedSignError = msg.speedSignError;
    }
    else {
      resolved.speedSignError = false
    }

    if (msg.speedAccelerationError !== undefined) {
      resolved.speedAccelerationError = msg.speedAccelerationError;
    }
    else {
      resolved.speedAccelerationError = false
    }

    if (msg.posOutOfBoundsError !== undefined) {
      resolved.posOutOfBoundsError = msg.posOutOfBoundsError;
    }
    else {
      resolved.posOutOfBoundsError = false
    }

    if (msg.noResultError !== undefined) {
      resolved.noResultError = msg.noResultError;
    }
    else {
      resolved.noResultError = false
    }

    if (msg.positionResultFault !== undefined) {
      resolved.positionResultFault = msg.positionResultFault;
    }
    else {
      resolved.positionResultFault = false
    }

    return resolved;
    }
};

module.exports = PDO4;
