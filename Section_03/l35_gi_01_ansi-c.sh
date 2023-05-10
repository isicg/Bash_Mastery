#!/bin/bash
# 
# Author: gi
# Created: 2023-05-10
# Last Modified: YYYY-mm-dd
# 
# Description:
# <brief explanation of what does the script do>
# 
# Usage:
# l35_gi_01_ansi-c.sh

for i in {1..7} ; do
	echo "$i" $'\a'
	sleep 0.5
done
