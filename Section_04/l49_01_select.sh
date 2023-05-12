#!/bin/bash
# 
# Author: gi
# Created: 2023-05-12
# Last Modified: YYYY-mm-dd
# 
# Description:
# <brief explanation of what does the script do>
# 
# Usage:
# l49_01_select.sh
# PS3="What is the day of the week?: "
select day in mon tue wed thu fri sat sun;
do
	echo "The day of the week is $day"
	break
done
