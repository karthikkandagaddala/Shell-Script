#!/bin/bash
userid=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
script_name=$(echo $0 | cut -d "." -f1)
logfile=/tmp/$script_name-$timestamp.log
if [ $userid -ne 0 ] &>>$logfile
then
     echo "Please run this script as a sudo access"
     exit1
else
    echo "your a super user"
fi
boom(){
    if [ $1 -ne 0 ]
    then
         echo "$2....is Failure."
         exit1
    else
         echo "$2....is Success"
    fi
}
dnf install mysql -y
boom $? "Installing my sql"
dnf install docker -y
boom $? "installing docker"
dnf install git -y
boom $? "inmstalling git"