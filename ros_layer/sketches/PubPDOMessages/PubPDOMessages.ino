/** ROS INIT **/
#include <ros.h>
#include <rfid_msg/PDO1.h>
#include <rfid_msg/PDO2.h>
#include <rfid_msg/PDO3.h>
#include <rfid_msg/PDO4.h>
#include <rfid_msg/SDO.h>
#include <std_msgs/Empty.h>

ros::NodeHandle  nh;
rfid_msg::PDO1 pdo1;
rfid_msg::PDO2 pdo2;
rfid_msg::PDO3 pdo3;
rfid_msg::PDO4 pdo4;
rfid_msg::SDO sdoPubMsg;
rfid_msg::SDO sdoSubMsg;

ros::Publisher pdo1Pub("PDO1", &pdo1);
ros::Publisher pdo2Pub("PDO2", &pdo2);
ros::Publisher pdo3Pub("PDO3", &pdo3);
ros::Publisher pdo4Pub("PDO4", &pdo4);
ros::Publisher sdoPub("SDOres", &sdoPubMsg);
//ros::Subscriber<rfid_msg::SDO> sub("SDOreq", &writeCAN);

/** CAN INIT **/
#include <SPI.h>
#include "mcp_can.h"
const int nodeId = 8;               //Variable nodeId because we never seem to know whether it's 0 or 8
const bool CAN_ACTIVE = true;      //Set to false if the shield is not connected and you're just sending dummy data
const int SPI_CS_PIN = 9;
MCP_CAN CAN(SPI_CS_PIN);            // Set CS shield with correct pin


void writeCAN( const rfid_msg::SDO& can_msg) {
  //TODO: Read serial and send it to CAN
  digitalWrite(13, HIGH - digitalRead(13)); // blink the led

  unsigned char stmp[8] = {can_msg.command, can_msg.index & 0xff, (can_msg.index >> 8) & 0xff, can_msg.subIndex};
  char log_msg[50];
  //  sprintf(log_msg, "cmd: %02X ab: %02X cd: %02X sub: %02X", (int)can_msg.command, ab, cd, can_msg.subIndex);
  //  nh.loginfo(log_msg);
  CAN.sendMsgBuf(0x600, 0, 8, stmp);
  sdoPub.publish(&can_msg);
}

ros::Subscriber<rfid_msg::SDO> sub("SDOreq", &writeCAN );
void setup()
{
  nh.initNode();
  nh.advertise(pdo1Pub);
  nh.advertise(pdo2Pub);
  nh.advertise(pdo3Pub);
  nh.advertise(pdo4Pub);
  nh.advertise(sdoPub);
  nh.subscribe(sub);

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
    case (0x580 + nodeId):
    case (0x600 + nodeId):
    case (0x580):
    case (0x600):
      nh.loginfo("\t\t\t\t 0x580 or 0x600");
      
      char dstr[50];
      sprintf(dstr, "%02X\t%02X\t%02X\t%02X\t%02X\t%02X\t%02X\t%02X\t", buf[0],buf[1],buf[2],buf[3],buf[4],buf[5],buf[6],buf[7]); 
      nh.loginfo(dstr);
      
      //This is an SDO response
      //TODO: Write to serial
      sdoPubMsg.command = buf[0];
      sdoPubMsg.index = (buf[2] * 256)+ buf[1];
      sdoPubMsg.subIndex = buf[3];
      //      sdo.data = ((((buf[4] <<= 8) + buf[5] <<= 8) + buf[6] <<= 8) + buf[7]);
      sdoPubMsg.data = buf[4];
      
      sdoPubMsg.data *= 256 ;
      sdoPubMsg.data += buf[5];
      sdoPubMsg.data *= 256 ;
      sdoPubMsg.data += buf[6];
      sdoPubMsg.data *= 256 ;
      sdoPubMsg.data += buf[7];
      sdoPub.publish(&sdoPubMsg);
      break;
    default:
      char str[50];
      sprintf(str, "CanID: %02X", canId); 
      nh.loginfo(str);
      break;
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


      pdo1.xDeviation             = ((buf[4] <<= 8) + buf[5]);
      pdo1.yDeviation             = ((buf[8] <<= 8) + buf[7]);

      pdo1Pub.publish( &pdo1 );
      break;
    case (0x280 +nodeId):
      nh.loginfo("\tPDO2");

      pdo2.inductionPosition1   = ((buf[1] <<= 8) + buf[0]);
      pdo2.inductionSignal1     = ((buf[3] <<= 8) + buf[2]);
      pdo2.inductionPosition2   = ((buf[5] <<= 8) + buf[4]);
      pdo2.inductionSignal2     = ((buf[7] <<= 8) + buf[6]);
      pdo2Pub.publish( &pdo2 );
      break;
    case (0x380 +nodeId):
      nh.loginfo("\t\t PD03");

      pdo3.gyroX        = ((buf[1] <<= 8) + buf[0]);
      pdo3.gyroY        = ((buf[3] <<= 8) + buf[2]);
      pdo3.gyroZ        = ((buf[5] <<= 8) + buf[4]);
      pdo3.rfidSignal1  = ((buf[6]));
      pdo3.rfidSignal2  = ((buf[7]));
      pdo3Pub.publish( &pdo3 );
      break;
    case (0x480 +nodeId):

      nh.loginfo("\t\t\t PDO4");

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
  }
  nh.loginfo("Done");
}


void loop()
{
  if (CAN_ACTIVE) {
    if (CAN_MSGAVAIL == CAN.checkReceive())           // check if data coming
    {
      //      delay(1000);
      readCAN();
    }
  }
  delay(100);

  nh.spinOnce();
}
