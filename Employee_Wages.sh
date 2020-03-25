#!/bin/bash -x

function Hour()
{

	if [[ $IsPresent -eq $random_Check && $FullTime -eq $random_Time ]]
        then
			emp_Hrs_Full=$(($emp_Hrs_Full + $Emp_Hrs_Full))
	else
			emp_Hrs_Half=$(($emp_Hrs_Half + $Emp_Hrs_Half))
	fi

}

echo "Welcome to Employee Wage problem"
IsPresent=1
FullTime=1
PartTime=0
EmpRate_PerHr=20
EmpDay_PerMh=20
Emp_Hrs_Full=8
Emp_Hrs_Half=4
emp_Hrs_Full=0
emp_Hrs_Half=0
fullTime_Day_salary=0
partTime_Day_salary=0
count_full[0]=0
count_full[1]=0
count_half[0]=0
count_half[1]=0
while [[ ( $emp_Hrs_Full -le 100 && ${count_full[0]} -le 20 ) || ( $emp_Hrs_Half -le 50 && ${count_half[0]} -le 20 ) ]]
do
random_Check=$((RANDOM%2))
random_Time=$((RANDOM%2))
read -p "1).For Full Time Employee or 2).For Part Time Employee" choice
case $choice in
	1)
		if [[ ( $emp_Hrs_Full -le 100 ) && ( ${count_full[0]} -le 20 ) ]]
		then
			((count_full[0]++))
			if [[ $IsPresent -eq $random_Check && $FullTime -eq $random_Time ]]
        		then
				((count_full[1]++))
				Hour$()
        			fullTime_Day_salary=$(( $Emp_Hrs_Full * $EmpRate_PerHr ))
			else
        			echo "Not Present"
        			salary=0
			fi
		fi
		;;
	2)
		if [[ $emp_Hrs_Half -le 50 && ${count_half[0]} -le 20 ]]
		then
			((count_half[0]++))
			if [[ $IsPresent -eq $random_Check && $PartTime -eq $random_Time ]]
			then
				((count_half[1]++))
				Hour$()
	        		partTime_Day_salary=$(( $Emp_Hrs_Half * $EmpRate_PerHr ))
			else
	        		echo "Not Present"
	        		salary=0
			fi
		fi
		;;
	*)
			salary=0
		;;
esac
done
read -p "1).For Full Time Employee Monthly Wages or 2).For Part Time Employee Monthly o Any key for Exit" choice1
case $choice1 in

	1)
		if [ $fullTime_Day_salary != 0 ]
		then
			full_Time_Monthly=$(( $fullTime_Day_salary * $EmpDay_PerMh ))
			echo "Monthly Wage for Full time Employee is : $full_Time_Monthly and worked for ${count_full[1]} Days"
		else
			salary=0
		fi
		;;
	2)
		if [ $partTime_Day_salary != 0 ]
		then
			part_Time_Monthly=$(( $partTime_Day_salary * $EmpDay_PerMh ))
			echo "Daily Wage for Full time Employee is : $part_Time_Monthly and worked for ${count_half[1]} Days"
		else
                	salary=0
                fi
		;;
	*)
			salary=0
		;;

esac
read -p "1).For Full Time Employee Daily Wages or 2).For Part Time Employee Daily Wages o Any key for Exit" choice1
case $choice1 in
case $choice1 in

	1)
		echo "Daily Wage for Full time Employee is : $fullTime_Day_salary"
		;;
	2)
		echo "Daily Wage for Full time Employee is : $partTime_Day_salary"
		;;
	*)
		salary=0
		;;

esac

