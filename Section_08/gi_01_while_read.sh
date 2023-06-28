#!/bin/bash
# 
# Author: gi
# Created: 2023-06-28
# Last Modified: YYYY-mm-dd
# 
# Description:
# <brief explanation of what does the script do>
# 
# Usage:
# gi_01_while_read.sh

while read line; do
	#echo ${line@u}
	echo ${line^}
done
