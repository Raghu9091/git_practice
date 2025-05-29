#!/bin/bash

userid=$(id -u)
if [ $userid -ne 0 ]
then
    echo "Error :: please run the script as a root user"
    exit 1 #give 
else
    echo "your script running succuss full"
fi

dnf list installed mysql
if [$? -ne 0]
then
    echo "My sql is not installed"
    dnf install mysql -y
    if [$? -eq 0]
    then
        echo "installing my sql is succuss"
    else
        echo "installing  my sql is FAILURE"
        exit 1
    fi
 else
    echo "My sQL is Alredy installed,nothing to do"

fi

# dnf install mysql -y
# if [$? -eq 0]
# then
#     echo "installing my sql is succuss"
# else
#     echo "installing  my sql is FAILURE"
#     exit 1
# fi
