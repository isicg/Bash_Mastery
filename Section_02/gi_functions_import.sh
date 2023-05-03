#!/bin/bash
# 
# Author: gi
# Created: 2023-04-15
# Last Modified: YYYY-mm-dd
# 
# Description:
# In this script we demonstrate how functions defined in another bash file are imported into the current one
# 
# Usage:
# gi_functions_import.sh

# make_array_of_squares, print_array_elements
. /home/gi/quill/Bash_Mastery/Section_02/functions_to_import

make_array_of_squares niz 12
print_array_elements niz

MY_PATH="$(dirname -- "${BASH_SOURCE[0]}")"
MY_PATH="$(cd -- "$MY_PATH" && pwd)"
echo "$MY_PATH"
