#ifndef _ROS_rfid_msg_PDO2_h
#define _ROS_rfid_msg_PDO2_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace rfid_msg
{

  class PDO2 : public ros::Msg
  {
    public:
      typedef float _inductionPosition1_type;
      _inductionPosition1_type inductionPosition1;
      typedef float _inductionSignal1_type;
      _inductionSignal1_type inductionSignal1;
      typedef float _inductionPosition2_type;
      _inductionPosition2_type inductionPosition2;
      typedef float _inductionSignal2_type;
      _inductionSignal2_type inductionSignal2;

    PDO2():
      inductionPosition1(0),
      inductionSignal1(0),
      inductionPosition2(0),
      inductionSignal2(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      union {
        float real;
        uint32_t base;
      } u_inductionPosition1;
      u_inductionPosition1.real = this->inductionPosition1;
      *(outbuffer + offset + 0) = (u_inductionPosition1.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_inductionPosition1.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_inductionPosition1.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_inductionPosition1.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->inductionPosition1);
      union {
        float real;
        uint32_t base;
      } u_inductionSignal1;
      u_inductionSignal1.real = this->inductionSignal1;
      *(outbuffer + offset + 0) = (u_inductionSignal1.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_inductionSignal1.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_inductionSignal1.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_inductionSignal1.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->inductionSignal1);
      union {
        float real;
        uint32_t base;
      } u_inductionPosition2;
      u_inductionPosition2.real = this->inductionPosition2;
      *(outbuffer + offset + 0) = (u_inductionPosition2.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_inductionPosition2.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_inductionPosition2.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_inductionPosition2.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->inductionPosition2);
      union {
        float real;
        uint32_t base;
      } u_inductionSignal2;
      u_inductionSignal2.real = this->inductionSignal2;
      *(outbuffer + offset + 0) = (u_inductionSignal2.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_inductionSignal2.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_inductionSignal2.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_inductionSignal2.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->inductionSignal2);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      union {
        float real;
        uint32_t base;
      } u_inductionPosition1;
      u_inductionPosition1.base = 0;
      u_inductionPosition1.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_inductionPosition1.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_inductionPosition1.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_inductionPosition1.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->inductionPosition1 = u_inductionPosition1.real;
      offset += sizeof(this->inductionPosition1);
      union {
        float real;
        uint32_t base;
      } u_inductionSignal1;
      u_inductionSignal1.base = 0;
      u_inductionSignal1.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_inductionSignal1.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_inductionSignal1.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_inductionSignal1.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->inductionSignal1 = u_inductionSignal1.real;
      offset += sizeof(this->inductionSignal1);
      union {
        float real;
        uint32_t base;
      } u_inductionPosition2;
      u_inductionPosition2.base = 0;
      u_inductionPosition2.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_inductionPosition2.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_inductionPosition2.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_inductionPosition2.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->inductionPosition2 = u_inductionPosition2.real;
      offset += sizeof(this->inductionPosition2);
      union {
        float real;
        uint32_t base;
      } u_inductionSignal2;
      u_inductionSignal2.base = 0;
      u_inductionSignal2.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_inductionSignal2.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_inductionSignal2.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_inductionSignal2.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->inductionSignal2 = u_inductionSignal2.real;
      offset += sizeof(this->inductionSignal2);
     return offset;
    }

    const char * getType(){ return "rfid_msg/PDO2"; };
    const char * getMD5(){ return "e090932213462699dc59df25654c653e"; };

  };

}
#endif
