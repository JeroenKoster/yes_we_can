#include <SPI.h>
#include "mcp_can.h"

const int SPI_CS_PIN = 9;
byte inputByte_0;       //Contains index
byte inputByte_1;       //Contains subindex
byte inputByte_2;       //Contains command code

byte dataByte_1;       //Contains command code
byte dataByte_2;       //Contains command code
byte dataByte_3;       //Contains command code
byte dataByte_4;       //Contains command code
MCP_CAN CAN(SPI_CS_PIN);                                    // Set CS pin

uint32_t cmdbits[] = {
  0x40,
  0x23,
  0x2B,
  0x2F,
};
uint32_t subindexes[] = {
  0x00,
  0x01,
  0x02,
  0x03,
  0x04,
  0x05,
  0x06,
  0x07,
  0x08,
  0x09,
  0x0A,
  0x0B,
  0x0C,
  0x0D,
  0x0E,
  0x0F,
  0x10,
0x11,
0x12,
0x13,
0x14,
0x15,
0x16
};
uint32_t indexes[] = {
  0x2000,
  0x2001,
  0x2002,
  0x2003,
  0x2004,
  0x2010,
  0x2050,
  0x2099,
  0x2100,
  0x2101,
  0x2110,
  0x6500,
  0x1800,
  0x1801,
  0x1802,
  0x1804,
  0x1A00,
  0x1A01,
  0x1A02,
  0x1A03
};

void setup()
{
  Serial.begin(115200);

  while (CAN_OK != CAN.begin(CAN_500KBPS))              // init can bus : baudrate = 500k
  {
    delay(100);
  }
}
void loop()
{
  unsigned char len = 0;
  unsigned char buf[8];

  if (CAN_MSGAVAIL == CAN.checkReceive())           // check if data coming
  {
    CAN.readMsgBuf(&len, buf);    // read data,  len: data length, buf: data buf

    unsigned long canId = CAN.getCanId();
    
    if(canId == 0x188){
    Serial.print(canId, HEX);  
    
    Serial.print("\t");
    for (int i = 0; i < len; i++) // print the data
    {
      Serial.print(buf[i], HEX);
      Serial.print("\t");
    } 
    Serial.println();
    }}
  if (Serial.available() == 7)
  {
    Serial.println("Received read request ");
    //Read buffer
    inputByte_0 = Serial.read();
    delay(100);
    inputByte_1 = Serial.read();
    delay(100);
    inputByte_2 = Serial.read();
    delay(100);

    dataByte_1 = Serial.read();
    delay(100);
    dataByte_2 = Serial.read();
    delay(100);
    dataByte_3 = Serial.read();
    delay(100);
    dataByte_4 = Serial.read();
    delay(100);
    
    uint32_t index = indexes[inputByte_0];
    uint32_t ab = index & 0xff;
    uint32_t cd = (index >> 8) & 0xff;
    uint32_t subindex = subindexes[inputByte_1];
    uint32_t cmdbit = cmdbits[inputByte_2];
    unsigned char stmp[8] = {cmdbit, ab, cd, subindex, dataByte_1, dataByte_2, dataByte_3, dataByte_4};
    inputByte_0 = 0;
    inputByte_1 = 0;
    inputByte_2 = 0;
    dataByte_1 = 0;
    dataByte_2 = 0;
    dataByte_3 = 0;
    dataByte_4 = 0;
    
    CAN.sendMsgBuf(0x600, 0, 8, stmp);
  }
}
