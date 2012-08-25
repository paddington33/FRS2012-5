/*
 * Control.cpp
 *
 *  Created on: Aug 22, 2012
 *      Author: frs2012-5
 */

#include "ControlService.h"

int main(int argc, char** argv)
{
	ros::init(argc,argv,"Control");

	ros::NodeHandle n;

	ROS_INFO("Start Control Service");

	ControlService controlService(n);

	ros::Subscriber controlSubscriber = n.subscribe<botI::control_msg>("/Strategist/control", 1000, &ControlService::controlCallback, &controlService);

	ros::spin();

	return 0;
}


