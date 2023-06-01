#!/bin/bash
# 
# Author: gi
# Created: 2023-06-01
# Last Modified: YYYY-mm-dd
# 
# Description:
# <brief explanation of what does the script do>
# 
# Usage:
# l75_gi_readarray.sh

file=test.txt
cnt=0

foldername="array_test" # Be careful what you put here as all the elements will be erased

# Create a file with multiple lines
while [ $cnt -lt 7 ]; do
	echo "cnt=$(( cnt++ ))"
done > $file

# Load entire line (including newline symbol) into array elements
readarray myarray < $file
declare -p myarray

# Drop the newline character
readarray -t myarray1 < $file
declare -p myarray1

if [ -d $foldername ]; then
	echo "$foldername exists. all contents will be erased."
	rm -r "$foldername/"*
	echo "contents of $foldername were deleted."
else
	echo "$foldername does not exist."
	mkdir "$foldername"
	echo "$foldername created."
fi

touch "$foldername/"file{001..100}.txt

readarray files < <(ls $PWD/$foldername/*)

for i in {001..100}; do
	no0=${i##"${i%%[!0]*}"}
	echo "i=$i, without 0s: $no0"
	echo "${files[$(( no0-1 ))]}" >> $foldername/file${i}.txt
done
