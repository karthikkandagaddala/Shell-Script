#! /bin/bash/
userid=$(id -u)
if [ $userid -ne 0 ]
then
      echo "please take Sudo Access"
      exit 1
else 
      echo "you are a super user"
fi
validate () {
     if [ $1 -ne 0 ]
     then
           echo "$2....is failure"
           exit 1
     else 
           echo "$2.....is Success"
     fi
}
dnf install mysql -y
validate $? "installing my sql"
dnf install ansible -y
validate $? "insatlling ansible"
