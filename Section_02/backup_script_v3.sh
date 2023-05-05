#!/bin/bash

# Author: Goran Isic

# Date Created: 04-04-2023
# Last Modified: 04-24-2023
# Description: backup files from /home/gi/quill/GI_notes/ into
#		/home/gi/quill/Bash_Mastery/my_backup_[...].tar
# Usage: backup_script.sh

echo "Hello, ${USER^^}"
echo -e "This script will back up your quill/GI_notes directory\n"
echo -e "BTW, the path to your home directory is $HOME\n"

backup_path="/home/gi/roll/Bash_Mastery/"

tar -cf "$backup_path"my_backup_"$(date +%Y-%m-%d_%H-%M-%S)".tar /home/gi/quill/GI_notes/*  # 2>/dev/null

currentdir=$(pwd)
echo "BTW, you are running this script from $currentdir."
echo "I will save the backup in $backup_path"

echo "Backup Completed Successfully."

exit 0
