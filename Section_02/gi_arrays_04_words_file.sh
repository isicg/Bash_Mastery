#!/bin/bash
# 
# Author: gi
# Created: 2023-04-16
# Last Modified: YYYY-mm-dd
# 
# Description:
# Load all the words from an ascii file into an array and check if they contain any of the given character list.
# 
# Usage:
# gi_arrays_04_words_file.sh

. ./functions_to_import

text=$(cat shape.txt)

declare -a a

cnt=0
RED='\e[1;31m'
NC='\e[0m'
char="'"

for i in $text; do
	a[$cnt]=$i
	if var_chars ${a[$cnt]} "," "'" ; then
		echo -e "${RED}a[$cnt]=$i${NC}"
		# echo "HERE IT IS!!!"
	else
		echo "a[$cnt]=$i"
	fi

	cnt=$(( $cnt + 1 ))
done

echo -e "${RED}The character${NC} is: $char"


