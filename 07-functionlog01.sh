#!/bin/bash
userid=$(id -u)
Timestamp=$(date +%F-%H-%M-%S)
script_name=$(echo $0 | cut -d "." -f1)
logfile=/temp/$script_name-$Timestamp.log
if [ $userid -ne 0 ]
then
     echo "Please run this script with root access"
     exit 1
else
     echo "your are a super user"
fi
validate(){
    if [ $1 -ne 0 ]
    then
         echo "$2....is Failure"
         exit 1
    else
         echo "$2....is Success"
    fi
}
dnf install mysql -y &>>$logfile
validate $? "installing MYSQL"
dnf install docker -y &>>$logfile
validate $? "installing Docker"