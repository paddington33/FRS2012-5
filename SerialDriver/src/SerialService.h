/*
 * serial_service.h
 *
 *  Created on: Aug 20, 2012
 *      Author: frs2012-5
 */

#include <ros/ros.h>
#include "serial.h"
#include "SerialDriver/serial_service.h"
#include "SerialDriver/serial_write_service.h"

#include <string.h>


class SerialService
{
public:
	SerialService(std::string port , int baudRate);
	bool serial_service(SerialDriver::serial_service::Request  &request, SerialDriver::serial_service::Response &reponse);
	bool serial_write_service(SerialDriver::serial_write_service::Request &request, SerialDriver::serial_write_service::Response &response);
private:
	Serial serial;
};


