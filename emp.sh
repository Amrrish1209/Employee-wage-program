#!/bin/bash

echo "Checking Employee is present or absent if present then we want to calculate the Daily wage"

res=$(( RANDOM % 2 ))

if [ $res -eq 1 ]
then
	WagePerHour=20
	FullDayHour=8
	EmpWageSalary=$(( WagePerHour * FullDayHour ))
	echo "Daily Employee Wage is:" $EmpWageSalary
else
	echo "Employee is absent"
fi
