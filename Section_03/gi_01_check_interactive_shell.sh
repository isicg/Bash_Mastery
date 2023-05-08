#!/bin/bash
# 
# Author: gi
# Created: 2023-05-07
# Last Modified: YYYY-mm-dd
# 
# Description:
# <brief explanation of what does the script do>
# 
# Usage:
# gi_01_check_interactive_shell.sh

echo "PS1: $PS1"
if declare -p PS1 > /dev/null 2>&1 ; then
	echo "PS1 is set, therefore we are in an interactive shell"
else
	echo "PS1 is not set."
fi

echo "\$-: $-"
if [ $- == *i* ] ; then
	echo "The - parameter includes i, therefore we are in an interactive shell"
else
	echo "The - parameter does not include i, therefore this is not an interactive shell."
fi
