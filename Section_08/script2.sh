#!/bin/bash

if ! grep -q "backup=true.*" "$HOME/dummy.txt"
then
  echo "Backup not enabled in $HOME/.myconfig, exiting"
  exit 1
fi

# tar -cf  
if [ ! -d "$1" ]; then
	echo "The folder $1 does not exist."
	exit 1
fi

tar -cf "$1/my_backup_$(date +%d-%m-%Y_%H-%M-%S).tar" "$HOME/quill/Bash_Mastery/Section_08"
