#!/bin/bash
# 
# Author: gi
# Created: 2023-04-16
# Last Modified: YYYY-mm-dd
# 
# Description:
# For a given word, check if it contains the given character.
# 
# Usage:
# gi_test_char.sh

. ./functions_to_import

echo -n "Name: "
read name

echo -n "Character: "
read c

case $name in
	*"$c"*)
		echo "$name contains $c"
		;;
	*)
		echo "$name doesn't contain $c"
		;;
esac

if char_in_var $c $name ; then
	echo "YES, we have found $c in $name"
else
	echo "NO, we haven't found $c in $name"
fi
