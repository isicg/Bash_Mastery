#!/bin/bash
# 
# Author: gi
# Created: 2023-07-12
# Last Modified: YYYY-mm-dd
# 
# Description:
# <brief explanation of what does the script do>
# 
# Usage:
# folder_organiser.sh

path0="$HOME/roll/Bash_Mastery/files_for_folder_organiser"

images=("jpg" "jpeg" "png")
documents=("doc" "docx" "txt" "pdf")
spreadsheets=("xls" "xlsx" "csv")
scripts=("sh")
archives=("zip" "tar" "tar.gz" "tar.bz2")
presentations=("ppt" "pptx")
audio=("mp3")
video=("mp4")

types=("images" "documents" "spreadsheets" "scripts" "archives" "presentations" "audio" "video")

for t in "${types[@]}"; do
	echo "----------------------------------------------"
	echo " ${t^^} "
	declare -n a=$t
	echo "   file extensions: ${a[@]}"
	echo "----------------------------------------------"

done
