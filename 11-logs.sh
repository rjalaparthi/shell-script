#!/bin/bash
ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)

R="\e[31m"
G="\e[32m"
N="\e[0m"



LOG_FILE="/tmp/$0-$TIMESTAMP.log"



VALIDATE(){
if  [ $1 -ne 0 ]
then
    echo -e " Error :: $2 ... $R Failed $N"
    exit 1
else 
    echo -e "$2 is $G sucessfull $N"
fi 

}

if [ $ID -ne 0 ]
then
    echo -e "Error :: $R Please run this script with root access"
    exit 1 # you can give other than 0 and it won't proceed
else
    echo "You are root user"
fi #reverse of if, indication condition is end

yum install mysql -y &>> $LOG_FILE

VALIDATE $? "Installing mysql"

yum install git -y &>> $LOG_FILE

VALIDATE $? "Installing git"