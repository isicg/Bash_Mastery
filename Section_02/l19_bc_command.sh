#!/bin/bash
# 
# Author: gi
# Created: 2023-05-03
# Last Modified: YYYY-mm-dd
# 
# Description:
# Demonstrate the usage of bc
#
# Usage:
# l19_bc_command.sh

echo -n "x? " ; read x
echo -n "y$ " ; read y
echo -n "number of decimal places? " ; read n
echo "x=$x, y=$y, scale=$n"
z=$(echo "scale=$n; $x+$y" | bc )
echo "$x+$y=$z"

