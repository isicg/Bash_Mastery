#!/bin/bash
# 
# Author: gi
# Created: 2023-05-11
# Last Modified: YYYY-mm-dd
# 
# Description:
# This is my solution for the Project: Positional Parameters
# (Lecture 40 of the Bash Mastery course)
# 
# Usage:
# l39_02_calculator.sh

if [ $# -lt 3 ] ; then echo "At least 3 arguments should be supplied."; exit 1; fi

echo "all the positional parameters: ${*}"

declare -i res=0

case $1 in
	'+')
		echo "Addition"
		i=1; while [ $((i++)) -lt $# ] 
		do res=$((res+${!i})); done
		echo "The total sum is: $res";;
	'-')
		echo "Subtraction"
		res=$2
		i=2; while [ $((i++)) -lt $# ] 
		do res=$((res-${!i})); done
		echo "The total difference is: $res";;
	*)
		echo "The first argument mush be '+' or '-'"; exit 1;;
esac

echo "The official solution is: $(./l39_03_official_solution.sh "${@}")"
