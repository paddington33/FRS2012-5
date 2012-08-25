/*
 * TOSNETDriver_test.cpp
 *
 *  Created on: Aug 21, 2012
 *      Author: frs2012-5
 */

#include "ros/ros.h"
#include <TOSNETDriver/TOSNET_read.h>
#include <TOSNETDriver/TOSNET_write.h>

int main(int argc, char** argv)
{
	ros::init(argc, argv, "TOSNET_tester");

	ros::NodeHandle n;

	//Read service
	ros::ServiceClient readClient = n.serviceClient<TOSNETDriver::TOSNET_read>("/TOSNETDriver/TOSNET_read");
	TOSNETDriver::TOSNET_read tosnetReadService;

	//Write service
	ros::ServiceClient writeClient = n.serviceClient<TOSNETDriver::TOSNET_write>("/TOSNETDriver/TOSNET_write");
	TOSNETDriver::TOSNET_write tosnetWriteService;

	int reg, word;
	std::string data;

	ROS_INFO("Read Test");
	tosnetReadService.request.reg = 1;
	tosnetReadService.request.word = 0;

	readClient.call(tosnetReadService);

	ROS_INFO("Read from reg [%1$i] word [%2$i] : [%3$s]",
			tosnetReadService.request.reg,
			tosnetReadService.request.word,
			tosnetReadService.response.data.c_str());

	ROS_INFO("Write Test");
	tosnetWriteService.request.reg = 1;
	tosnetWriteService.request.word = 4;
	tosnetWriteService.request.data = "11111111";

	writeClient.call(tosnetWriteService);

	ROS_INFO("Write [%3$s] to reg [%1$i] word [%2$i]",
			tosnetWriteService.request.reg,
			tosnetWriteService.request.word,
			tosnetWriteService.request.data.c_str());

	//Read back data
	tosnetReadService.request.reg = 1;
	tosnetReadService.request.word = 4;
	readClient.call(tosnetReadService);

	ROS_INFO("Read [%s]",tosnetReadService.response.data.c_str());
}
