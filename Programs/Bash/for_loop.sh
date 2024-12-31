#!/bin/bash

# Print numbers from 1 to 10
for i in {1..10}; do
    echo $i
done

# Print numbers from 1 to 50 with step 5
for i in {1..50..5}; do
    echo $i
done

# Print numbers from 10 to 1 with step -1
for i in {10..1..-1}; do
    echo $i
done