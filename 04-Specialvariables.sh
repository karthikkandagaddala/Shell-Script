#!/bin/bash
echo "All variables:$@"
echo "Script name:$0"
echo "Currect working directory:$pwd"
echo "Hostname:$hostname"
echo "Home directory of current user:$home"
echo "Which user is running this script:$user"
echo "process ID of the current shell script:$$"
echo "process ID of last background command:$!"
echo "Previous status exit status:$?"
echo "To know who present user:$(id -u)" #we have to know previous
