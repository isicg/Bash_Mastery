#!/bin/bash
# 
# Author: gi
# Created: 2023-07-03
# Last Modified: YYYY-mm-dd
# 
# Description:
# <brief explanation of what does the script do>
# 
# Usage:
# gi_01_getopts_play.sh

# This is what we need to pass to the python script
# p - pages - if used, the argument is required, default = 1
# l - location - if used, the argument is required, default='beograd-zemun'
# d - descriptor - if used, the argument is required, default='nodesc'
# n - nonagency - option, if not selected default=false
# r - rent - option, if not selected default=false

sel_opts=''

while getopts "p:l:d:nr" opt; do
	echo "Considering: opt=$opt"
	if [[ -v OPTARG ]]; then
		echo "OPTARG=$OPTARG"
	else
		echo "OPTARG is not set."
	fi
	case "$opt" in
		p)
			echo "Pages"
			sel_opts=${sel_opts}" -p "$OPTARG
			;;
		l)
			echo "Location"
			sel_opts=${sel_opts}" -l '"$OPTARG"'"
			;;
		d)
			echo "Descriptor"
			sel_opts=${sel_opts}" -d '"$OPTARG"'"
			;;
		n)
			echo "Nonagency"
			sel_opts=${sel_opts}" -n"
			;;
		r)
			echo "Rent"
			sel_opts=${sel_opts}" -r"
			;;
		\?)
			echo "Unknown parameter"
			;;
	esac
done
echo "****************************************"
echo "*             End of getopts           *"
echo "****************************************"

echo "selected options:$sel_opts"

