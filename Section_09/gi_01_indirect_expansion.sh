#!/bin/bash
# 
# Author: gi
# Created: 2023-07-11
# Last Modified: YYYY-mm-dd
# 
# Description:
# <brief explanation of what does the script do>
# 
# Usage:
# gi_01_indirect_expansion.sh

read a
echo "The value of variable $a is ${!a}"
declare -p a
echo "${!a}"
echo "the value of d is $d"
d=333
echo "We have changed the value of d to $d"
