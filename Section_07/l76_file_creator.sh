#!/bin/bash
# 
# Author: gi
# Created: 2023-06-27
# Last Modified: YYYY-mm-dd
# 
# Description:
# <brief explanation of what does the script do>
# 
# Usage:
# l76_file_creator.sh

readarray -t files < files.txt

for file in "${files[@]}"; do
	if [ -f "$file" ]; then
		echo "$file already exists"
	else
		touch "$file"
		echo "$file was created"
	fi
done
