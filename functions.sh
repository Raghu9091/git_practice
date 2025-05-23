#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]
then
    echo "Error :: please run the script as a root user"
    exit 1 #give 
else
    echo "your script running succuss full"
fi

#you can provaide to args to functon 
# this is validation function try to installed
VALIDATE(){
    if [$1 -eq 0]
    then
        echo "installing $1 is succuss"
    else
        echo "installing $2 is FAILURE"
        exit 1
fi
}


dnf list installed mysql
if [$1 -ne 0]
then
    echo "My sql is not installed"
    dnf install mysql -y
    VALIDATE $? "Mysql"
else
    echo "My sQL is Alredy installed,nothing to do"
fi

dnf list installed Python  # checking installed or not
if [$? -ne 0]
then
    echo "My python is not installed"
    dnf install python -y
    VALIDATE $? "Python"
else
    echo "Pythonn is Alredy installed,nothing to do"
fi

dnf list installed nginx  # checking installed or not
if [$? -ne 0]
then
    echo "My ngnix is not installed"
    dnf install nginx -y
    VALIDATE $? "niginx"
else
    echo "nginx is Alredy installed,nothing to do"
fi