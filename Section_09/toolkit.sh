#!/bin/bash
# 
# Author: gi
# Created: 2023-07-12
# Last Modified: YYYY-mm-dd
# 
# Description:
# <brief explanation of what does the script do>
# 
# Usage:
# toolkit.sh

PS3="Which one would you like to run?: "
select option in "Cruft remover" "Folder organiser" "None"; do
	case $option in
		"Cruft remover") 
			./cruft_remover.sh
			break ;;
		"Folder organiser")
			./folder_organiser.sh
			break ;;
		"None")
			break ;;
		*)
			echo "Incorrect option. Please try again"
	esac
	# break
done
echo "Thank you for using toolkit.sh."
