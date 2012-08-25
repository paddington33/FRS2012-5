/**
 * @file serial.h
 * @author  William Woodall <wjwwood@gmail.com>
 * @version 0.1
 *
 * @section LICENSE
 *
 * The MIT License
 *
 * Copyright (c) 2011 William Woodall
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 * @section DESCRIPTION
 *
 * This provides a cross platform interface for interacting with Serial Ports.
 */


#ifndef SERIAL_H
#define SERIAL_H

#include <iostream>
#include <sstream>
#include <string>
#include <istream>

#include <boost/asio.hpp>
#include <boost/asio/serial_port.hpp>
#include <boost/bind.hpp>
#include <boost/thread.hpp>

// DEFINES
#define DEFAULT_BAUDRATE 115200
#define DEFAULT_TIMEOUT 0.0
#define DEFAULT_BYTESIZE EIGHTBITS
#define DEFAULT_PARITY PARITY_NONE
#define DEFAULT_STOPBITS STOPBITS_ONE
#define DEFAULT_FLOWCONTROL FLOWCONTROL_NONE

// Serial Port settings CONSTANTS
enum { FIVEBITS, SIXBITS, SEVENBITS, EIGHTBITS };
enum { PARITY_NONE, PARITY_ODD, PARITY_EVEN };
enum { STOPBITS_ONE, STOPBITS_ONE_POINT_FIVE, STOPBITS_TWO };
enum { FLOWCONTROL_NONE, FLOWCONTROL_SOFTWARE, FLOWCONTROL_HARDWARE };

class Serial {
public:
    /** Constructor, Creates a Serial object but doesn't open the serial port. */
    Serial();
    
    /**
    * Constructor, creates a SerialPortBoost object and opens the port.
    * 
    * @param port A std::string containing the address of the serial port,
    *        which would be something like 'COM1' on Windows and '/dev/ttyS0'
    *        on Linux.
    * 
    * @param baudrate An integer that represents the buadrate
    * 
    * @param timeout A double that represents the time (in seconds) until a 
    *        timeout on reads occur.  Setting this to a number less than or 
    *        equal to zero will silently disable the timeout on reads.
    * 
    * @param bytesize Size of each byte in the serial transmission of data, 
    *        default is EIGHTBITS, possible values are: FIVEBITS, 
    *        SIXBITS, SEVENBITS, EIGHTBITS
    * 
    * @param parity Method of parity, default is PARITY_NONE, possible values
    *        are: PARITY_NONE, PARITY_ODD, PARITY_EVEN
    * 
    * @param stopbits Number of stop bits used, default is STOPBITS_ONE, possible 
    *        values are: STOPBITS_ONE, STOPBITS_ONE_POINT_FIVE, STOPBITS_TWO
    * 
    * @param flowcontrol Type of flowcontrol used, default is FLOWCONTROL_NONE, possible
    *        values are: FLOWCONTROL_NONE, FLOWCONTROL_SOFTWARE, FLOWCONTROL_HARDWARE
    * 
    * @throw SerialPortAlreadyOpenException
    * @throw SerialPortFailedToOpenException
    */
    Serial(std::string port,
           int baudrate = DEFAULT_BAUDRATE,
           double timeout = DEFAULT_TIMEOUT,
           int bytesize = DEFAULT_BYTESIZE,
           int parity = DEFAULT_PARITY,
           int stopbits = DEFAULT_STOPBITS,
           int flowcontrol = DEFAULT_FLOWCONTROL);
    
    /** Destructor */
    ~Serial();
    
    /** 
    * Opens the serial port as long as the portname is set and the port isn't alreay open.
    * 
    * @throw SerialPortAlreadyOpenException
    * @throw SerialPortFailedToOpenException
    */
    void open();
    
    /** Closes the serial port and terminates threads. */
    void close();
    
    /** Read size bytes from the serial port.
    * If a timeout is set it may return less characters than requested. With no timeout
    * it will block until the requested number of bytes have been read.
    * 
    * @param buffer A char[] of length >= the size parameter to hold incoming data.
    * 
    * @param size An integer defining how many bytes to be read.
    * 
    * @return An integer representing the number of bytes read.
    */
    int read(char* buffer, int size = 1);
    
    /** Read size bytes from the serial port.
    * If a timeout is set it may return less characters than requested. With no timeout
    * it will block until the requested number of bytes have been read.
    * 
    * @param size An integer defining how many bytes to be read.
    * 
    * @return A std::string containing the data read.
    */
    std::string read(int size = 1);
    
    /** Read until chararacter apears from the serial port.
    * If a timeout is set it may return less characters than requested. With no timeout
    * it will block until the requested number of bytes have been read.
    *
    * @param terminationChar A char defining the termination character
    *
    * @return A std::string containing the data read.
    */
    std::string read(char terminationChar = '\n');

    /** Write length bytes from buffer to the serial port.
    * 
    * @param data A char[] with data to be written to the serial port.
    * 
    * @param length An integer representing the number of bytes to be written.
    * 
    * @return An integer representing the number of bytes written.
    */
    int write(char data[], int length);
    
    /** Write a string to the serial port.
    * 
    * @param data A std::string to be written to the serial port. (must be null terminated)
    * 
    * @return An integer representing the number of bytes written to the serial port.
    */
    int write(std::string data);
    
    /** Sets the logic level of the RTS line.
    * 
    * @param level The logic level to set the RTS to. Defaults to true.
    */
    void setRTS(bool level = true);
    
    /** Sets the logic level of the DTR line.
    * 
    * @param level The logic level to set the DTR to. Defaults to true.
    */
    void setDTR(bool level = true);
    
    /** Gets the status of the CTS line.
    * 
    * @return A boolean value that represents the current logic level of the CTS line.
    */
    bool getCTS();
    
    /** Gets the status of the DSR line.
    * 
    * @return A boolean value that represents the current logic level of the DSR line.
    */
    bool getDSR();
    
    /** Sets the timeout for reads in seconds.
    * 
    * @param timeout A long that specifies how long the read timeout is in seconds.
    */
    void setTimeoutMilliseconds(long timeout);
    
    /** Gets the timeout for reads in seconds.
    * 
    * @return A long that specifies how long the read timeout is in seconds.
    */
    long getTimeoutMilliseconds();
    
    /** Sets the baudrate for the serial port.
    * 
    * @param baudrate An integer that sets the baud rate for the serial port.
    */
    void setBaudrate(int baudrate);
    
    /** Gets the baudrate for the serial port.
    * 
    * @return An integer that sets the baud rate for the serial port.
    */
    int getBaudrate();
    
    /** Sets the bytesize for the serial port.
    * 
    * @param bytesize Size of each byte in the serial transmission of data, 
    *        default is EIGHTBITS, possible values are: FIVEBITS, 
    *        SIXBITS, SEVENBITS, EIGHTBITS
    */
    void setBytesize(int bytesize);
    
    /** Gets the bytesize for the serial port.
    * 
    * @return Size of each byte in the serial transmission of data, 
    *         default is EIGHTBITS, possible values are: FIVEBITS, 
    *         SIXBITS, SEVENBITS, EIGHTBITS
    */
    int getBytesize();
    
    /** Sets the parity for the serial port.
    * 
    * @param parity Method of parity, default is PARITY_NONE, possible values
    *        are: PARITY_NONE, PARITY_ODD, PARITY_EVEN
    */
    void setParity(int parity);
    
    /** Gets the parity for the serial port.
    * 
    * @return Method of parity, default is PARITY_NONE, possible values
    *         are: PARITY_NONE, PARITY_ODD, PARITY_EVEN
    */
    int getParity();
    
    /** Sets the stopbits for the serial port.
    * 
    * @param stopbits Number of stop bits used, default is STOPBITS_ONE, possible 
    *        values are: STOPBITS_ONE, STOPBITS_ONE_POINT_FIVE, STOPBITS_TWO
    */
    void setStopbits(int stopbits);
    
    /** Gets the stopbits for the serial port.
    * 
    * @return Number of stop bits used, default is STOPBITS_ONE, possible 
    *         values are: STOPBITS_ONE, STOPBITS_ONE_POINT_FIVE, STOPBITS_TWO
    */
    int getStopbits();
    
    /** Sets the flow control for the serial port.
    * 
    * @param flowcontrol Type of flowcontrol used, default is FLOWCONTROL_NONE, possible
    *        values are: FLOWCONTROL_NONE, FLOWCONTROL_SOFTWARE, FLOWCONTROL_HARDWARE
    */
    void setFlowcontrol(int flowcontrol);
    
    /** Gets the flow control for the serial port.
    * 
    * @return Type of flowcontrol used, default is FLOWCONTROL_NONE, possible
    *         values are: FLOWCONTROL_NONE, FLOWCONTROL_SOFTWARE, FLOWCONTROL_HARDWARE
    */
    int getFlowcontrol();
private:
    void init();
    void read_complete(const boost::system::error_code& error, std::size_t bytes_transferred);
    void timeout_callback(const boost::system::error_code& error);
    
    boost::asio::io_service io_service;
    
    boost::asio::io_service::work * work;
    
    boost::asio::serial_port * serial_port;
    
    boost::asio::deadline_timer * timeout_timer;
    
    boost::asio::streambuf read_buffer;

    std::string port;
    boost::asio::serial_port_base::baud_rate * baudrate;
    boost::posix_time::time_duration * timeout;
    boost::asio::serial_port_base::character_size * bytesize;
    boost::asio::serial_port_base::parity * parity;
    boost::asio::serial_port_base::stop_bits * stopbits;
    boost::asio::serial_port_base::flow_control * flowcontrol;
    
    int bytes_read;
    int bytes_to_read;
    bool reading;
};

class SerialPortAlreadyOpenException : public std::exception {
    const char * port;
public:
    SerialPortAlreadyOpenException(const char * port) {this->port = port;}
    
    virtual const char* what() const throw() {
        std::stringstream ss;
        ss << "Serial Port already open: " << this->port;
        return ss.str().c_str();
    }
};

class SerialPortFailedToOpenException : public std::exception {
    const char * e_what;
public:
    SerialPortFailedToOpenException(const char * e_what) {this->e_what = e_what;}
    
    virtual const char* what() const throw() {
        std::stringstream ss;
        ss << "Serial Port failed to open: " << this->e_what;
        return ss.str().c_str();
    }
};

class InvalidBytesizeException : public std::exception {
    int bytesize;
public:
    InvalidBytesizeException(int bytesize) {this->bytesize = bytesize;}
    
    virtual const char* what() const throw() {
        std::stringstream ss;
        ss << "Invalid bytesize provided: " << this->bytesize;
        return ss.str().c_str();
    }
};

class InvalidParityException : public std::exception {
    int parity;
public:
    InvalidParityException(int parity) {this->parity = parity;}
    
    virtual const char* what() const throw() {
        std::stringstream ss;
        ss << "Invalid parity provided: " << this->parity;
        return ss.str().c_str();
    }
};

class InvalidStopbitsException : public std::exception {
    int stopbits;
public:
    InvalidStopbitsException(int stopbits) {this->stopbits = stopbits;}
    
    virtual const char* what() const throw() {
        std::stringstream ss;
        ss << "Invalid stopbits provided: " << this->stopbits;
        return ss.str().c_str();
    }
};

class InvalidFlowcontrolException : public std::exception {
    int flowcontrol;
public:
    InvalidFlowcontrolException(int flowcontrol) {this->flowcontrol = flowcontrol;}
    
    virtual const char* what() const throw() {
        std::stringstream ss;
        ss << "Invalid flowcontrol provided: " << this->flowcontrol;
        return ss.str().c_str();
    }
};

#endif
