#!/bin/bash
# 
# Author: gi
# Created: 2023-05-09
# Last Modified: YYYY-mm-dd
# 
# Description:
# <brief explanation of what does the script do>
# 
# Usage:
# l32_gi_01_count_input_args.sh

echo "${#@} input arguments have been supplied"
echo "${@}"

a=("${@}")
declare -p a
