#!/bin/bash

# PAIR - a simple matching game, implemented as a linear array

# Usage: PAIR rowcount
#	note: rowcount must be even and specifies how many 13-slot rows are created
# 	the default value is 2 rows of 13 values

# clean up other log files in the current folder


sdate=$(date +%Y-%m-%d_%H-%M)
logfile=$(echo "$(basename $0)" | cut -d. -f1)_$sdate.log
echo "logfile: $logfile" | tee -a $logfile
echo -e "Game started at: $sdate\n" | tee -a $logfile

logfolder="log_files"
if [ -d $logfolder ] ; then
	echo "Logfolder named '$logfolder' found" | tee -a $logfile
else
	mkdir $logfolder
	echo "Logfolder named '$logfolder' was created." | tee -a $logfile
fi

for s in "./"*.log
do
	if [ $(basename $s) != $logfile ] ; then
		mv $s $logfolder/
		echo "Moved $s to $logfolder/" | tee -a $logfile
	fi
done

sleep 3

declare -a board
# declare -a letters=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
declare -a letters=(A B C D E F G H)
# declare -a letters=(A B C D E F)
# declare -a letters=(A B C D)


N=${#letters[@]} 
Nh=$(( $N / 2 ))
echo "The number of letters is: $N"
echo "The half-number of letters is: $Nh"


rows=4 # default # of $Nh slot rows


initialize () {
	# Given number of rows, initialize the board with all blank values

	count=1; maxcount=$1

	while [ $count -le $maxcount ]
	do
		# echo "Hello! count=$count maxcount=$maxcount"
		addon=$(( $Nh * ($count -1 ) ))

		slot=1
		while [ $slot -le $Nh ]	
		do
			index=$(( $addon + $slot ))
			letter=$(( $index % $N ))
			board[$index]=-${letters[$letter]} # unguessed start with '-'
			slot=$(( $slot + 1 ))
		done
		count=$(( $count + 1 ))
	done
}

shuffle () {
	# Given the board[] array with $1 * $Nh entries, shuffle the contents

	totalvalues=$(( $1 * $Nh ))

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

showgrid () {
	# Show our grid. This means we need to display $1 x $Nh slots with labels
	# rows is grabbed from the global var 'rows'

	uncov=0
	if [ $# -ge 1 ] && [ $1 = "uncovered" ] ; then
		# echo "showgrid - uncovered"
		uncov=1
	else
		clear
	fi

	count=1
	#echo "     1    2    3    4    5    6    7    8    9   10   11   12   13"
	echo -n " "
	slot=1
	while [ $slot -le $Nh ] ; do 
		echo -n "    $slot" 
		slot=$(( $slot + 1 )) 
	done
	echo ""
	while [ $count -le $rows ]
	do
		echo -n "$count: "
		addon=$(( $Nh * ( $count - 1 ) ))

		slot=1
		while [ $slot -le $Nh ]
		do
			index=$(( $slot + $addon ))
			value=${board[$index]}
			if [ ${value:0:1} != '-' -o ! $uncov -eq 0 ] ; then # matched!
				echo -n " [${board[$index]:1:1}] "
			else
				echo -n " [-] " # still unknown
			fi
			slot=$(( $slot + 1 ))
		done
		echo ""
		count=$(( $count + 1 ))
	done
}

###################################################

if [ $# -gt 0 ] ; then
	rows=$1
fi

if [ $(( $rows % 4 )) -ne 0 ] ; then
	echo "Ooops! Please only specify a multiple of 4 as the number of rows (4, 8, 12, etc)"
	# echo "Please specify an even number of rows."
	exit 1
fi

slot1="X"; slot2="X"
unsolved=$(( $rows * $Nh ))
maxvalues=$unsolved

echo "Welcome to PAIRS. Your mission is to identify matching letters in the grid." | tee -a $logfile
echo "Good luck. If you give up at any point, just use q to quit." | tee -a $logfile
echo "" | tee -a $logfile

initialize $rows

shuffle $rows

echo -e "The uncovered table:\n" >> $logfile
showgrid uncovered >> $logfile 2>&1
echo "" >> $logfile
showgrid

cnt=0

while [ $unsolved -gt 0 ] ; do
	cnt=$(( $cnt + 1 ))
	echo ""
	echo -n "Enter a pair of values in row,col format : "
	read slot1 slot2

	if [ "$slot1" = "" -o "$slot2" = "" ] ; then
		echo "bye." | tee -a $logfile
		echo -e "\nGame ended at $(date +%Y-%m-%d_%H-%M)" >> $logfile
		exit 1
	fi

	row1=$( echo $slot1 | cut -c1 )
	col1=$( echo $slot1 | cut -d, -f2 )
	row2=$( echo $slot2 | cut -c1 )
	col2=$( echo $slot2 | cut -d, -f2 )

	index1=$(( ( $row1 - 1) * $Nh + $col1 ))
	index2=$(( ( $row2 - 1) * $Nh + $col2 ))

	if [ $index1 -lt 0 -o $index1 -gt $maxvalues -o $index2 -lt 0 -o $index2 -gt $maxvalues ] ; then
		echo "bad input, not a valid value" | tee -a $logfile
		echo -e "\nGame ended at $(date +%Y-%m-%d_%H-%M)" >> $logfile
		exit 1
	fi


	val1=${board[$index1]}
	val2=${board[$index2]}

	echo "$cnt. move: ($row1,$col1)=$val1, ($row2,$col2)=$val2 [slot1=$slot1, slot2=$slot2]" >> $logfile

	tmp1=${val1:0:1}
	tmp2=${val2:0:1}
	board[$index1]=${val1:1:1}${val1:1:1}
	board[$index2]=${val2:1:1}${val2:1:1}

	showgrid
	sleep 3

	board[$index1]=$tmp1${val1:1:1}
	board[$index2]=$tmp2${val2:1:1}

	echo -e "\n"

	if [ $val1 = $val2 ] ; then
		echo "You've got a match. Nicely done!"
		board[$index1]=${val1:1:1}${val1:1:1}
		board[$index2]=${val2:1:1}${val2:1:1}
		unsolved=$(( $unsolved - 2 ))
	else
		# echo "No match, but $row1,$col1 = ${val1:1:1} and $row2,$col2=${val2:1:1}."
		echo ""
	fi

	echo ""
	showgrid

done

echo -e "\nCongratulations! You uncovered all the pairs in $cnt attempts." | tee -a $logfile
echo "Game over."

echo "Game ended at $(date +%Y-%m-%d_%H-%M)" >> $logfile

##############################################################
# initialize 2
# showgrid 
