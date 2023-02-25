#!/bin/bash

echo "Checking Employee is present or absent if present then we want to calculate the Daily wage"

res=$(( RANDOM % 2 ))
dayhour=$(( RANDOM % 2 == 0 ? 4 : 8 ))
total_working_days=20
wageperhour=20
total_work_hour=0

for (( day=1;day<=total_working_days;day++ ))
do
case $res in
1)
	echo "Checking the employee working as fullday or parttime and giving salary"
	if [ $dayhour -eq 8 ]
	then
		employeesalary=$(( dayhour * wageperhour ))
		echo "Daily Employee salary is:" $employeesalary
	else
		emplpartsalary=$(( dayhour * wageperhour ))
		echo "Part time Employee salary is:" $emplpartsalary
	fi
	total_work_hour=$(( total_work_hour + dayhour ))
	;;
0)
	echo "Employee is absent and salary is 0"
	;;
esac
done
	total_salary=$(( total_work_hour * wageperhour ))
	echo "Total Salary of an Employee is :"$total_salary

