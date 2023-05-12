#!/bin/bash
# 
# Author: gi
# Created: 2023-05-12
# Last Modified: YYYY-mm-dd
# 
# Description:
# <brief explanation of what does the script do>
# 
# Usage:
# l46_01_read.sh

read -s -t 5 -p "Input your first name: " name
read -s -t 5 -p "Input your age: " age
read -s -t 5 -p "Input the town you are from: " town
echo "My name is $name"
echo "I am $age"
echo "I am from $town"
