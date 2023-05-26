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
# l70_read-while_loops_project_solution.sh

while read line; do
	mkdir "testing_ground/$line"
done < "$1"
