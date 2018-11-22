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

void pdo1DummyData()
{
    pdo1.tagInField = 1;
    pdo1.rfidCode = 8;
    pdo1.xDeviation = 32;
    pdo1.yDeviation = -23;
}

void setup()
{
  nh.initNode();
  nh.advertise(pdo1Pub);
  pdo1DummyData();
}

void loop()
{
  pdo1Pub.publish( &pdo1 );
  nh.spinOnce();
  delay(5000);
}
