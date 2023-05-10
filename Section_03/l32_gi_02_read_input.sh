#!/bin/bash
# 
# Author: gi
# Created: 2023-05-09
# Last Modified: YYYY-mm-dd
# 
# Description:
# <brief explanation of what does the script do>
# 
# Usage:
# l32_gi_02_read_input.sh

s='  '

while [ ! -z "$s" ] ; do
	read s
	echo "Input string: $s"
done

echo "Your input was an empty string."
echo "Thank you for using $0"
