#!/bin/bash
# 
# Author: gi
# Created: 2023-05-05
# Last Modified: YYYY-mm-dd
# 
# Description:
# Check all the .sh files in current folder and set their permissions to 744
# 
# Usage:
# l21_gi_01_chmod_sh.sh

cnt=0
RED='\e[1;31m'
NC='\e[0m'

for i in "$PWD"/*.sh ; do
	cnt=$(( cnt + 1 ))
	echo "$cnt. $i"
	perms=$(ls -l $i | cut -d" " -f1)
	ex_perm=${perms:3:1}
	echo -en "${RED}$perms${NC}" 
	echo " Execute permission: $ex_perm"
	if [ $ex_perm != "x" ] ; then
		echo "NO EXECUTE PERMISSION"
		chmod 744 $i
		echo "EXECUTE PERMISSION SET."
	fi
done


