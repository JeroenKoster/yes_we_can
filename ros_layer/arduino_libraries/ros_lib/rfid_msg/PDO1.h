#ifndef _ROS_rfid_msg_PDO1_h
#define _ROS_rfid_msg_PDO1_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace rfid_msg
{

  class PDO1 : public ros::Msg
  {
    public:
      typedef bool _tagInField_type;
      _tagInField_type tagInField;
      typedef bool _codeOk_type;
      _codeOk_type codeOk;
      typedef bool _xyDeviationDetermined_type;
      _xyDeviationDetermined_type xyDeviationDetermined;
      typedef bool _centerPuls_type;
      _centerPuls_type centerPuls;
      typedef bool _positionError_type;
      _positionError_type positionError;
      typedef bool _positionEstimate_type;
      _positionEstimate_type positionEstimate;
      typedef bool _fatalError_type;
      _fatalError_type fatalError;
      typedef bool _antennaStarted_type;
      _antennaStarted_type antennaStarted;
      typedef float _rfidCode_type;
      _rfidCode_type rfidCode;
      typedef float _xDeviation_type;
      _xDeviation_type xDeviation;
      typedef float _yDeviation_type;
      _yDeviation_type yDeviation;

    PDO1():
      tagInField(0),
      codeOk(0),
      xyDeviationDetermined(0),
      centerPuls(0),
      positionError(0),
      positionEstimate(0),
      fatalError(0),
      antennaStarted(0),
      rfidCode(0),
      xDeviation(0),
      yDeviation(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      union {
        bool real;
        uint8_t base;
      } u_tagInField;
      u_tagInField.real = this->tagInField;
      *(outbuffer + offset + 0) = (u_tagInField.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->tagInField);
      union {
        bool real;
        uint8_t base;
      } u_codeOk;
      u_codeOk.real = this->codeOk;
      *(outbuffer + offset + 0) = (u_codeOk.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->codeOk);
      union {
        bool real;
        uint8_t base;
      } u_xyDeviationDetermined;
      u_xyDeviationDetermined.real = this->xyDeviationDetermined;
      *(outbuffer + offset + 0) = (u_xyDeviationDetermined.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->xyDeviationDetermined);
      union {
        bool real;
        uint8_t base;
      } u_centerPuls;
      u_centerPuls.real = this->centerPuls;
      *(outbuffer + offset + 0) = (u_centerPuls.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->centerPuls);
      union {
        bool real;
        uint8_t base;
      } u_positionError;
      u_positionError.real = this->positionError;
      *(outbuffer + offset + 0) = (u_positionError.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->positionError);
      union {
        bool real;
        uint8_t base;
      } u_positionEstimate;
      u_positionEstimate.real = this->positionEstimate;
      *(outbuffer + offset + 0) = (u_positionEstimate.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->positionEstimate);
      union {
        bool real;
        uint8_t base;
      } u_fatalError;
      u_fatalError.real = this->fatalError;
      *(outbuffer + offset + 0) = (u_fatalError.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->fatalError);
      union {
        bool real;
        uint8_t base;
      } u_antennaStarted;
      u_antennaStarted.real = this->antennaStarted;
      *(outbuffer + offset + 0) = (u_antennaStarted.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->antennaStarted);
      union {
        float real;
        uint32_t base;
      } u_rfidCode;
      u_rfidCode.real = this->rfidCode;
      *(outbuffer + offset + 0) = (u_rfidCode.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_rfidCode.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_rfidCode.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_rfidCode.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->rfidCode);
      union {
        float real;
        uint32_t base;
      } u_xDeviation;
      u_xDeviation.real = this->xDeviation;
      *(outbuffer + offset + 0) = (u_xDeviation.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_xDeviation.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_xDeviation.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_xDeviation.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->xDeviation);
      union {
        float real;
        uint32_t base;
      } u_yDeviation;
      u_yDeviation.real = this->yDeviation;
      *(outbuffer + offset + 0) = (u_yDeviation.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_yDeviation.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_yDeviation.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_yDeviation.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->yDeviation);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      union {
        bool real;
        uint8_t base;
      } u_tagInField;
      u_tagInField.base = 0;
      u_tagInField.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->tagInField = u_tagInField.real;
      offset += sizeof(this->tagInField);
      union {
        bool real;
        uint8_t base;
      } u_codeOk;
      u_codeOk.base = 0;
      u_codeOk.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->codeOk = u_codeOk.real;
      offset += sizeof(this->codeOk);
      union {
        bool real;
        uint8_t base;
      } u_xyDeviationDetermined;
      u_xyDeviationDetermined.base = 0;
      u_xyDeviationDetermined.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->xyDeviationDetermined = u_xyDeviationDetermined.real;
      offset += sizeof(this->xyDeviationDetermined);
      union {
        bool real;
        uint8_t base;
      } u_centerPuls;
      u_centerPuls.base = 0;
      u_centerPuls.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->centerPuls = u_centerPuls.real;
      offset += sizeof(this->centerPuls);
      union {
        bool real;
        uint8_t base;
      } u_positionError;
      u_positionError.base = 0;
      u_positionError.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->positionError = u_positionError.real;
      offset += sizeof(this->positionError);
      union {
        bool real;
        uint8_t base;
      } u_positionEstimate;
      u_positionEstimate.base = 0;
      u_positionEstimate.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->positionEstimate = u_positionEstimate.real;
      offset += sizeof(this->positionEstimate);
      union {
        bool real;
        uint8_t base;
      } u_fatalError;
      u_fatalError.base = 0;
      u_fatalError.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->fatalError = u_fatalError.real;
      offset += sizeof(this->fatalError);
      union {
        bool real;
        uint8_t base;
      } u_antennaStarted;
      u_antennaStarted.base = 0;
      u_antennaStarted.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->antennaStarted = u_antennaStarted.real;
      offset += sizeof(this->antennaStarted);
      union {
        float real;
        uint32_t base;
      } u_rfidCode;
      u_rfidCode.base = 0;
      u_rfidCode.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_rfidCode.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_rfidCode.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_rfidCode.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->rfidCode = u_rfidCode.real;
      offset += sizeof(this->rfidCode);
      union {
        float real;
        uint32_t base;
      } u_xDeviation;
      u_xDeviation.base = 0;
      u_xDeviation.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_xDeviation.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_xDeviation.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_xDeviation.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->xDeviation = u_xDeviation.real;
      offset += sizeof(this->xDeviation);
      union {
        float real;
        uint32_t base;
      } u_yDeviation;
      u_yDeviation.base = 0;
      u_yDeviation.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_yDeviation.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_yDeviation.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_yDeviation.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->yDeviation = u_yDeviation.real;
      offset += sizeof(this->yDeviation);
     return offset;
    }

    const char * getType(){ return "rfid_msg/PDO1"; };
    const char * getMD5(){ return "530464652e88ccd5dd9df1e0e69d16b1"; };

  };

}
#endif
