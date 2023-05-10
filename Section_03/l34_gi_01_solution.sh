#!/bin/bash
# 
# Author: gi
# Created: 2023-05-09
# Last Modified: YYYY-mm-dd
# 
# Description:
# <brief explanation of what does the script do>
# 
# Usage:
# l34_gi_01_solution.sh


OLDIFS=$IFS
IFS=" ."
name="Simon.Smith"
out="output.txt"

a=($(echo $name))

# IFS=$OLDIFS

echo "Name: ${a[0]}, Surname: ${a[1]}" > ~/"quill/Bash_Mastery/Section_03/$out"

# echo $out
# echo "with quotes: $out"

declare -p a


