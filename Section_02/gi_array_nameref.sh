#!/bin/bash
# 
# Author: gi
# Created: 2023-04-16
# Last Modified: YYYY-mm-dd
# 
# Description:
# Play around with arrays supplied as function arguments. Compare the cases where the (local) function variable a to which the array is assigned (a=$1) has or not the nameref attribute
# 
# Usage:
# gi_array_nameref.sh

no_nameref () {
	# This function takes the supplied array, doubles its elements and writes out the result.
	# a=$1
	declare -n a=$1
	n=${#a[@]} # array length
	ind=${!a[@]} # array of the indices of a
	echo "The array length is: $n"
	cnt=0
	echo "The array elements[indices] are:"
	while [ $cnt -lt $n ] ; do
		echo "$cnt: ${a[${ind[$cnt]}]}"
		cnt=$(( $cnt + 1 ))
	done
}

x=([0]=a [1]=b [3]=dj)

no_nameref x




