#!/bin/bash

if [ -d "$PWD/performance" ]; then
    echo "$PWD/performance folder exists"
else
    mkdir "$PWD/performance"
    echo "$PWD/performance folder has been created"
fi

free >> "$PWD/performance/memory.log"
