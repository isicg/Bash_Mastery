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
# l48_read_project_solution.sh

read -p "What is your first name?: " firstname
read -p "What is your last name?: " lastname
read -p "What is your current extension number? (must be 4 digits):" -N 4 ext
echo ""
read -N 4 -s -p "What access code would you like to use (must be 4 digits): " access
echo ""

echo "$firstname,$lastname,$ext,$access" >> extensions.csv
