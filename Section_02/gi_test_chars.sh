#!/bin/bash
# 
# Author: gi
# Created: 2023-04-16
# Last Modified: YYYY-mm-dd
# 
# Description:
# For a given word test if it contains any of the listed characters
# 
# Usage:
# gi_test_chars.sh

var_chars () {
	# return 0 if any of the listed characters ($2, $3, etc.) are contained in a given variable ($1)
	nc=$(( $#-1 )) # number of characters supplied in function call
	echo "The number of characters is: $nc"
	local word=$1
	cnt=0
	while [ $cnt -lt $nc ] ; do
		shift
		case $word in 
			*"$1"*)
				echo "$1 is contained in $word"
				return 0
				;;
			*)
				echo "$1 is NOT contained in $word"
				;;
		esac
		echo "Parameter $cnt: $1"
		cnt=$(( $cnt + 1 ))
	done
	return 1
}

word=08884asfd
if var_chars $word 1 2 3 4 5 ; then
	echo "Some of the supplied characters are contained in $word"
else
	echo "NONE of the supplied characters are contained in $word"
fi


