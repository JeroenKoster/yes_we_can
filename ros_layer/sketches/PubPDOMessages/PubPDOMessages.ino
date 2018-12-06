/** ROS INIT **/
#include <ros.h>
#include <rfid_msg/PDO1.h>
#include <rfid_msg/PDO2.h>
#include <rfid_msg/PDO3.h>
#include <rfid_msg/PDO4.h>

ros::NodeHandle  nh;
rfid_msg::PDO1 pdo1;
rfid_msg::PDO2 pdo2;
rfid_msg::PDO3 pdo3;
rfid_msg::PDO4 pdo4;

ros::Publisher pdo1Pub("PDO1", &pdo1);
ros::Publisher pdo2Pub("PDO2", &pdo2);
ros::Publisher pdo3Pub("PDO3", &pdo3);
ros::Publisher pdo4Pub("PDO4", &pdo4);

/** CAN INIT **/
#include <SPI.h>
#include "mcp_can.h"
const int nodeId = 8;               //Variable nodeId because we never seem to know whether it's 0 or 8
const bool CAN_ACTIVE = true;      //Set to false if the shield is not connected and you're just sending dummy data
const int SPI_CS_PIN = 9;
MCP_CAN CAN(SPI_CS_PIN);            // Set CS shield with correct pin

//void pdo1DummyData()
//{
//  pdo1.tagInField = 1;
//  pdo1.rfidCode = 8;
//  pdo1.xDeviation = 32;
//  pdo1.yDeviation = -23;
//}

void setup()
{
  Serial.begin(9600);
  nh.initNode();
  nh.advertise(pdo1Pub);
  nh.advertise(pdo2Pub);
  nh.advertise(pdo3Pub);
  nh.advertise(pdo4Pub);
  //  pdo1DummyData();

  if (CAN_ACTIVE) {
    while (CAN_OK != CAN.begin(CAN_500KBPS))              // init can bus : baudrate = 500k
    {
      delay(100);
    }
  }

}

void readCAN() {
  unsigned char len = 0;
  unsigned char buf[8];

  int bitCount = 0;
  CAN.readMsgBuf(&len, buf);    // read data,  len: data length, buf: data buf

  unsigned long canId = CAN.getCanId();

  switch (canId) {
    case (0x180 +nodeId):
      pdo1.tagInField             = ((1 << ++bitCount) & buf[0]);
      pdo1.codeOk                 = ((1 << ++bitCount) & buf[0]);
      pdo1.xyDeviationDetermined  = ((1 << ++bitCount) & buf[0]);
      pdo1.centerPuls             = ((1 << ++bitCount) & buf[0]);
      pdo1.positionError          = ((1 << ++bitCount) & buf[0]);
      pdo1.positionEstimate       = ((1 << ++bitCount) & buf[0]);
      pdo1.fatalError             = ((1 << ++bitCount) & buf[0]);
      pdo1.antennaStarted         = ((1 << ++bitCount) & buf[0]);

      pdo1.rfidCode[0]            = buf[3];
      pdo1.rfidCode[1]            = buf[2];
      pdo1.rfidCode[2]            = buf[1];


      pdo1.xDeviation             = ((buf[5] <<= 8) + buf[4]);
      pdo1.yDeviation             = ((buf[7] <<= 8) + buf[6]);

      pdo1Pub.publish( &pdo1 );
      break;
    case (0x280 +nodeId):
      pdo2.inductionPosition1   = ((buf[1] <<= 8) + buf[0]);
      pdo2.inductionSignal1     = ((buf[3] <<= 8) + buf[2]);
      pdo2.inductionPosition2   = ((buf[5] <<= 8) + buf[4]);
      pdo2.inductionSignal2     = ((buf[7] <<= 8) + buf[6]);
      pdo2Pub.publish( &pdo2 );
      break;
    case (0x380 +nodeId):
      pdo2.gyroX        = ((buf[1] <<= 8) + buf[0]);
      pdo2.gyroY        = ((buf[3] <<= 8) + buf[2]);
      pdo2.gyroZ        = ((buf[5] <<= 8) + buf[4]);
      pdo2.rfidSignal1  = ((buf[6] <<= 8));
      pdo2.rfidSignal2  = ((buf[7] <<= 8));
      pdo3Pub.publish( &pdo3 );
      break;
    case (0x480 +nodeId):
      pdo4.accX                   = ((buf[1] <<= 8) + buf[0]);
      pdo4.accY                   = ((buf[3] <<= 8) + buf[2]);
      pdo4.accX                   = ((buf[5] <<= 8) + buf[4]);
      uint16_t status = ((buf[7] <<= 8) + buf[6]);
      pdo4.posResult              =  ((1 << ++bitCount) & status);
      pdo4.error                  =  ((1 << ++bitCount) & status);
      pdo4.inaccurate             =  ((1 << ++bitCount) & status);
      pdo4.analysisError          =  ((1 << ++bitCount) & status);
      pdo4.tdiffError             =  ((1 << ++bitCount) & status);
      pdo4.speedError             =  ((1 << ++bitCount) & status);
      pdo4.speedSignError         =  ((1 << ++bitCount) & status);
      pdo4.speedAccelerationError =  ((1 << ++bitCount) & status);
      pdo4.posOutOfBoundsError    =  ((1 << ++bitCount) & status);
      pdo4.noResultError          =  ((1 << ++bitCount) & status);
      pdo4.positionResultFault    =  ((1 << ++bitCount) & status);
      
      pdo4Pub.publish( &pdo4 );
      break;
    default:
      break;
  }

}

void writeCAN() {
  //TODO: Read serial and send it to CAN
}
void loop()
{


  if (CAN_ACTIVE) {
    if (CAN_MSGAVAIL == CAN.checkReceive())           // check if data coming
    {
      readCAN();
    }
    if (Serial.available() == 7                       //7 is a write request with data
        || Serial.available() == 3) {                 //3 is a read request. No data needed
      writeCAN();
    }
  }
  //  Serial.println(0x480 + nodeId, HEX  );
  nh.spinOnce();
}
