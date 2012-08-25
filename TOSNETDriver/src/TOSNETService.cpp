/*
 * TOSNETDriver.cpp
 *
 *  Created on: Aug 21, 2012
 *      Author: frs2012-5
 */

#include "TOSNETService.h"


TOSNETService::TOSNETService(ros::NodeHandle n) :
	n(n)
{
}

TOSNETService::~TOSNETService() {
	// TODO Auto-generated destructor stub
}

bool TOSNETService::read(TOSNETDriver::TOSNET_read::Request &request, TOSNETDriver::TOSNET_read::Response &response)
{
	const std::string readPrefix = "r";
	const int registerSize = 9;

	ros::ServiceClient client = n.serviceClient<SerialDriver::serial_service>("/SerialDriver/serial_service");
	SerialDriver::serial_service serialService;

	std::stringstream ss;
	ss << readPrefix << (int)request.reg << (int)request.word;

	serialService.request.outMessage = ss.str();

	serialService.request.size = registerSize;
	client.call(serialService);

	ROS_DEBUG("outMessage [%s]",serialService.request.outMessage.c_str());
	ROS_DEBUG("inMessage [%s]", serialService.response.inMessage.c_str());

	response.data = serialService.response.inMessage.c_str();

	return true;
}

bool TOSNETService::write(TOSNETDriver::TOSNET_write::Request &request, TOSNETDriver::TOSNET_write::Response &response)
{
	const std::string writePrefix = "w";
	const int dataSize = 8;

	if(dataSize != (int)request.data.size())
	{
		ROS_WARN("Length of data [%1$i] : [%2$i] expected",request.data.size(),dataSize);
		return 1;
	}

	if(request.reg < 0 || request.reg > 7)
	{
		ROS_WARN("Register address must be [0-7] register address [%i]",request.reg);
		return 2;
	}

	if(request.word < 4 || request.word > 7)
	{
		ROS_WARN("Word address must be [0-3] register address [%i]",request.word);
		return 3;
	}
	ros::ServiceClient client = n.serviceClient<SerialDriver::serial_write_service>("/SerialDriver/serial_write_service");
	SerialDriver::serial_write_service serialService;
	serialService.request.outMessage = writePrefix
											+ boost::lexical_cast<std::string>((int)request.reg)
											+ boost::lexical_cast<std::string>((int)request.word)
											+ " "
											+ request.data;

	client.call(serialService);

	return 0;
}
