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
# l35_gi_03_ls.sh

ls *.txt

foldername="dummy"

if [ ! -d $foldername ] ; then
	mkdir $foldername
fi

for i in {01..55} ; do
	touch "$foldername/$i.txt"
done
