#!/bin/bash

echo "Enter a number: "
read number

if [ $number -gt 0 ]; then
    echo "The number is positive"
elif [ $number -lt 0 ]; then
    echo "The number is negative"
else
    echo "The number is zero"
fi


echo "Enter a number: "
read number

if [ $number % 2 -eq 0 ]; then
    echo "The number is even"
else
    echo "The number is odd"
fi