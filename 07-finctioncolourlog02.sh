#!/bin/bash
userid=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
scriptname=$(echo $0 | cut -d "." -f1)
logfile=/tmp/$scriptname-$timestamp.log
if [ $userid -ne 0 ] &>>$logfile
then
     echo "please proceed with sudo access"
     exit 1
else
     echo "your a super user"
fi
colour(){
    if [ $1 -ne 0 ]
    then
         echo "$2....is Failure"
         exit 1
    else
         echo "$2....is Success"
    fi     
}         
dnf install docker -y &>>$logfile
colour $? "Installing Docker"
dnf install mysql -y &>>$logfile
colour $? "Installing mysql 