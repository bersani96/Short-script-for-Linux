#!/bin/sh

# This script allow you to short easly a URL address

# Usage: For this script you must pass as parameter the address you want to short. Example: 
# short.sh http://www.google.it
# With this command you will short "http://www.google.it"
# ATTENTION!!! The addres must starts with "http://"

# Variables
FILE="/tmp/short.txt"

# Script

# Control the address. If there isn't an addres, exit
if [ $# -ne 1 ]
then	
	exit 1
fi

# If there is an addres, control if it starts with http://
ADDRESS=$1
APP=`expr substr $ADDRESS 1 7`
if [ $APP -ne "http://" ]
then
	echo "The address must start with http://"
	exit 1
fi

# If there is the addres, and it starts with http://,  I can execute the script
wget http://tiny-url.info/api/v1/random?url="$ADDRESS" -O $FILE 
echo The shorted address is 
cat $FILE
echo
echo
