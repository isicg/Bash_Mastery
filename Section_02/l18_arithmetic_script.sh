#!/bin/bash
# 
# Author: gi
# Created: 2023-05-03
# Last Modified: YYYY-mm-dd
# 
# Description:
# <brief explanation of what does the script do>
# 
# Usage:
# l18_arithmetic_script.sh

x=4
y=2

echo "This works: $(( $x + $y ))"
echo "But so do the commands below"
echo "Addition: $(( x + y ))"
echo "Subtraction: $(( x - y ))"
echo "Division: $(( x / y ))"
echo "Multiplication: $(( x * y ))"
echo -e "Multiplication has precedence over addition:\n$(( 2 + 3 * 4 ))"
echo -e "Parentheses are used to enforce precedence:\n$(( (2 + 3) * 4 ))"
echo "Exponentiation: $(( 4 ** 2 ))"
echo "Modulo division: $(( 17 % 3 ))"
