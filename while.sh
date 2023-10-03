#!/bin/bash

# This is a simple shell script that uses a while loop

count=1  # Initialize a counter

echo "Starting the loop..."

while [ $count -le 5 ]; do
    echo "Loop iteration: $count"
    ((count++))  # Increment the counter
done

echo "Loop finished."
