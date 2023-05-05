#!/bin/bash
# 
# Author: gi
# Created: 2023-04-15
# Last Modified: YYYY-mm-dd
# 
# Description:
# <brief explanation of what does the script do>
# 
# Usage:
# gi_arrays_02.sh

. ./functions_to_import

echo -n "Number of elements? "
read n

make_array_of_squares niz $n

print_array_elements niz

echo '************************'
echo ' MANIPULATING THE ARRAY '
echo '************************'
echo "The array has ${#niz[*]} elements"
echo "Listing through the elements:"
cnt=0
for i in "${niz[@]}" # the @ subscript is essential (* doesn't work)
do
	echo "element $cnt: $i"
	cnt=$(( $cnt + 1 ))
done
echo "The indices of the array are: ${!niz[*]}"
echo "Listing through the indices:"
for i in "${!niz[@]}"
do
	echo "index=$i, value=${niz[$i]}"
done	
