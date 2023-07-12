#!/bin/bash
# 
# Author: gi
# Created: 2023-07-12
# Last Modified: YYYY-mm-dd
# 
# Description:
# Look at all the files in specified folder (path0) and move them
# to appropriate subfolder (created if neccessary) according to
# file extensions.
# 
# Usage:
# folder_organiser.sh

move_to_folder () {
	# $1 is the name of the file
	# $2 is the name of the folder
	# $3 is the path prefix

	if [ ! -d "$3/$2" ]; then
		mkdir -p "$3/$2"
		echo "Created folder $2"
	fi

	echo "$1 -> $2"
	mv "$3/$1" "$3/$2"
}

path_default="$HOME/roll/Bash_Mastery/files_for_folder_organiser"
read -p "Folder to be organized: (press enter for default) " 

if [ -z "$REPLY" ]; then
	echo "Default folder selected."
	path0="$path_default"
else
	path0="$REPLY"
fi

readarray -t fnames < <(ls $path0)

for f in "${fnames[@]}"; do
	# echo "$f"
	case "$f" in
		*.jpg | *.jpeg | *.png)
			move_to_folder "$f" "images" "$path0" ;;
		*.doc | *.docx | *.txt | *.pdf)
			move_to_folder "$f" "documents" "$path0" ;;
		*.xls | *.xlsx | *.csv)
			move_to_folder "$f" "spreadsheets" "$path0" ;;
		*.sh)
			move_to_folder "$f" "scripts" "$path0" ;;
		*.zip | *.tar | *.tar.gz | *.tar.bz2)
			move_to_folder "$f" "archives" "$path0" ;;
		*.ppt | *.pptx)
			move_to_folder "$f" "presentations" "$path0" ;;
		*.mp3)
			move_to_folder "$f" "audio" "$path0" ;;
		*.mp4) 
			move_to_folder "$f" "video" "$path0" ;;
		*)
			echo "$f -> misc (remains unmoved)" ;;
	esac

done
