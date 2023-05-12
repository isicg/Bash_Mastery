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
# l47_read_command_project.sh

read -p "What is your first name? " name
read -p "What is your surname? " surname
read -p "Extension number (exactly 4 digits)? " -N 4 next
echo ""
read -p "Secret access code (exactly 4 digits)? " -N 4 -s nac
echo ""

echo "Name: $name"
echo "Surname: $surname"
echo "Extension number: $next"
echo "Access code: $nac"

echo "$name,$surname,$next,$nac" >> extensions.csv
