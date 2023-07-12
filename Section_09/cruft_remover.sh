#!/bin/bash
# 
# Author: gi
# Created: 2023-07-10
# Last Modified: 2023-07-12
# 
# Description:
# From a specified folder, remove all files (asking for individual confirmation)
# older than a specified number of days.
# 
# Usage:
# cruft_remover.sh


path_default="$HOME/roll/Bash_Mastery/cruft_folder2/"
echo "Warning: this is Cruft remover! Please use carefully."
read -p "Which foldername would you like to remove cruft from? (press return for default) " 
if [ -z $REPLY ]; then
	echo "Default folder selected"
	path0="$path_default"
else
	path0=$REPLY
	# path0="$path_default"
fi
read -p "How many days should the files have been unmodified? " n

echo "You entered: $path0"

if [ ! -d "$path0" ]; then
	echo "Foldername $path0 not found!"
	exit 1
else
	readarray -t fnames < <(find $path0 -maxdepth 1 -type f -mtime +$n | sort)
	echo "The following files match the criteria:"
	cnt=0
	for f in "${fnames[@]}"; do
		echo "$(( ++cnt )): $f"
	done
	for f in "${fnames[@]}"; do
		rm -i "$f"
	done
fi
