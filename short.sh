#!/bin/sh

# This script allow you to short easly a URL address

# Usage: For you this script you must pass as parameter the address you want to short. Example: 
# short.sh http://www.google.it
# With this command you will short "http://www.google.it"
# ATTENTION!!! The addres must starts with "http://"

# Variables
FILE="/tmp/short.txt"

# Script

# Control the address
if [ $# -ne 1 ]
then	
	exit 1
fi
# If there is the addres I can execute the script
wget http://tiny-url.info/api/v1/random?url="$1" -O $FILE 
echo The shorted address is 
cat $FILE
echo
echo
