/*
 * main.cpp
 *
 *  Created on: Aug 23, 2012
 *      Author: frs2012-5
 */



#include "ros/ros.h"
#include <IMUDriver/accelerometer.h>

double x,y,z;
int cnt;
bool cal = false;

void callBack(const IMUDriver::accelerometer::ConstPtr & msg)
{
	if(!cal)
	{
		x += msg->x;
		y += msg->y;
		z += msg->z;

		cnt++;

		if(cnt == 1000)
		{
			ROS_INFO("x: [%f],y: [%f],x: [%f] ",x/cnt,y/cnt,z/cnt);


			x = x/cnt;
			y = y/cnt;
			z = z/cnt;

			cnt = 0;
			cal = true;
		}
	}
	else
	{
		ROS_INFO("x: [%f],y: [%f],x: [%f] ", double(msg->x - x),double(msg->y - y),double(msg->z -z));
	}


}

int main(int argc, char **argv)
{
	ros::init(argc,argv,"DeadReckoning");

	ros::NodeHandle n;

	ros::Subscriber subscriber = n.subscribe("/IMUDriver/Accelerometer",1000,callBack);

	ros::spin();

}
