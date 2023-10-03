#!/bin/bash

# This is a simple shell script to print a right-angled triangle pattern

rows=5  # Number of rows in the triangle

echo "Printing the pattern:"

for (( i=1; i<=rows; i++ )); do
    for (( j=1; j<=i; j++ )); do
        echo -n "* "
    done
    echo
done
