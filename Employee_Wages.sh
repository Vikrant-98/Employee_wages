#!/bin/bash -x
echo "Welcome to Employee Wage problem"
isPresent=1
random_Check=$((RANDOM%2))
if [ $isPresent == $random_Check ]
then
	echo "Present"
else
	echo "Not Present"
fi
