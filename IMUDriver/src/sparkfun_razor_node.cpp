#include <string>
#include "ros/ros.h"
#include "SparkFun9DOF.h"
#include <IMUDriver/accelerometer.h>
#include <IMUDriver/gyroscope.h>
#include <IMUDriver/magnetometer.h>

using namespace std;

int main(int argc, char **argv)
{
	ros::init(argc, argv, "sparkfun_razor_9DOF");
	ros::NodeHandle nh;
	ros::NodeHandle n("~");

	string sub_id;
	string pub_acc,pub_gyro,pub_mag;
	string frame_id;

	bool use_acc,use_mag,use_gyro;

	n.param<string>("frame_id", frame_id, "/base_link");

	n.param<string>("sub_serial_string_topic_id",sub_id,"/fmCSP/S0_rx_msg");
	n.param<string>("pub_accelerometer_topic_id",pub_acc,"/IMUDriver/Accelerometer");
	n.param<string>("pub_gyroscope_topic_id",pub_gyro,"/IMUDriver/Gyroscope");
	n.param<string>("pub_magnetometer_topic_id",pub_mag,"/IMUDriver/Magnetometer");

	n.param<bool>("publish_accelerometer",use_acc,true);
	n.param<bool>("publish_gyroscope",use_gyro,true);
	n.param<bool>("publish_magnetometer",use_mag,true);

	SparkFun9DOF node;

	node.setFrameId(frame_id);

	node.setAccTopic (nh.advertise<IMUDriver::accelerometer>(pub_acc , 1));
	node.setGyroTopic(nh.advertise<IMUDriver::gyroscope>    (pub_gyro, 1));
	node.setMagTopic (nh.advertise<IMUDriver::magnetometer> (pub_mag , 1));

	node.enableAccelerometer(use_acc);
	node.enableGyro(use_gyro);
	node.enableMag(use_mag);

	ros::Subscriber sub = nh.subscribe(sub_id.c_str(), 1, &SparkFun9DOF::newMsgCallback,&node);

	ros::spin();

	return 0;

}
