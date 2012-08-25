/*
 * Strategist.h
 *
 *  Created on: Aug 22, 2012
 *      Author: frs2012-5
 */

#ifndef STRATEGIST_H_
#define STRATEGIST_H_

#include "ros/ros.h"
#include <botI/position_in_row.h>
#include <botI/control_msg.h>

class Strategist
{
public:
	Strategist(ros::NodeHandle n);
	void positionInRowCallback(const botI::position_in_row::ConstPtr & message);
	double angularVelocity(double r, double rw);
	double timing1(double R);
	double timing2(double R);
	double a,b,c,rmin,v,rwheel;
private:
	ros::NodeHandle n;
	ros::Publisher controlPublisher;
};



#endif /* STRATEGIST_H_ */
