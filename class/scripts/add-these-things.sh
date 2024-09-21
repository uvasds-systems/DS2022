#!/bin/bash

# echo "$0 - is the 0 argument"
# echo "$1 - is the 1 argument"
# echo "$2 - is the 2 argument"

clear

echo "-----------------------------"
echo "Let me add up $1 and $2 for you"

SUM=$(( $1 + $2 ))

sleep 3

echo "The sum is $SUM"
echo "-----------------------------"

