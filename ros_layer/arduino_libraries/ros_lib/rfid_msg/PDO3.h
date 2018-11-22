#ifndef _ROS_rfid_msg_PDO3_h
#define _ROS_rfid_msg_PDO3_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace rfid_msg
{

  class PDO3 : public ros::Msg
  {
    public:
      typedef float _gyroX_type;
      _gyroX_type gyroX;
      typedef float _gyroY_type;
      _gyroY_type gyroY;
      typedef float _gyroZ_type;
      _gyroZ_type gyroZ;
      typedef float _rfidSignal1_type;
      _rfidSignal1_type rfidSignal1;
      typedef float _rfidSignal2_type;
      _rfidSignal2_type rfidSignal2;

    PDO3():
      gyroX(0),
      gyroY(0),
      gyroZ(0),
      rfidSignal1(0),
      rfidSignal2(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      union {
        float real;
        uint32_t base;
      } u_gyroX;
      u_gyroX.real = this->gyroX;
      *(outbuffer + offset + 0) = (u_gyroX.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_gyroX.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_gyroX.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_gyroX.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->gyroX);
      union {
        float real;
        uint32_t base;
      } u_gyroY;
      u_gyroY.real = this->gyroY;
      *(outbuffer + offset + 0) = (u_gyroY.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_gyroY.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_gyroY.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_gyroY.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->gyroY);
      union {
        float real;
        uint32_t base;
      } u_gyroZ;
      u_gyroZ.real = this->gyroZ;
      *(outbuffer + offset + 0) = (u_gyroZ.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_gyroZ.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_gyroZ.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_gyroZ.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->gyroZ);
      union {
        float real;
        uint32_t base;
      } u_rfidSignal1;
      u_rfidSignal1.real = this->rfidSignal1;
      *(outbuffer + offset + 0) = (u_rfidSignal1.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_rfidSignal1.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_rfidSignal1.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_rfidSignal1.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->rfidSignal1);
      union {
        float real;
        uint32_t base;
      } u_rfidSignal2;
      u_rfidSignal2.real = this->rfidSignal2;
      *(outbuffer + offset + 0) = (u_rfidSignal2.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_rfidSignal2.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_rfidSignal2.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_rfidSignal2.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->rfidSignal2);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      union {
        float real;
        uint32_t base;
      } u_gyroX;
      u_gyroX.base = 0;
      u_gyroX.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_gyroX.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_gyroX.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_gyroX.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->gyroX = u_gyroX.real;
      offset += sizeof(this->gyroX);
      union {
        float real;
        uint32_t base;
      } u_gyroY;
      u_gyroY.base = 0;
      u_gyroY.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_gyroY.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_gyroY.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_gyroY.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->gyroY = u_gyroY.real;
      offset += sizeof(this->gyroY);
      union {
        float real;
        uint32_t base;
      } u_gyroZ;
      u_gyroZ.base = 0;
      u_gyroZ.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_gyroZ.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_gyroZ.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_gyroZ.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->gyroZ = u_gyroZ.real;
      offset += sizeof(this->gyroZ);
      union {
        float real;
        uint32_t base;
      } u_rfidSignal1;
      u_rfidSignal1.base = 0;
      u_rfidSignal1.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_rfidSignal1.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_rfidSignal1.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_rfidSignal1.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->rfidSignal1 = u_rfidSignal1.real;
      offset += sizeof(this->rfidSignal1);
      union {
        float real;
        uint32_t base;
      } u_rfidSignal2;
      u_rfidSignal2.base = 0;
      u_rfidSignal2.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_rfidSignal2.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_rfidSignal2.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_rfidSignal2.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->rfidSignal2 = u_rfidSignal2.real;
      offset += sizeof(this->rfidSignal2);
     return offset;
    }

    const char * getType(){ return "rfid_msg/PDO3"; };
    const char * getMD5(){ return "3ad77accb5978b7a753a2d9c57d247a9"; };

  };

}
#endif
