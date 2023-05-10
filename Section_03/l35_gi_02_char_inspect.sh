#!/bin/bash
# 
# Author: gi
# Created: 2023-05-10
# Last Modified: YYYY-mm-dd
# 
# Description:
# <brief explanation of what does the script do>
# 
# Usage:
# l35_gi_02_char_inspect.sh

. ./functions_to_import

# string_an() {
# 	if [ $# -lt 1 ] ; then
# 		echo "error using string_an(): expected 1 argument"
# 		exit 1
# 	fi
# 	s=$1
# 	echo "<$s> has ${#s} characters:"
# 	cnt=0
# 	while [ $cnt -lt ${#s} ] ; do
# 		# cnt=$(( cnt + 1 ))
# 		echo "$cnt: <${s:$((cnt++)):1}>"
# 	done
# }

echo "Type in a string: "
read s
string_an "$s"

