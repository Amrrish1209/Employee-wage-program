#!/bin/bash

echo "Checking Employee is present or absent if present then we want to calculate the Daily wage"


total_working_days=20
wageperhour=20
total_work_hour=0
max_working_hour=100
day=1

while (( $day <= $total_working_days && $total_work_hour<=$max_working_hour ))
do
res=$(( RANDOM % 2 ))
dayhour=$(( RANDOM % 2 == 0 ? 4 : 8 ))
case $res in
1)
	echo "Checking the employee working as fullday or parttime and giving salary"
	if [ $dayhour -eq 8 ]
	then
		employeesalary=$(( dayhour * wageperhour ))
		echo "Full time Employee salary is:" $employeesalary
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
((day++))
done
	total_salary=$(( total_work_hour * wageperhour ))
	echo "Total Salary of an Employee is :"$total_salary

