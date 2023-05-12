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
# l39_01_positional_script.sh

a=1

echo "My name is $1"
echo "My home directory is $2"
echo "My favourite colour is $3"
echo "The 10th argument is ${10}"
echo "The 11th argument is $11"
echo "The $a-th argument is ${!a}"
i=0; while [ $i -lt $# ] 
do echo "$((i++)): ${!i}"; done

echo $#
echo $PWD
cd
echo $PWD
echo $0
echo $(basename $0)
