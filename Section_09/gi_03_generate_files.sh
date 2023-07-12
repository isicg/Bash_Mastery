#!/bin/bash
# 
# Author: gi
# Created: 2023-07-11
# Last Modified: YYYY-mm-dd
# 
# Description:
# <brief explanation of what does the script do>
# 
# Usage:
# gi_03_generate_files.sh

path0="$HOME/roll/Bash_Mastery/cruft_folder2/"
# path0="$HOME/roll/Bash_Mastery/cruft_folder2/subfolder1/"

if [ ! -d $path0 ]; then
	echo "$path0 not found."
	mkdir -p $path0
	echo "$path0 has been created"
else
	echo "$path0 has been found."
fi

for i in {01..15}; do
	touch -t "202306${i}0001" "${path0}dataf$i.txt"
done
