#!/bin/bash
userid=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
script_name=$(echo $0 | cut -d "." -f1)
logfile=/tmp/$script_name-$timestamp.log
if [ $userid -ne 0 ]
then
     echo "Please run this script as a sudo access"
     exit 1
else
    echo "your a super user"
fi
boom(){
    if [ $1 -ne 0 ]
    then
         echo "$2....is Failure."
         exit 1
    else
         echo "$2....is Success"
    fi
}
dnf install mysql -y &>>$logfile
boom $? "Installing my sql"
dnf install docker -y &>>$logfile
boom $? "installing docker"
