#!/bin/bash -x
echo "Welcome to Employee Wage problem"
isPresent=1
fullTime=1
partTime=0
random_Check=$((RANDOM%2))
random_Time=$((RANDOM%2))
empRate_PerHr=20
empDay_PerMh=20
fullTime_Day_salary=0
partTime_Day_salary=0
read -p "1).For Full Time Employee or 2).For Part Time Employee" choice
case $choice in
	1)
		if [[ $isPresent == $random_Check && $fullTime == $random_Time ]]
        	then
			emp_Hrs=8
        		fullTime_Day_salary=$(( $emp_Hrs * $empRate_PerHr ))
		else
        		echo "Not Present"
        		salary=0
		fi
		;;
	2)
		if [[ $isPresent == $random_Check && $partTime == $random_Time ]]
		then
			emp_Hrs=4
        		partTime_Day_salary=$(( $emp_Hrs * $empRate_PerHr ))
		else
        		echo "Not Present"
        		salary=0
		fi
		;;
	*)
			salary=0
		;;
esac
read -p "1).For Full Time Employee Monthly or 2).For Part Time Employee Monthly" choice1
case $choice1 in

	1)
		if [ $fullTime_Day_salary != 0 ]
		then
			full_Time_Monthly=$(( $fullTime_Day_salary * $empDay_PerMh ))
		else
			salary=0
		fi
		;;
	2)
		if [ $partTime_Day_salary != 0 ]
		then
			part_Time_Monthly=$(( $partTime_Day_salary * $empDay_PerMh ))
		else
                	salary=0
                fi
		;;
	*)
			salary=0
		;;

esac
