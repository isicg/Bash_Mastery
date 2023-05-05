#!/bin/bash
# 
# Author: gi
# Created: 2023-04-16
# Last Modified: YYYY-mm-dd
# 
# Description:
# <brief explanation of what does the script do>
# 
# Usage:
# gi_fun_args.sh

OLDIFS=$IFS
IFS=$(echo -en "-")
how_many_args () {
	echo "The number of supplied arguments is: $#"
}

how_many_args 1-3-3
a=$(echo "1-3-3")

echo "The length of a is: ${#a[@]}"

for i in $a ; do
	echo "$i"
done

b=$a

echo "The length of b is: ${#b[@]}"

IFS=$OLDIFS
