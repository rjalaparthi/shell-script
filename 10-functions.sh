#!/bin/bash
ID=$(id -u)

VALIDATE(){
if  [ $1 -ne 0 ]
then
    echo "Error :: $2 ... Failed"
    exit 1
else 
    echo "installing $2 is sucessfull"
fi 

}

if [ $ID -ne 0 ]
then
    echo "Error :: Please run this script with root access"
    exit 1 # you can give other than 0 and it won't proceed
else
    echo "You are root user"
fi #reverse of if, indication condition is end

yum install mysql -y

VALIDATE $? "Installing mysql"

yum install git -y

VALIDATE $? "Installing git"