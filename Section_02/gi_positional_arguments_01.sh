#!/bin/bash
# 
# Author: gi
# Created: 2023-04-23
# Last Modified: YYYY-mm-dd
# 
# Description:
# Test the usage of positional arguments
# 
# Usage:
# gi_positional_arguments_01.sh $1 $2 etc

echo "The number of positional arguments is: $#"

if [ $# -lt 1 ] || [ $# -gt 1 ] ; then
	echo "This script needs exactly 1 positional argument."
	exit 1
fi

p=$1

case ${p^^} in
	ON)
		echo "You have selected the 'on' option"
		;;
	OFF)
		echo "You have selected the 'off' option"
		;;
	*)
		echo "The $1 option is not recognized. Please select 'on' or 'off'"
		;;
esac

