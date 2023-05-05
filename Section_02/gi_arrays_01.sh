#!/bin/bash
# 
# Author: gi
# Created: 2023-04-15
# Last Modified: YYYY-mm-dd
# 
# Description:
# Demonstrate basic array usage in bash
# 
# Usage:
# gi_arrays_01.sh

make_array_of_squares () {
	# this function assumes that the supplied argument is an array and sets its first n elements (indices 0 through n-1) to values equal to index squared; n is supplied as the second argument
	declare -n a=$1 # this is the array supplied as argument
	n=$2; cnt=0
	while [ $cnt -lt $n ] ; do
		a[$cnt]=$(( $cnt * $cnt )) ; cnt=$(( $cnt + 1 ))
	done
	return 0
}

print_array_elements () {
	# this function prints the elements of the array supplied as the argument
	declare -n a=$1
	n=${#a[@]} ; cnt=0
	echo "This array has $n elements:"
	while [ $cnt -lt $n ] ; do 
		echo "a[$cnt]=${a[$cnt]}" ; cnt=$(( $cnt + 1 ))
	done ; return 0
}

echo "This is an example with an array which was previously declared"
declare -a niz
make_array_of_squares niz 11
echo "Printing niz..."
print_array_elements niz

echo "This is an example with an array not declared previously"
make_array_of_squares niz2 9
echo "Printing niz2..."
print_array_elements niz2

echo "Conclusion: in this case, there is no need to declare the array in advance."

