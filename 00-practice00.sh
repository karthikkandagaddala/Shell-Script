#!/bin/bash
userid=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
if [ $userid -ne 0 ]
then
    echo "please proceed with Root Acess"
    exit 1
else
    echo "Your a root user"
fi
function(){
 if [ $? -ne 0]
 then
    echo "$2....Failure"
    exit 1
 else
    echo "$2....Completed"
 fi
}
dnf install mysql -y
function $1 "Installing MYSQL"
dnf install Docker -y
function $1 "Instaling Docker"
