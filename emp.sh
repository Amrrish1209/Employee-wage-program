#!/bin/bash

echo "Checking Employee is present or absent"

res=$(( RANDOM % 2 ))

if [ $res -eq 1 ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi
