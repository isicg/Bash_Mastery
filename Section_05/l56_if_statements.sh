#!/bin/bash

if [ 2 -eq 1 ]; then
    echo "Test passed"
elif [ 1 -eq 1 ]; then
    echo "Second test passed"
else
    echo "Test failed"
fi
