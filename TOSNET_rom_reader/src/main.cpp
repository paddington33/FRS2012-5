/*
 * main.cpp
 *
 *  Created on: Aug 21, 2012
 *      Author: frs2012-5
 */

#include "ros/ros.h"
#include <TOSNETDriver/TOSNET_read.h>
#include <TOSNETDriver/TOSNET_write.h>
#include <sstream>
#include <iostream>
#include <fstream>
#include <cstdio>
#include <ctime>
#include <stack>
#include <boost/lexical_cast.hpp>

std::string int2hex(unsigned int dec)
{
	int i = 0;
	std::stack <int>remainder;
	std::string hex, temp;
	char hexDigits[] = { "0123456789abcdef" };

	if(dec == 0)
		hex = hexDigits[0];

	while (dec != 0)
	{
		remainder.push(dec % 16);
		dec /= 16;
		++i;
	}

	while (i != 0)
	  {
	    if (remainder.top() > 15)
	    {
	      temp = int2hex(remainder.top());
	      hex += temp;
	    }
	    hex.push_back(hexDigits[remainder.top()]);
	    remainder.pop();
	    --i;
	  }

	  return hex;
}

std::string int2hex(unsigned int dec, int length)
{
	std::string temp = int2hex(dec);
	std::stringstream ss;
	for(int i = 0; i< length - temp.size(); i++)
	{
		ss << "0";
	}
	ss << temp;
	return ss.str();
}


std::string currentTime()
{
	time_t rawtime;
	struct tm * timeinfo;
	char buffer [80];

	time ( &rawtime );
	timeinfo = localtime ( &rawtime );

	strftime (buffer,80,"%Y-%m-%d-%H-%M-%S",timeinfo);
	puts (buffer);

	return buffer;
}


int main(int argc, char** argv)
{
	ros::init(argc,argv,"TOSNETRomRead");

	ros::NodeHandle n;

	//Read service
	ros::ServiceClient readClient = n.serviceClient<TOSNETDriver::TOSNET_read>("/TOSNETDriver/TOSNET_read");
	TOSNETDriver::TOSNET_read tosnetReadService;

	//Write service
	ros::ServiceClient writeClient = n.serviceClient<TOSNETDriver::TOSNET_write>("/TOSNETDriver/TOSNET_write");
	TOSNETDriver::TOSNET_write tosnetWriteService;

	int dataPoints;
	std::string data;

	dataPoints = 4000;

	std::ofstream motorTestFile;
	std::stringstream filenameStream;
	filenameStream << "/home/frs2012-5/fuerte_workspace/TOSNET_rom_reader/motortest/motortest" << currentTime() << ".txt";

	ROS_INFO(filenameStream.str().c_str());
	motorTestFile.open (filenameStream.str().c_str());

	std::stringstream ss;
	unsigned int x;

	motorTestFile << "{";

	for(int i = 0; i < dataPoints;i++)
	{
		tosnetWriteService.request.reg = 1;
		tosnetWriteService.request.word = 4;
		tosnetWriteService.request.data = int2hex(i,8);

		ROS_INFO(tosnetWriteService.request.data.c_str());

		writeClient.call(tosnetWriteService);

		//Read back data
		tosnetReadService.request.reg = 1;
		tosnetReadService.request.word = 0;
		readClient.call(tosnetReadService);

		ss << std::hex << tosnetReadService.response.data.c_str();
		ss >> x;

		motorTestFile << "{" <<  i  << "," << static_cast<int>(x) << "}";

		if(i != dataPoints-1)
			motorTestFile << ",";

		usleep(100);
	}

	motorTestFile << "}";
	motorTestFile.close();

}


