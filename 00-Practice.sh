#!/bin/bash
userid=$(id -u)
if [$userid -ne 0]
then
    echo "Please run with sudo access"
else
    echo "Your super user"
fi