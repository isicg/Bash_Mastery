#!/bin/bash
# 
# Author: gi
# Created: 2023-05-25
# Last Modified: YYYY-mm-dd
# 
# Description:
# <brief explanation of what does the script do>
# 
# Usage:
# l67_01_while_getopts_project.sh

total_seconds=0
while getopts "m:s:" opt; do
	case "$opt" in 
		m) total_seconds=$((total_seconds + OPTARG*60));;
		s) total_seconds=$((total_seconds + OPTARG));;
		\?) ;;
	esac
done

while [ $total_seconds -gt 0 ]; do
	echo "$((total_seconds--)) s remaining"
	sleep 1s
done

echo "Time's Up!"
