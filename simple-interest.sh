#!/bin/bash

# Check if all arguments are provided
if [ $# -ne 3 ]; then
    echo "Usage: $0 <principal> <rate> <time>"
    exit 1
fi

# Assign arguments to variables
principal=$1
rate=$2
time=$3

# Calculate simple interest
interest=$(echo "$principal * $rate * $time / 100" | bc -l)

echo "The simple interest is: $interest"
