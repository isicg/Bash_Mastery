#!/bin/bash
# 
# Author: gi
# Created: 2023-05-09
# Last Modified: YYYY-mm-dd
# 
# Description:
# This script should count the number of lines in the input stream.
# 
# Usage:
# ./l32_gi_03_wc.sh [< file.txt]
# In case without redirection, the script asks for repeated input, until an empty line is supplied. In case stdin is replaced by a file, the script counts the number of lines in the file.

echo "Hello!"
echo "This script counts the number of lines in the input stream."
echo "The stream is terminated with an empty input (defined as"
echo "an input containing only whitespace or no characters at all)."

a='a'
cnt=0

while [ ! -z "$a" ] ; do
	read a
	cnt=$(( cnt + 1 ))
done

cnt=$(( cnt - 1 ))
echo "Number of lines: $cnt"
