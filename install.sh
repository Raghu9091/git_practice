#!/bin/bash

userid=$(id -u)
if [ $userid -ne 0 ]
then
    echo "Error :: please run the script as a root user"
else
    echo "your script running succuss full"