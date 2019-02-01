#!/bin/bash
echo "$PWD/ye"
gnome-terminal -e roscore
gnome-terminal -e "rosrun rosserial_python serial_node.py"
gnome-terminal --working-directory="$PWD/web_server/src/" -e "nodejs server.js"
gnome-terminal --working-directory="$PWD/visualisation/visualisation/src" -e "npm start"

