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

class PDO1 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tagInField = null;
      this.codeOk = null;
      this.xyDeviationDetermined = null;
      this.centerPuls = null;
      this.positionError = null;
      this.positionEstimate = null;
      this.fatalError = null;
      this.antennaStarted = null;
      this.rfidCode = null;
      this.xDeviation = null;
      this.yDeviation = null;
    }
    else {
      if (initObj.hasOwnProperty('tagInField')) {
        this.tagInField = initObj.tagInField
      }
      else {
        this.tagInField = false;
      }
      if (initObj.hasOwnProperty('codeOk')) {
        this.codeOk = initObj.codeOk
      }
      else {
        this.codeOk = false;
      }
      if (initObj.hasOwnProperty('xyDeviationDetermined')) {
        this.xyDeviationDetermined = initObj.xyDeviationDetermined
      }
      else {
        this.xyDeviationDetermined = false;
      }
      if (initObj.hasOwnProperty('centerPuls')) {
        this.centerPuls = initObj.centerPuls
      }
      else {
        this.centerPuls = false;
      }
      if (initObj.hasOwnProperty('positionError')) {
        this.positionError = initObj.positionError
      }
      else {
        this.positionError = false;
      }
      if (initObj.hasOwnProperty('positionEstimate')) {
        this.positionEstimate = initObj.positionEstimate
      }
      else {
        this.positionEstimate = false;
      }
      if (initObj.hasOwnProperty('fatalError')) {
        this.fatalError = initObj.fatalError
      }
      else {
        this.fatalError = false;
      }
      if (initObj.hasOwnProperty('antennaStarted')) {
        this.antennaStarted = initObj.antennaStarted
      }
      else {
        this.antennaStarted = false;
      }
      if (initObj.hasOwnProperty('rfidCode')) {
        this.rfidCode = initObj.rfidCode
      }
      else {
        this.rfidCode = 0.0;
      }
      if (initObj.hasOwnProperty('xDeviation')) {
        this.xDeviation = initObj.xDeviation
      }
      else {
        this.xDeviation = 0.0;
      }
      if (initObj.hasOwnProperty('yDeviation')) {
        this.yDeviation = initObj.yDeviation
      }
      else {
        this.yDeviation = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PDO1
    // Serialize message field [tagInField]
    bufferOffset = _serializer.bool(obj.tagInField, buffer, bufferOffset);
    // Serialize message field [codeOk]
    bufferOffset = _serializer.bool(obj.codeOk, buffer, bufferOffset);
    // Serialize message field [xyDeviationDetermined]
    bufferOffset = _serializer.bool(obj.xyDeviationDetermined, buffer, bufferOffset);
    // Serialize message field [centerPuls]
    bufferOffset = _serializer.bool(obj.centerPuls, buffer, bufferOffset);
    // Serialize message field [positionError]
    bufferOffset = _serializer.bool(obj.positionError, buffer, bufferOffset);
    // Serialize message field [positionEstimate]
    bufferOffset = _serializer.bool(obj.positionEstimate, buffer, bufferOffset);
    // Serialize message field [fatalError]
    bufferOffset = _serializer.bool(obj.fatalError, buffer, bufferOffset);
    // Serialize message field [antennaStarted]
    bufferOffset = _serializer.bool(obj.antennaStarted, buffer, bufferOffset);
    // Serialize message field [rfidCode]
    bufferOffset = _serializer.float32(obj.rfidCode, buffer, bufferOffset);
    // Serialize message field [xDeviation]
    bufferOffset = _serializer.float32(obj.xDeviation, buffer, bufferOffset);
    // Serialize message field [yDeviation]
    bufferOffset = _serializer.float32(obj.yDeviation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PDO1
    let len;
    let data = new PDO1(null);
    // Deserialize message field [tagInField]
    data.tagInField = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [codeOk]
    data.codeOk = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [xyDeviationDetermined]
    data.xyDeviationDetermined = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [centerPuls]
    data.centerPuls = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [positionError]
    data.positionError = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [positionEstimate]
    data.positionEstimate = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fatalError]
    data.fatalError = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [antennaStarted]
    data.antennaStarted = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rfidCode]
    data.rfidCode = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [xDeviation]
    data.xDeviation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yDeviation]
    data.yDeviation = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rfid_msg/PDO1';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '530464652e88ccd5dd9df1e0e69d16b1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool tagInField
    bool codeOk
    bool xyDeviationDetermined
    bool centerPuls
    bool positionError
    bool positionEstimate
    bool fatalError
    bool antennaStarted
    float32 rfidCode
    float32 xDeviation
    float32 yDeviation
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PDO1(null);
    if (msg.tagInField !== undefined) {
      resolved.tagInField = msg.tagInField;
    }
    else {
      resolved.tagInField = false
    }

    if (msg.codeOk !== undefined) {
      resolved.codeOk = msg.codeOk;
    }
    else {
      resolved.codeOk = false
    }

    if (msg.xyDeviationDetermined !== undefined) {
      resolved.xyDeviationDetermined = msg.xyDeviationDetermined;
    }
    else {
      resolved.xyDeviationDetermined = false
    }

    if (msg.centerPuls !== undefined) {
      resolved.centerPuls = msg.centerPuls;
    }
    else {
      resolved.centerPuls = false
    }

    if (msg.positionError !== undefined) {
      resolved.positionError = msg.positionError;
    }
    else {
      resolved.positionError = false
    }

    if (msg.positionEstimate !== undefined) {
      resolved.positionEstimate = msg.positionEstimate;
    }
    else {
      resolved.positionEstimate = false
    }

    if (msg.fatalError !== undefined) {
      resolved.fatalError = msg.fatalError;
    }
    else {
      resolved.fatalError = false
    }

    if (msg.antennaStarted !== undefined) {
      resolved.antennaStarted = msg.antennaStarted;
    }
    else {
      resolved.antennaStarted = false
    }

    if (msg.rfidCode !== undefined) {
      resolved.rfidCode = msg.rfidCode;
    }
    else {
      resolved.rfidCode = 0.0
    }

    if (msg.xDeviation !== undefined) {
      resolved.xDeviation = msg.xDeviation;
    }
    else {
      resolved.xDeviation = 0.0
    }

    if (msg.yDeviation !== undefined) {
      resolved.yDeviation = msg.yDeviation;
    }
    else {
      resolved.yDeviation = 0.0
    }

    return resolved;
    }
};

module.exports = PDO1;
