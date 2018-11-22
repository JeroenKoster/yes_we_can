# Install script for directory: /home/marco/yes_we_can/ros_layer/rosserial_ws/src/rfid_msg

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/marco/yes_we_can/ros_layer/rosserial_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rfid_msg/msg" TYPE FILE FILES
    "/home/marco/yes_we_can/ros_layer/rosserial_ws/src/rfid_msg/msg/Rfidmsg.msg"
    "/home/marco/yes_we_can/ros_layer/rosserial_ws/src/rfid_msg/msg/PDO1.msg"
    "/home/marco/yes_we_can/ros_layer/rosserial_ws/src/rfid_msg/msg/PDO2.msg"
    "/home/marco/yes_we_can/ros_layer/rosserial_ws/src/rfid_msg/msg/PDO3.msg"
    "/home/marco/yes_we_can/ros_layer/rosserial_ws/src/rfid_msg/msg/PDO4.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rfid_msg/cmake" TYPE FILE FILES "/home/marco/yes_we_can/ros_layer/rosserial_ws/build/rfid_msg/catkin_generated/installspace/rfid_msg-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/marco/yes_we_can/ros_layer/rosserial_ws/devel/include/rfid_msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/marco/yes_we_can/ros_layer/rosserial_ws/devel/share/roseus/ros/rfid_msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/marco/yes_we_can/ros_layer/rosserial_ws/devel/share/common-lisp/ros/rfid_msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/marco/yes_we_can/ros_layer/rosserial_ws/devel/share/gennodejs/ros/rfid_msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/marco/yes_we_can/ros_layer/rosserial_ws/devel/lib/python2.7/dist-packages/rfid_msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/marco/yes_we_can/ros_layer/rosserial_ws/devel/lib/python2.7/dist-packages/rfid_msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/marco/yes_we_can/ros_layer/rosserial_ws/build/rfid_msg/catkin_generated/installspace/rfid_msg.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rfid_msg/cmake" TYPE FILE FILES "/home/marco/yes_we_can/ros_layer/rosserial_ws/build/rfid_msg/catkin_generated/installspace/rfid_msg-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rfid_msg/cmake" TYPE FILE FILES
    "/home/marco/yes_we_can/ros_layer/rosserial_ws/build/rfid_msg/catkin_generated/installspace/rfid_msgConfig.cmake"
    "/home/marco/yes_we_can/ros_layer/rosserial_ws/build/rfid_msg/catkin_generated/installspace/rfid_msgConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rfid_msg" TYPE FILE FILES "/home/marco/yes_we_can/ros_layer/rosserial_ws/src/rfid_msg/package.xml")
endif()

