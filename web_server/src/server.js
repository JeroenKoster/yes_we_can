#!/usr/bin/env node

/************************************************************************
 Copyright (c) 2017, Rethink Robotics
 Copyright (c) 2017, Ian McMahon

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
************************************************************************/

'use strict';
/**
 * This script opens a ROS listener and a websocket server that forwards the received ROS data.
 */

// Require rosnodejs itself
const rosnodejs = require('rosnodejs');
// Requires the std_msgs message package
const rfid_msg = rosnodejs.require('rfid_msg').msg;

// Set up a websocket server
const WebSocket = require('ws');
const wss = new WebSocket.Server({ port: 3030 });
var rosNodeHandle;
var subHandle;
var pubHandle;
wss.on('connection', function connection(ws) {
  ws.on('message', function incoming(message) {
	console.log('received: %s', message);	
	message = JSON.parse(message);
	
	talker(message.sdo, message.number);
  });

  ws.send('ws connection opened');
});

function talker(pdo, value){
	switch(pdo){
		case "PROGRAM_TAG":
		const sdomsg = new rfid_msg.SDO(); 
		sdomsg.command = 0x23;
		sdomsg.index = 0x2050;
		sdomsg.subIndex = 0x01;
		sdomsg.data = value;
		pubHandle.publish(sdomsg);
		rosnodejs.log.info("You wanna program a tag");	
		break;
	}
	//Ombouwen naar CAN	
	//pubHandle.publish(message);
	//rosnodejs.log.info("I said: " + message);	
}
// Create ROS listener that echo's the data to each websocket connection
function initRosNode() {
  // Register node with ROS master
  rosnodejs.initNode('/listener_node')
    .then((rosNode) => {
      rosNodeHandle = rosNode;						//Store the handle for later reference
      pubHandle = rosNodeHandle.advertise('/SDOreq', rfid_msg.SDO);	//Let ros master know that i Advertise SDO
      subHandle = rosNode.subscribe('/PDO1', rfid_msg.PDO1,		//Subscribe to PDO1
        (data) => { 							// define callback execution
          rosnodejs.log.info('I heard: [' + data + ']');
          wss.clients.forEach(function each(ws) {
            ws.send(JSON.stringify(data));
          });
        }
      )
    });
}

if (require.main === module) {
  // Invoke Main Listener Function
  initRosNode();

}
