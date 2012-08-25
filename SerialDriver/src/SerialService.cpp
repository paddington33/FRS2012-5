/*
 * starter.cpp
 *
 *  Created on: Aug 20, 2012
 *      Author: frs2012-5
 */


#include "SerialService.h"

bool SerialService::serial_service( SerialDriver::serial_service::Request  &request, SerialDriver::serial_service::Response &response)
{
	ROS_INFO("Serial Read Service Requested");

	serial.write(request.outMessage.c_str());

	ROS_INFO("Serial Read Service Write");

	response.inMessage = serial.read(request.size);

	ROS_INFO("Serial Read Service Read");

	return true;
}

bool SerialService::serial_write_service(SerialDriver::serial_write_service::Request &request, SerialDriver::serial_write_service::Response &response)
{
	ROS_INFO("Serial Write Service Requested");

	return serial.write(request.outMessage.c_str());
}


SerialService::SerialService(std::string port, int baudrate) :
		serial(port,baudrate)
{
}

