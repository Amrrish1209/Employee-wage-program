#!/bin/bash

echo "Checking Employee is present or absent if present then we want to calculate the Daily wage"

res=$(( RANDOM % 2 ))

if [ $res -eq 1 ]
then
	echo "Enter the Employee working hour as 4hour or 8hours"
	fulldayhour=$(( RANDOM % 2 == 0 ? 4 : 8 ))
	wageperhour=20
	if [ $fulldayhour -eq 8 ]
	then
		employeesalary=$(( fulldayhour * wageperhour ))
		echo "Daily Employee wage is:" $employeesalary
	else
		employeeparttimesalary=$(( fulldayhour * wageperhour ))
		echo "Part time Employee wage is:" $employeeparttimesalary
	fi
else
	echo "Employee is absent"
fi
