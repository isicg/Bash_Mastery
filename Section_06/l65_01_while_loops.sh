#!/bin/bash
# 
# Author: gi
# Created: 2023-05-25
# Last Modified: YYYY-mm-dd
# 
# Description:
# <brief explanation of what does the script do>
# 
# Usage:
# l65_01_while_loops.sh

read -p "Enter your number: " num

while [ $num -gt 10 ]; do
	echo "$(( num-- ))"
done
