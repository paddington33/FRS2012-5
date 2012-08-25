/*
 * ControlService.cpp
 *
 *  Created on: Aug 22, 2012
 *      Author: frs2012-5
 */

#include "ControlService.h"


ControlService::ControlService(ros::NodeHandle n) :
	n(n)
{
	writeClient = n.serviceClient<TOSNETDriver::TOSNET_write>("/TOSNETDriver/TOSNET_write");
	readClient = n.serviceClient<TOSNETDriver::TOSNET_read>("/TOSNETDriver/TOSNET_write");

	//Read control frequency fra FPGA
	TOSNETDriver::TOSNET_read tosnetReadService;
	tosnetReadService.request.reg = 0;
	tosnetReadService.request.word = 0;
	readClient.call(tosnetReadService);

	frequency =  Tools::hexToInt(tosnetReadService.response.data.c_str());

	//Get encoder resolution from parameter server
	n.param<int>("encoder_resolution",encoderResolution,980);

	//Get servo resolution from parameter server
	n.param<int>("servo_resolution",servoResolution,1200);

	//Get servo range from parameter server
	n.param<int>("servo_range_max",servoMax,60);
	n.param<int>("servo_range_min",servoMin,60);
}

ControlService::~ControlService() {
}

int ControlService::ScaleServoAngle(double theta)
{
	//Units: theta in rad
	return (int) theta * radPerDegree * servoResolution/(servoMax - servoMin);
}

int ControlService::ScaleAngularVelocity(double omega)
{
	return (int) omega * encoderResolution / (2 * M_PI * frequency);
}

void ControlService::controlCallback(const botI::control_msg::ConstPtr & message)
{
	TOSNETDriver::TOSNET_write tosnetWriteService;

	//Angular velocity wheel 1
	tosnetWriteService.request.reg = 1;
	tosnetWriteService.request.word = 4;
	tosnetWriteService.request.data = Tools::intToHex( ScaleAngularVelocity(message->omega1) );
	writeClient.call(tosnetWriteService);

	//Angular velocity wheel 2
	tosnetWriteService.request.reg = 1;
	tosnetWriteService.request.word = 5;
	tosnetWriteService.request.data = Tools::intToHex( ScaleAngularVelocity(message->omega2) );
	writeClient.call(tosnetWriteService);

	//Angular velocity wheel 3
	tosnetWriteService.request.reg = 1;
	tosnetWriteService.request.word = 6;
	tosnetWriteService.request.data = Tools::intToHex( ScaleAngularVelocity(message->omega3) );
	writeClient.call(tosnetWriteService);

	//Angular velocity wheel 4
	tosnetWriteService.request.reg = 1;
	tosnetWriteService.request.word = 7;
	tosnetWriteService.request.data = Tools::intToHex( ScaleAngularVelocity(message->omega4) );
	writeClient.call(tosnetWriteService);

	//Servo angle 1
	tosnetWriteService.request.reg = 2;
	tosnetWriteService.request.word = 4;
	tosnetWriteService.request.data = Tools::intToHex( ScaleServoAngle( message->servo_angle1 ) );
	writeClient.call(tosnetWriteService);

	//Servo angle 2
	tosnetWriteService.request.reg = 2;
	tosnetWriteService.request.word = 5;
	tosnetWriteService.request.data = Tools::intToHex( ScaleServoAngle( message->servo_angle2 ) );
	writeClient.call(tosnetWriteService);

	//--
	ROS_WARN("Check time units");
	//--

	//Time 1
	tosnetWriteService.request.reg = 2;
	tosnetWriteService.request.word = 6;
	tosnetWriteService.request.data = Tools::intToHex( (int)message->time1 );
	writeClient.call(tosnetWriteService);

	//Time 2
	tosnetWriteService.request.reg = 2;
	tosnetWriteService.request.word = 7;
	tosnetWriteService.request.data = Tools::intToHex( (int)message->time2 );
	writeClient.call(tosnetWriteService);
}
