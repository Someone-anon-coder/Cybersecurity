#!/bin/bash

# Sum of all numbers from 1 to 50
sum=0
counter=1

while [ $counter -le 50 ]; do
    sum=$(( $sum + $counter ))
    (( counter++ ))
done

echo "Sum of all numbers from 1 to 50 is $sum"