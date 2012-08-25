/*
 * tools.h
 *
 *  Created on: Aug 24, 2012
 *      Author: frs2012-5
 */

#ifndef TOOLS_H_
#define TOOLS_H_

#include <sstream>
#include <iostream>
#include <fstream>
#include <cstdio>
#include <ctime>
#include <stack>
#include <boost/lexical_cast.hpp>
#include "ros/ros.h"

class Tools
{
public:

	static std::string intToHex(unsigned int dec)
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
		      temp = intToHex(remainder.top());
		      hex += temp;
		    }
		    hex.push_back(hexDigits[remainder.top()]);
		    remainder.pop();
		    --i;
		  }

		  return hex;
	}
	static int hexToInt(std::string hex)
	{
		try {
			unsigned int x = boost::lexical_cast<int>("0x" + hex);
			return x;
		} catch(boost::bad_lexical_cast &) {
			ROS_INFO("Hex error: [%s]", hex.c_str());
		}
		return 0;
	}
};





#endif /* TOOLS_H_ */
