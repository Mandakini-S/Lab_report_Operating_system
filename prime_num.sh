#!/bin/bash

# This is a shell script to print prime numbers between 20 and 50 using a for loop

echo "Prime numbers between 20 and 50:"

for (( num=20; num<=50; num++ )); do
    is_prime=true

    for (( divisor=2; divisor<=num/2; divisor++ )); do
        if (( num % divisor == 0 )); then
            is_prime=false
            break
        fi
    done

    if $is_prime; then
        echo $num
    fi
done
