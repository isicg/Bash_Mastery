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
# l77_for_loops_project.sh

foldername="url_headers"

if [ ! -d $foldername ]; then
	echo "$foldername does not exist"
	mkdir "$foldername"
	echo "$foldername was created"
fi

# readarray -t x < <(cat urls.txt)
readarray -t x < urls.txt

for u in "${x[@]}"; do
	echo "Processing $u"
	curl --head "$u" >> "$foldername/$(echo "$u" | cut -d. -f2)".txt
done

