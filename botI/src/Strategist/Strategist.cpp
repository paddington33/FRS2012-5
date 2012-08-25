/*
 * Strategist.cpp
 *
 *  Created on: Aug 22, 2012
 *      Author: frs2012-5
 */


#include "Strategist.h"

Strategist::Strategist(ros::NodeHandle n) :
	n(n)
{
	controlPublisher = n.advertise<botI::control_msg>("/Strategist/control",1000);
}

void Strategist::positionInRowCallback(const botI::position_in_row::ConstPtr & message)
{
	message->gamma;
	message->x;

	ROS_INFO("Gamma: [%1$f] x: [%2$f]",message->gamma, message->x);

	//Calculate R1 and R2 -> R1 = R2
	double r1,r2;
	r1 = 1.0;
	r2 = 1.1;

	double r_wheel1,r_wheel2,r_wheel3,r_wheel4;
	r_wheel1 = r1 - c/2;
	r_wheel2 = r1 + c/2;
	r_wheel3 = r2 - c/2;
	r_wheel4 = r2 + c/2;

	double omega1,omega2,omega3,omega4;
	omega1 = angularVelocity(r1,r_wheel1);
	omega2 = angularVelocity(r1,r_wheel2);
	omega3 = angularVelocity(r1,r_wheel3);
	omega4 = angularVelocity(r1,r_wheel4);

	double t1,t2;
	t1 = timing1(r1);
	t2 = timing2(r1);

	botI::control_msg controlMessage;
	controlMessage.servo_angle1 = .2;
	controlMessage.time1 = t1;
	controlMessage.time2 = t2;
	controlMessage.omega1 = omega1;
	controlMessage.omega2 = omega2;
	controlMessage.omega3 = omega3;
	controlMessage.omega4 = omega4;

	controlPublisher.publish(controlMessage);
}

double Strategist::angularVelocity(double r, double rw)
{
	return rw*v/(r * rwheel);
}

double Strategist::timing1(double R)
{
	return M_PI*R/(2.0 * v);
}

double Strategist::timing2(double R)
{
	return M_PI*R/(4.0 * v);
}

int main(int argc, char** argv)
{
	ros::init(argc,argv,"Strategist");

	ros::NodeHandle n;

	Strategist strategist(n);

	n.param<double>("a",strategist.a,.1);
	n.param<double>("b",strategist.b,.1);
	n.param<double>("c",strategist.c,.1);
	n.param<double>("rmin",strategist.rmin,.1);
	n.param<double>("v",strategist.v,.1);
	n.param<double>("rwheel",strategist.rwheel,.1);

	ros::Subscriber positionInRowSubscriber = n.subscribe("/botI/position_in_row",1000,&Strategist::positionInRowCallback, &strategist);

	ros::spin();
}


