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
# l32_gi_05_output_redirection_demo.sh

echo "Redirect stdout to demo1.txt and stdout to demo2.txt"
./l32_gi_04_stderr_in_script.sh 1> demo1.txt 2> demo2.txt

echo "Redirect both stdout and stderr to demo12.txt"
./l32_gi_04_stderr_in_script.sh &>> demo12.txt

echo "Redirect both stdout and stderr to stdout"
./l32_gi_04_stderr_in_script.sh 2>&1

echo "Redirect both stdout and stderr to /dev/null"
./l32_gi_04_stderr_in_script.sh &> /dev/null

