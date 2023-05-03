#!/bin/bash

unsolved=1
while [ $unsolved -gt 0 ] ; do
	echo ""
	echo -n "Enter a pair of values in row,col format : "
	read slot1 slot2

	if [ "$slot1" = "" -o "$slot2" = "" ] ; then
		echo "Incorrect format. Bye."
		exit 1
	fi

	row1=$( echo $slot1 | cut -c1 )
	col1=$( echo $slot1 | cut -d, -f2 )
	row2=$( echo $slot2 | cut -c1 )
	col2=$( echo $slot2 | cut -d, -f2 )

	index1=$(( ( $row1 - 1) * 13 + $col1 ))
	index2=$(( ( $row2 - 1) * 13 + $col2 ))

	echo "(row1, col1)=($row1, $col1)"
	echo "(row2, col2)=($row2, $col2)"
	echo ""
done
