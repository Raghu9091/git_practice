#!/bin/bash

GREETINGS="HELOO HOW ARE YOU"
echo "tpid of script 1 $$"
echo $GREETINGS

bash script2.sh # remove the execute permission and check the pids
source ./script2.sh 

