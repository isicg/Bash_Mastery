#!/bin/bash
# 
# Author: gi
# Created: 2023-05-11
# Last Modified: YYYY-mm-dd
# 
# Description:
# <brief explanation of what does the script do>
# 
# Usage:
# l43_01_special.sh

. ./functions_to_import

IFS=,

echo "$0 was called with $# arguments:"
i=0; while [ $((i++)) -lt $# ] ; do 
	echo "$i: ${!i}"; done

echo 'echo_newline $@:'
echo_newline $@
echo 'echo_newline "$@":'
echo_newline "$@"

# IFS=,
echo 'echo_newline $*:'
echo_newline $*
echo 'echo_newline "$*" (IFS=,):'
echo_newline "$*"
