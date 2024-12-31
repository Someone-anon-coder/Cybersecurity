#!/bin/bash

# Function to greet the user
greet() {
    echo "Hello, $1!"
}

# Access the function
greet "John"

# Function to add given numbers
add() {
    for i in $@; do
        sum=$(($sum + $i))
    done

    echo "Sum: $sum"
}

# Access the function
add 1 2 3 4 5