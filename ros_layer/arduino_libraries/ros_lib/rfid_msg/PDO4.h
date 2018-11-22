#ifndef _ROS_rfid_msg_PDO4_h
#define _ROS_rfid_msg_PDO4_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace rfid_msg
{

  class PDO4 : public ros::Msg
  {
    public:
      typedef float _accX_type;
      _accX_type accX;
      typedef float _accY_type;
      _accY_type accY;
      typedef float _accZ_type;
      _accZ_type accZ;
      typedef bool _posResult_type;
      _posResult_type posResult;
      typedef bool _error_type;
      _error_type error;
      typedef bool _inaccurate_type;
      _inaccurate_type inaccurate;
      typedef bool _analysisError_type;
      _analysisError_type analysisError;
      typedef bool _tdiffError_type;
      _tdiffError_type tdiffError;
      typedef bool _speedError_type;
      _speedError_type speedError;
      typedef bool _speedSignError_type;
      _speedSignError_type speedSignError;
      typedef bool _speedAccelerationError_type;
      _speedAccelerationError_type speedAccelerationError;
      typedef bool _posOutOfBoundsError_type;
      _posOutOfBoundsError_type posOutOfBoundsError;
      typedef bool _noResultError_type;
      _noResultError_type noResultError;
      typedef bool _positionResultFault_type;
      _positionResultFault_type positionResultFault;

    PDO4():
      accX(0),
      accY(0),
      accZ(0),
      posResult(0),
      error(0),
      inaccurate(0),
      analysisError(0),
      tdiffError(0),
      speedError(0),
      speedSignError(0),
      speedAccelerationError(0),
      posOutOfBoundsError(0),
      noResultError(0),
      positionResultFault(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      union {
        float real;
        uint32_t base;
      } u_accX;
      u_accX.real = this->accX;
      *(outbuffer + offset + 0) = (u_accX.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_accX.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_accX.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_accX.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->accX);
      union {
        float real;
        uint32_t base;
      } u_accY;
      u_accY.real = this->accY;
      *(outbuffer + offset + 0) = (u_accY.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_accY.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_accY.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_accY.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->accY);
      union {
        float real;
        uint32_t base;
      } u_accZ;
      u_accZ.real = this->accZ;
      *(outbuffer + offset + 0) = (u_accZ.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_accZ.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_accZ.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_accZ.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->accZ);
      union {
        bool real;
        uint8_t base;
      } u_posResult;
      u_posResult.real = this->posResult;
      *(outbuffer + offset + 0) = (u_posResult.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->posResult);
      union {
        bool real;
        uint8_t base;
      } u_error;
      u_error.real = this->error;
      *(outbuffer + offset + 0) = (u_error.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->error);
      union {
        bool real;
        uint8_t base;
      } u_inaccurate;
      u_inaccurate.real = this->inaccurate;
      *(outbuffer + offset + 0) = (u_inaccurate.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->inaccurate);
      union {
        bool real;
        uint8_t base;
      } u_analysisError;
      u_analysisError.real = this->analysisError;
      *(outbuffer + offset + 0) = (u_analysisError.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->analysisError);
      union {
        bool real;
        uint8_t base;
      } u_tdiffError;
      u_tdiffError.real = this->tdiffError;
      *(outbuffer + offset + 0) = (u_tdiffError.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->tdiffError);
      union {
        bool real;
        uint8_t base;
      } u_speedError;
      u_speedError.real = this->speedError;
      *(outbuffer + offset + 0) = (u_speedError.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->speedError);
      union {
        bool real;
        uint8_t base;
      } u_speedSignError;
      u_speedSignError.real = this->speedSignError;
      *(outbuffer + offset + 0) = (u_speedSignError.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->speedSignError);
      union {
        bool real;
        uint8_t base;
      } u_speedAccelerationError;
      u_speedAccelerationError.real = this->speedAccelerationError;
      *(outbuffer + offset + 0) = (u_speedAccelerationError.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->speedAccelerationError);
      union {
        bool real;
        uint8_t base;
      } u_posOutOfBoundsError;
      u_posOutOfBoundsError.real = this->posOutOfBoundsError;
      *(outbuffer + offset + 0) = (u_posOutOfBoundsError.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->posOutOfBoundsError);
      union {
        bool real;
        uint8_t base;
      } u_noResultError;
      u_noResultError.real = this->noResultError;
      *(outbuffer + offset + 0) = (u_noResultError.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->noResultError);
      union {
        bool real;
        uint8_t base;
      } u_positionResultFault;
      u_positionResultFault.real = this->positionResultFault;
      *(outbuffer + offset + 0) = (u_positionResultFault.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->positionResultFault);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      union {
        float real;
        uint32_t base;
      } u_accX;
      u_accX.base = 0;
      u_accX.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_accX.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_accX.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_accX.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->accX = u_accX.real;
      offset += sizeof(this->accX);
      union {
        float real;
        uint32_t base;
      } u_accY;
      u_accY.base = 0;
      u_accY.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_accY.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_accY.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_accY.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->accY = u_accY.real;
      offset += sizeof(this->accY);
      union {
        float real;
        uint32_t base;
      } u_accZ;
      u_accZ.base = 0;
      u_accZ.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_accZ.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_accZ.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_accZ.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->accZ = u_accZ.real;
      offset += sizeof(this->accZ);
      union {
        bool real;
        uint8_t base;
      } u_posResult;
      u_posResult.base = 0;
      u_posResult.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->posResult = u_posResult.real;
      offset += sizeof(this->posResult);
      union {
        bool real;
        uint8_t base;
      } u_error;
      u_error.base = 0;
      u_error.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->error = u_error.real;
      offset += sizeof(this->error);
      union {
        bool real;
        uint8_t base;
      } u_inaccurate;
      u_inaccurate.base = 0;
      u_inaccurate.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->inaccurate = u_inaccurate.real;
      offset += sizeof(this->inaccurate);
      union {
        bool real;
        uint8_t base;
      } u_analysisError;
      u_analysisError.base = 0;
      u_analysisError.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->analysisError = u_analysisError.real;
      offset += sizeof(this->analysisError);
      union {
        bool real;
        uint8_t base;
      } u_tdiffError;
      u_tdiffError.base = 0;
      u_tdiffError.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->tdiffError = u_tdiffError.real;
      offset += sizeof(this->tdiffError);
      union {
        bool real;
        uint8_t base;
      } u_speedError;
      u_speedError.base = 0;
      u_speedError.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->speedError = u_speedError.real;
      offset += sizeof(this->speedError);
      union {
        bool real;
        uint8_t base;
      } u_speedSignError;
      u_speedSignError.base = 0;
      u_speedSignError.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->speedSignError = u_speedSignError.real;
      offset += sizeof(this->speedSignError);
      union {
        bool real;
        uint8_t base;
      } u_speedAccelerationError;
      u_speedAccelerationError.base = 0;
      u_speedAccelerationError.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->speedAccelerationError = u_speedAccelerationError.real;
      offset += sizeof(this->speedAccelerationError);
      union {
        bool real;
        uint8_t base;
      } u_posOutOfBoundsError;
      u_posOutOfBoundsError.base = 0;
      u_posOutOfBoundsError.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->posOutOfBoundsError = u_posOutOfBoundsError.real;
      offset += sizeof(this->posOutOfBoundsError);
      union {
        bool real;
        uint8_t base;
      } u_noResultError;
      u_noResultError.base = 0;
      u_noResultError.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->noResultError = u_noResultError.real;
      offset += sizeof(this->noResultError);
      union {
        bool real;
        uint8_t base;
      } u_positionResultFault;
      u_positionResultFault.base = 0;
      u_positionResultFault.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->positionResultFault = u_positionResultFault.real;
      offset += sizeof(this->positionResultFault);
     return offset;
    }

    const char * getType(){ return "rfid_msg/PDO4"; };
    const char * getMD5(){ return "50aae4a0ce8f7819ec3249b06ed01686"; };

  };

}
#endif
