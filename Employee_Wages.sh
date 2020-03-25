#!/bin/bash -x
echo "Welcome to Employee Wage problem"
isPresent=1
fullTime=1
partTime=0
random_Check=$((RANDOM%2))
random_Time=$((RANDOM%2))
empRate_PerHr=20
if [[ $isPresent == $random_Check && $fullTime == $random_Time ]]
then
        emp_Hrs=8
        fullTime_Day_salary=$(( $emp_Hrs * $empRate_PerHr ))
elif [[ $isPresent == $random_Check && $partTime == $random_Time ]]
then
        emp_Hrs=4
        partTime_Day_salary=$(( $emp_Hrs * $empRate_PerHr ))
else
        echo "Not Present"
        salary=0
fi

