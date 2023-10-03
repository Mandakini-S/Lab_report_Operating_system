#!/bin/bash
echo "Enter 1st number"
read firstnum
echo  "Enter 2nd number"
read secondnum
((sum=$firstnum+$secondnum))
echo "Sum of $firstnum and $secondnum is $sum."
