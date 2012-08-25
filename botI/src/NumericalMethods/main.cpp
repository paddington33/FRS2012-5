/*
 * main.cpp
 *
 *  Created on: Aug 23, 2012
 *      Author: frs2012-5
 */



#include "ros/ros.h"
#include "code/nr3.h"
#include "code/roots.h"
#include <math.h>

double func(double x)
{
	return sin(x);
}

int main(int argc, char** argv)
{
	ros::init(argc,argv,"NumericalMethods");
	ros::NodeHandle n;

	ROS_INFO("Start Numerical Methods Service");


	double val = zbrent(func,-5.0,-1.0,.001);

	ROS_INFO("Val: [%f]",val);

}
