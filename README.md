# Yes we CAN
RFID-antenne uitlezen m.b.v CANopen en ROS


# Structure
The project is divided in 4 different subsections namely:
- can_reader: This folder contains the files that are needed for reading out the RFID-scanner with the can to serial device
- ros_layer: This folder contains the code that is used to get the data into ROS, after it has been read from the scanner
- web_server: This folder contains the code for setting up a webserver that can serve the data, which is used for visualisations
- visualisations: This folder contains the code to create a webpage that shows a visualisation of the can / rfid data
- demo_app: A debug application that displays the data in PDO fields and allows the user to request SDO's through the application

