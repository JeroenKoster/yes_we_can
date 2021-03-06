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

typedef struct PDO1struct {
  unsigned char stat;
  unsigned char code[3];
  signed short int xDev;
  signed short int yDev;
};

typedef struct PDO2struct {
  unsigned short int position1;
  unsigned short int signal1;
  unsigned short int position2;
  unsigned short int signal2;
};

typedef struct PDO3struct {
  signed short int gyroX;
  signed short int gyroY;
  signed short int gyroZ;
  unsigned char RFID_sig1;
  unsigned char RFID_sig2;
};

typedef struct PDO4struct {
  signed short int accX;
  signed short int accY;
  signed short int accZ;
  unsigned short int RFIDerror;
};

PDO1struct pdo1struct;
PDO2struct pdo2struct;
PDO3struct pdo3struct;
PDO4struct pdo4struct;

void writeCAN( const rfid_msg::SDO& can_msg) {
  //TODO: Read serial and send it to CAN
  digitalWrite(13, HIGH - digitalRead(13)); // blink the led

  unsigned char stmp[8] = {can_msg.command, can_msg.index & 0xff, (can_msg.index >> 8) & 0xff, can_msg.subIndex, can_msg.data,  (can_msg.data >> 8) & 0xff, (can_msg.data >> 16) & 0xff, (can_msg.data >> 24) & 0xff};// can_msg.data, can_msg.data >> 8, can_msg.data >> 16, can_msg.data >> 24};
  char log_msg[50];
  sprintf(log_msg, "SDORE Q cmd: %02x %02x %02x %02x %02x %02x %02x %02x", stmp[0], stmp[1], stmp[2], stmp[3], stmp[4], stmp[5], stmp[6], stmp[7]);
  nh.loginfo(log_msg);
  CAN.sendMsgBuf(0x608, 0, 8, stmp);
  //sdoPub.publish(&can_msg);   //No need to echo it back.
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
  char str[50];
  sprintf(str, "CanID: %02X", canId);
  nh.loginfo(str);
  switch (canId) {
    case (0x580 + nodeId):
    case (0x600 + nodeId):
    case (0x580):
    case (0x600):
      nh.loginfo("\t\t\t\t 0x580 or 0x600");

      char dstr[60];
      sprintf(dstr, "SDORE S %02X\t%02X\t%02X\t%02X\t%02X\t%02X\t%02X\t%02X\t", buf[0], buf[1], buf[2], buf[3], buf[4], buf[5], buf[6], buf[7]);
      nh.loginfo(dstr);

      //This is an SDO response
      //TODO: Write to serial
      sdoPubMsg.command = buf[0];
      sdoPubMsg.index = (buf[2] * 256) + buf[1];
      sdoPubMsg.subIndex = buf[3];

      //* Blijkbaar is bitshiften niet nodig in het dataveld? 
      sdoPubMsg.data = buf[4];
//      sdoPubMsg.data <<= 8;
      sdoPubMsg.data += buf[5];
//      sdoPubMsg.data <<= 8;
      sdoPubMsg.data += buf[6];
//      sdoPubMsg.data <<= 8;
      sdoPubMsg.data += buf[7];
      
      sdoPub.publish(&sdoPubMsg);
      break;
    default:
        char str[50];
        sprintf(str, "CanID: %02X", canId);
        nh.loginfo(str);
        break;
      case (0x180 +nodeId):
          memcpy(&pdo1struct, buf, sizeof(buf));
          //      memcpy(&pdo1,pdo1struct,sizeof(pdo1struct));
          nh.loginfo("\t\t\t\t PDO1 **********");
          pdo1.tagInField             = ((1 << ++bitCount) & pdo1struct.stat);
          pdo1.codeOk                 = ((1 << ++bitCount) & pdo1struct.stat);
          pdo1.xyDeviationDetermined  = ((1 << ++bitCount) & pdo1struct.stat);
          pdo1.centerPuls             = ((1 << ++bitCount) & pdo1struct.stat);
          pdo1.positionError          = ((1 << ++bitCount) & pdo1struct.stat);
          pdo1.positionEstimate       = ((1 << ++bitCount) & pdo1struct.stat);
          pdo1.fatalError             = ((1 << ++bitCount) & pdo1struct.stat);
          pdo1.antennaStarted         = ((1 << ++bitCount) & pdo1struct.stat);

          pdo1.rfidCode[0]            = pdo1struct.code[0];
          pdo1.rfidCode[1]            = pdo1struct.code[1];
          pdo1.rfidCode[2]            = pdo1struct.code[2];

          pdo1.xDeviation             = pdo1struct.xDev;
          pdo1.yDeviation             = pdo1struct.yDev;
          char adstr[60];
          sprintf(adstr, "X %02X\t Y %02X", pdo1struct.xDev, pdo1struct.yDev);
          nh.loginfo(adstr);
          
          pdo1Pub.publish( &pdo1 );
          break;
        case (0x280 +nodeId):
            nh.loginfo("\tPDO2");
            memcpy(&pdo2struct, buf, sizeof(buf));
            //      memcpy(&pdo2,pdo2struct,sizeof(pdo2struct));
            pdo2.inductionPosition1   = pdo2struct.position1;
            pdo2.inductionSignal1     = pdo2struct.signal1;
            pdo2.inductionPosition2   = pdo2struct.position2;
            pdo2.inductionSignal2     = pdo2struct.signal2;
            pdo2Pub.publish( &pdo2 );
            break;
          case (0x380 +nodeId):
              nh.loginfo("\t\t PD03");
              memcpy(&pdo3struct, buf, sizeof(buf));
              //      memcpy(&pdo3,pdo3struct,sizeof(pdo3struct));
              pdo3.gyroX        = pdo3struct.gyroX;
              pdo3.gyroY        = pdo3struct.gyroY;
              pdo3.gyroZ        = pdo3struct.gyroZ;
              pdo3.rfidSignal1  = pdo3struct.RFID_sig1;
              pdo3.rfidSignal2  = pdo3struct.RFID_sig2;
              pdo3Pub.publish( &pdo3 );
              break;
            case (0x480 +nodeId):

                nh.loginfo("\t\t\t PDO4");
                memcpy(&pdo4struct, buf, sizeof(buf));
                //      memcpy(&pdo4,pdo4struct,sizeof(pdo4struct));
                pdo4.accX                   = pdo4struct.accX;
                pdo4.accY                   = pdo4struct.accY;
                pdo4.accX                   = pdo4struct.accZ;
                uint16_t status             = pdo4struct.RFIDerror;
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
  //  delay(100);

  nh.spinOnce();
}
