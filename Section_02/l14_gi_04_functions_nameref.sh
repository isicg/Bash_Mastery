#!/bin/bash
# 
# Author: gi
# Created: 2023-04-15
# Last Modified: YYYY-mm-dd
# 
# Description:
# Demonstrate how variables with the 'nameref' attribute can be used in conjuction with functions
# 
# Usage:
# l14_gi_04_functions_nameref.sh

fourtify() {
	declare -n a=$1
	a=$(( 4 * a ))
}

fortify_noref() {
	$1=$(( 4 * $1 ))
}

x=1
echo "before: x=$x"
fourtify x
echo "after: x=$x"

echo "before: x=$x"
fourtify x
echo "after: x=$x"

