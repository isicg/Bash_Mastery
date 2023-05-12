#!/bin/bash
# 
# Author: gi
# Created: 2023-05-12
# Last Modified: YYYY-mm-dd
# 
# Description:
# Create a function which behaves as echo, except that each argument
# is printed in a new line.
# 
# Usage:
# l43_gi_01_echo_newline.sh

. ./functions_to_import

# echo_newline() {
# 	i=0; while [ $((i++)) -lt $# ] ; do echo "${!i}"; done
# }

echo_newline 1 2 3 4 54 
