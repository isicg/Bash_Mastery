#!/bin/bash

while getopts "nf:" param
do
  echo "param:$param"
  case "$param" in
    f) file="$OPTARG" ;;
    n) set -x ;;
    \?) echo "Missing or unknown option" ;;
  esac
done

case "$file" in
  *.tar.gz) tar xzf "$file" ;;
  *.gz) gzip -d "$file" ;;
  *.zip) unzip "$file" ;;
    *) echo "Unknown filetype" ;;
esac

if [[ "$(uname)" == "Linux" ]]
then
  echo "Using Linux"
fi
