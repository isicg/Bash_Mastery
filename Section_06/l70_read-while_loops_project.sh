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
# l70_read-while_loops_project.sh

testdir="test_dir"

if [ ! -d "$testdir" ]; then
	echo "$testdir does not exist."
	mkdir "$testdir"
	echo "$testdir has been created."
else
	echo "$testdir found"
fi

while read line; do
	echo "$line"
	newdir="$testdir/$line"
	echo "$newdir will be created"
	mkdir "$newdir"
done < <(cat "$1")
