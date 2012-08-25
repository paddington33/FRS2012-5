#include "ros/ros.h"
#include <botI/position_in_row.h>

int main(int argc, char** argv)
{
	ros::init(argc,argv,"PositionInRow");

	ROS_INFO("This node is a stump");

	ros::NodeHandle n;

	ros::Publisher positionInRowPublisher = n.advertise<botI::position_in_row>("/botI/position_in_row",1000);

	ros::Rate loop_rate(10);

	while (ros::ok())
	{
		botI::position_in_row positionInRowMessage;
		positionInRowMessage.gamma = .1;
		positionInRowMessage.x = .2;

		positionInRowPublisher.publish(positionInRowMessage);

		ros::spinOnce();

		loop_rate.sleep();
	}
}
