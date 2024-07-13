#!/bin/bash
userid=$(id -u)
if [$userid -ne 0]
then
    echo "Please run with sudo access"
    exit 1
else
    echo "Your super user"
fi
dnf install mysql -y
