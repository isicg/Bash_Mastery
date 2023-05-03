#!/bin/bash

# Author: Goran Isic

# Date Created: 04-04-2023
# Last Modified: 04-24-2023
# Description: backup files from /home/gi/quill/GI_notes/ into
#		/home/gi/quill/Bash_Mastery/my_backup_[...].tar
# Usage: backup_script.sh

# tar -cvf /home/gi/quill/Bash_Mastery/my_backup_"$(date +%Y-%m-%d_%H-%M-%S)".tar /home/gi/quill/GI_notes/*  # 2>/dev/null
tar -cvf /home/gi/roll/Bash_Mastery/my_backup_"$(date +%Y-%m-%d_%H-%M-%S)".tar /home/gi/quill/GI_notes/*  # 2>/dev/null

exit 0
