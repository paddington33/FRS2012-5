/*
 * main.cpp
 *
 *  Created on: Aug 21, 2012
 *      Author: frs2012-5
 */

#include "TOSNETService.h"

int main(int argc, char** argv)
{
	ros::init(argc,argv,"TOSNETService");
	ros::NodeHandle n;

	ROS_INFO("Start TOSNET Service");

	TOSNETService tosnetService(n);

	ros::ServiceServer tosnetReadServer = n.advertiseService("/TOSNETDriver/TOSNET_read", &TOSNETService::read, &tosnetService);
	ros::ServiceServer tosnetWriteServer = n.advertiseService("/TOSNETDriver/TOSNET_write", &TOSNETService::write, &tosnetService);

	ros::spin();

	return 0;
}
