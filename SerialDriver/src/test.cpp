/*
 * test.cpp
 *
 *  Created on: Aug 20, 2012
 *      Author: frs2012-5
 */

#include "ros/ros.h"
#include <SerialDriver/serial.h>

int main(int argc, char** argv)
{
	ros::init(argc,argv,"SerialTest");

	ros::NodeHandle n;
	ros::ServiceClient client = n.serviceClient<SerialDriver::serial>("/SerialDriver/serial_service");

	SerialDriver::serial srv;
	srv.request.outMessage = "r10";
	srv.request.size = 9;

	if (client.call(srv))
	{
		ROS_INFO("Result: [%s]", srv.response.inMessage.c_str());
	}
	else
	{
		ROS_ERROR("Failed to call service serial_service");
		return 1;
	}

	return 0;
}


