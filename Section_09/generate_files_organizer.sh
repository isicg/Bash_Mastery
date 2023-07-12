#!/bin/bash
# 
# Author: gi
# Created: 2023-07-12
# Last Modified: YYYY-mm-dd
# 
# Description:
# Generate dummy files for demonstrating the operation of
# folder_organiser.sh
# 
# Usage:
# generate_files_organizer.sh num_files

if [ $# -ne 1 ]; then
	echo "usage: generate_files_organizer.sh num_files"
	exit 1
fi

path0="$HOME/roll/Bash_Mastery/files_for_folder_organiser"
if [ ! -d "$path0" ]; then
	mkdir -p "$path0"
fi

find "$path0/" -mindepth 1 | xargs rm -r # 'reset' the contents by removing existing files

extensions=("jpg" "jpeg" "png" "doc" "docx" "txt" "pdf")
extensions+=("xls" "xlsx" "csv" "sh" "zip" "tar" "tar.gz" "tar.bz2")
extensions+=("ppt" "pptx" "mp3" "mp4" "aaa" "bbb" "ccc")

num_files=$1
max_rand=${#extensions[@]}
cnt=0
while [ $cnt -lt $num_files ]; do
	i=$(( $RANDOM % $max_rand ))
	day=$(( 1 + $RANDOM % 30 ))
	if [ $day -lt 10 ]; then
		day=0$day
	fi
	fname="$path0/file$cnt.${extensions[$i]}"
	touch -t 202306${day}0100 $fname
	echo "$(( ++cnt )). created $fname"
	sleep 0.02
done
