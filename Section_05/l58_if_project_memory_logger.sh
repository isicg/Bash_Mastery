#!/bin/bash

if [ -d "$PWD/performance" ]; then
    echo "Folder '$PWD/performance' found"
else
    mkdir "$PWD/performance"
    echo "Folder '$PWD/performance' created'"
fi

date >> "$PWD/performance/memory.log" 2>&1
free >> "$PWD/performance/memory.log" 2>&1
