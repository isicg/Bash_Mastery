#!/bin/bash
# 
# Author: gi
# Created: 2023-07-13
# Last Modified: YYYY-mm-dd
# 
# Description:
# <brief explanation of what does the script do>
# 
# Usage:
# at_script.sh

if [ ! -d at_dir ]; then
	mkdir at_dir
fi
touch at_dir/file{1..100}.txt
