#!/bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]
then
    echo "Error :: Please run this script with root access"
    exit 1 # you can give other than 0 and it won't proceed
else
    echo "You are root user"
fi #reverse of if

yum install mysqlll -y

if  [ $? -ne 0 ]
then
    echo "Error :: Installing mysql is failed"
    exit 1
else 
    echo "installing mysql is sucessfull"
fi    
