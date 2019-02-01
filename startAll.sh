#!/bin/bash
roscore &
rosrun rosserial_python serial_node.py &
cd web_server/src/webserver/
npm start &
cd ../reactclient/
npm start &
