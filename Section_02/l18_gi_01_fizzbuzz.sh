#!/bin/bash
# 
# Author: gi
# Created: 2023-05-03
# Last Modified: YYYY-mm-dd
# 
# Description:
# Solve the FizzBuzz problem:
# Print integers one-to-N, but print Fizz if an integer is divisible
# by three, Buzz if an integer is divisible by five, and FizzBuzz if 
# an integer is divisible by both three and five.
# 
# Usage:
# l18_gi_01_fizzbuzz.sh N
# N is the largest number being printed 

if [ ! $# -gt 0 ] ; then
	echo "Please provide one positinal argument: N"
	echo "Bye."
	exit 1
fi

N=$1
cnt=0

while [ $cnt -lt $N ] ; do
	cnt=$(( cnt + 1 ))
	echo -n "$cnt: "
	if [ $(( $cnt % 3 )) -eq 0 ] ; then
		echo -n "Fizz"
	fi
	if [ $(( $cnt % 5 )) -eq 0 ] ; then
		echo -n "Buzz"
	fi
	echo -ne "\n"
done

exit 0



