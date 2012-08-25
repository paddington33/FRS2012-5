/*
 * ControlService.h
 *
 *  Created on: Aug 22, 2012
 *      Author: frs2012-5
 */

#ifndef CONTROLSERVICE_H_
#define CONTROLSERVICE_H_
#include <TOSNETDriver/TOSNET_write.h>
#include <TOSNETDriver/TOSNET_read.h>

#include "ros/ros.h"
#include <botI/control_msg.h>

#include "../Tools/tools.h"


class ControlService {
public:
	ControlService(ros::NodeHandle n);
	virtual ~ControlService();
	void controlCallback(const botI::control_msg::ConstPtr & message);
	int ScaleAngularVelocity(double omega);
	int ScaleServoAngle(double theta);
private:
	static const double radPerDegree = M_PI / 180;;
	int frequency;
	int encoderResolution;
	int servoResolution;
	int servoMax;
	int servoMin;
	ros::NodeHandle n;
	ros::ServiceClient writeClient;
	ros::ServiceClient readClient;
};

#endif /* CONTROLSERVICE_H_ */
