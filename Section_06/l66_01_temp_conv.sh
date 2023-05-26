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
# l66_01_temp_conv.sh

while getopts "f:c:" opt; do
	case "$opt" in
		c) result=$(echo "scale=2; ($OPTARG * (9 / 5)) + 32" | bc)
			;;
		f) result=$(echo "scale=2; ($OPTARG - 32) * (5 / 9)" | bc)
			;;
		\?);;
	esac
done

echo "$result"
