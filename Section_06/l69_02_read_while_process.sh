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
# l69_02_read_while_process.sh

echo "****************************************"
echo "Reading the file $1"
echo "****************************************"
while read line; do
	echo "$line"
done < "$1"

echo "****************************************"
echo "Listing the $HOME directory"
echo "****************************************"
while read line; do
	echo "$line"
done < <(ls $HOME)
