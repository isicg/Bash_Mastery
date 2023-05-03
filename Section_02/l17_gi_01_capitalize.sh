#!/bin/bash
# 
# Author: gi
# Created: 2023-05-03
# Last Modified: YYYY-mm-dd
# 
# Description:
# <brief explanation of what does the script do>
# 
# Usage:
# l17_gi_01_capitalize.sh name_to_capitalize

echo "Hello!"

if [ ! $# -gt 0 ] ; then
	echo "No input arguments have been provided."
	echo "Bye."

	exit 1
else
	echo "The first input argument was: $1"
	echo "Capitalized: ${1^}"
fi

exit 0
