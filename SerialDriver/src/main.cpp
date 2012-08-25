/*
 * main.cpp
 *
 *  Created on: Aug 20, 2012
 *      Author: frs2012-5
 */


#include "ros/ros.h"
#include "SerialDriver/serial_mode.h"
#include "SerialDriver/serial.h"
#include "SerialService.h"
#include "SerialDriver/serial_service.h"
#include <std_msgs/String.h>
#include <cstdlib>

void startSerialService(ros::NodeHandle n)
{
	ROS_INFO("Start Serial Service");

	//Parameters
	std::string port;
	int baudrate;

	n.param<std::string>("port",port,"/dev/ttyUSB0");
	n.param<int>("baudrate",baudrate,115200);

	SerialService serialService(port,baudrate);
	ros::ServiceServer serialServiceServer = n.advertiseService("/SerialDriver/serial_service", &SerialService::serial_service,&serialService);
	ros::ServiceServer serialWriteServer = n.advertiseService("/SerialDriver/serial_write_service", &SerialService::serial_write_service, &serialService);

	ros::spin();
}

void startSerialObserver(ros::NodeHandle n)
{
	ROS_INFO("Start Serial Observer");

	//Parameters
	std::string port;
	int baudrate;

	n.param<std::string>("port",port,"/dev/ttyUSB0");
	n.param<int>("baudrate",baudrate,57600);

	ros::Publisher serialObserverPublisher = n.advertise<std_msgs::String>("/SerialDriver/SerialObserver",1000);

	ros::Rate loop_rate(1);

	Serial serial(port,baudrate);

	std_msgs::String msg;
	msg.data = serial.read(char(10));;

	serialObserverPublisher.publish(msg);

	ros::spinOnce();

	loop_rate.sleep();

	while(1)
	{
		usleep(100);
	}
}

int main(int argc, char** argv)
{

	//Parameters
	int serialMode;

	ros::init(argc,argv,"Serial");

	ros::NodeHandle n("SerialDriver");


	n.param<int>("serialMode",serialMode,SerialDriver::serial_mode::Service);

	switch(serialMode)
	{
	case SerialDriver::serial_mode::Service:
		startSerialService(n);
		break;
	case SerialDriver::serial_mode::Observer:
		startSerialObserver(n);
		break;
	}



}

