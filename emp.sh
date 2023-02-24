#!/bin/bash

echo "Checking Employee is present or absent if present then we want to calculate the Daily wage"

res=$(( RANDOM % 2 ))

case $res in 
1)
	echo "Checking the employee working as fullday or parttime and giving salary"
	fulldayhour=$(( RANDOM % 2 == 0 ? 4 : 8 ))
	wageperhour=20
	if [ $fulldayhour -eq 8 ]
	then
		employeesalary=$(( fulldayhour * wageperhour ))
		echo "Daily Employee salary is:" $employeesalary
	else
		emplpartsalary=$(( fulldayhour * wageperhour ))
		echo "Part time Employee salary is:" $emplpartsalary
	fi
	;;
0)
	echo "Employee is absent and salary is 0"
	;;
esac

