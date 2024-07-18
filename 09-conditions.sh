#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 10 ]

then 
echo "Given number $NUMBER is greater than 10"
else
echo "Given number $NUMBER is lesser than 10"
fi 

if [ $NUMBER -eq 10 ]

then 
echo "Given number $NUMBER is equal to 10"
else 
echo "Given number $NUMBER is not equal to 10"

fi