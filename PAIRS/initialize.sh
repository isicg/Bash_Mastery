#!/bin/bash
# 
# Author: gi
# Created: 2023-04-17
# Last Modified: YYYY-mm-dd
# 
# Description:
# initialize function for the PAIRS game
# 
# Usage:
# initialize.sh


declare -a letters=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

initialize () {
	# initialize the board with sequential letters

	count=1; maxcount =$1

	while [ $count -le $maxcount ]
	do
		addon=$(( 13 * ($count -1 ) ))

		for slot in {1..13}
		do
			index=$(( $addon + $slot ))
			letter=$(( $index % 26 ))
			board[ $index ]=${letters[$letter]}
		done
		count=$(( $count + 1 ))
	done
}

shuffle () {
	# Shuffle board with $1 * 13 values

	totalvalues=$(( $1 * 13 ))

	index=$totalvalues

	while [ $index -gt 1 ] ; do
		
		randval=$(( ( $RANDOM % $index ) + 1 ))

		# swapping value pair

		temp=${board[$index]}
		board[$index]=${board[$randval]}
		board[$randval]=$temp

		index=$(( $index - 1 ))
	done
}



plot_array () {
	# Plot the array supplied as function argument. Should be indexed by consecutive integers starting from 0
	clear ; echo -e "\n\n\n\n\n\n"

	echo "Hi! My name is plot_array"
	declare -n a=$1
	n=${#a[@]}
	cnt=0
	while [ $cnt -lt $n ] ; do
		cnt=$(( $cnt + 1 ))
		echo -en "\t$cnt"
	done
	echo -en "\n1:"
	cnt=0
	while [ $cnt -lt $n ] ; do
		echo -en "\t[${a[$cnt]}]"
		cnt=$(( $cnt + 1 ))
	done
	echo -e "\n\n\n\n\n\n"
}

plot_board ()


# alet=(${letters[@]:0:13})
# plot_array alet
plot_array letters

declare -p alet
declare -p letters

echo -n "Press any key..." ; read
	


