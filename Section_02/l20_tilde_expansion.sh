#!/bin/bash
# 
# Author: gi
# Created: 2023-05-04
# Last Modified: YYYY-mm-dd
# 
# Description:
# <brief explanation of what does the script do>
# 
# Usage:
# l20_tilde_expansion.sh

echo "Print working directory (PWD): $PWD"
echo "PWD can also be accessed using the tilde expansion"
echo ~+
echo "What happens is that ~+ expands to the value stored in PWD"
echo "OLDPWD=$OLDPWD"
echo "Similarly, ~- expands to the value stored in OLDPWD"
echo ~-

echo "Note that the tilde symbol ~ has no special meaning inside double quotes"
echo "If you wish to use tilde expansion inside double quotes, you can first store the value inside a variable."
dirname=~/"mydir"
echo "The path is: $dirname"
