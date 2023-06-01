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
# l74_indexed_arrays.sh

# Creating an indexed array
myarray=(a b c d e f g h)

# Writing out the elements of the array
echo "Array elements: ${myarray[@]}"

# Substring expansion
i=2; j=3
echo "Starting from index $i, the elements are: ${myarray[@]:$i}"
echo "The first $j elements starting from index $i are: ${myarray[@]:$i:$j}"

# Adding an element to array
elem=I
myarray+=($elem)
echo "$elem has been added to the array: ${myarray[@]}"

# Changing the value of an element
myarray[$i]=$elem
echo "The $i-th element has been changed to $elem."
echo "Array: ${myarray[@]}"

# Removing an element from array
unset myarray[$i]
echo "The $i-th element has been been unset"
echo "Array: ${myarray[@]}"
echo "Note that the indices of remaining elements remained unaffected"
echo "Indices: ${!myarray[@]}"
echo "Therefore, be careful about array indices!"


