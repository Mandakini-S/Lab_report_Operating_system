#!/bin/bash

# This is a shell script to represent days of the week using switch-case

echo "Enter a day number (1-7):"
read day

case $day in
    1)
        echo "Sunday"
        ;;
    2)
        echo "Monday"
        ;;
    3)
        echo "Tuesday"
        ;;
    4)
        echo "Wednesday"
        ;;
    5)
        echo "Thursday"
        ;;
    6)
        echo "Friday"
        ;;
    7)
        echo "Saturday"
        ;;
    *)
        echo "Invalid input! Please enter a number between 1 and 7."
        ;;
esac
