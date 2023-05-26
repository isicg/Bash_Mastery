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
# l65_gi_01_while.sh

i=0; while [ $i -lt $# ]; do
	echo "$((i++)): ${!i}"
done
