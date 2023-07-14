#!/bin/bash

# bash
echo "Hi, this is a demo of at running a bash script" >> demo.txt
echo "The current shell is: $0" >> demo.txt
for i in {1..10}; do
	echo "i=$i" >> demo.txt
done
