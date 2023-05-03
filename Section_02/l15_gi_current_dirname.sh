#!/bin/bash
# 
# Author: gi
# Created: 2023-04-24
# Last Modified: YYYY-mm-dd
# 
# Description:
# Return the full path from which the current script is run.
# 
# Usage:
# l15_gi_current_dirname.sh

spath=$(pwd)

echo -e "\npwd gives: $spath"
echo "dirname \$0 gives: $(dirname $0)"

echo -e "\$0 gives: $0\n"

echo "Press any key to continue..."
read s
