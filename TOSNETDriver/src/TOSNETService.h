/*
 * TOSNETDriver.h
 *
 *  Created on: Aug 21, 2012
 *      Author: frs2012-5
 */

#ifndef TOSNETSERVICE_H_
#define TOSNETSERVICE_H_

#include "ros/ros.h"
#include "string.h"
#include <sstream>
#include <SerialDriver/serial_service.h>
#include <SerialDriver/serial_write_service.h>
#include <TOSNETDriver/TOSNET_read.h>
#include <TOSNETDriver/TOSNET_write.h>
#include <boost/lexical_cast.hpp>

class TOSNETService {
public:
	TOSNETService(ros::NodeHandle n);
	virtual ~TOSNETService();
	bool read(TOSNETDriver::TOSNET_read::Request &request, TOSNETDriver::TOSNET_read::Response &response);
	bool write(TOSNETDriver::TOSNET_write::Request &request, TOSNETDriver::TOSNET_write::Response &response);
private:
	ros::NodeHandle n;
};

#endif /* TOSNETSERVICE_H_ */
