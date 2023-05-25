#!/bin/bash
# 
# Author: gi
# Created: 2023-05-25
# Last Modified: YYYY-mm-dd
# 
# Description:
# <brief explanation of what does the script do>
# 
# Usage:
# l60_01_case_statement.sh

read -p "Please enter a number: " number

case "$number" in
	[0-9]) echo "you have entered a single digit number";;
	[0-9][0-9]) echo "you have entered a two digit number";;
	[0-9][0-9][0-9]) echo "you have entered a three digit number";;
	*) echo "you have entered a number that is more than three digits";;
esac


