#!/bin/bash

if [ -d "env" ] 
then
    echo "Python virtual environment exists." 
else
    virtualenv -p python3 env
fi

echo $PWD
source env/bin/activate


pip3 install -r requirements.txt

if [ -d "logs" ] 
then
    echo "Log folder exists." 
else
    mkdir logs
    touch logs/error.log logs/access.log
fi

