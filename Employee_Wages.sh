#!/bin/bash -x
echo "Welcome to Employee Wage problem"
isPresent=1
random_Check=$((RANDOM%2))
empRate_PerHr=20
if [ $isPresent == $random_Check ]
then
        echo "Present"
        emp_Hrs=8
        fullTime_Day_salary=$(( $emp_Hrs * $empRate_PerHr ))
else
        echo "Not Present"
        salary=0
fi

