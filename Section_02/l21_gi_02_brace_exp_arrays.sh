#!/bin/bash
# 
# Author: gi
# Created: 2023-05-05
# Last Modified: YYYY-mm-dd
# 
# Description:
# Play around with arrays and brace expansion.
# 
# Usage:
# l21_gi_01_brace_exp_arrays.sh

declare -a x=({1..7})
echo "The array x is: ${x[*]}"

for a in {a..z} ; do
	echo "Variables begining with $a:"
	eval 'echo ${!'$a'*}'
done

echo "##################################################"

b={a..h}
eval "echo 'Letter('$b')'"
