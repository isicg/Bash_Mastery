#!/bin/bash

name=ZiYaD

echo "The name, as entered, is: $name"
echo "First letter changed to lowercase: ${name,}"
echo "All letters changed to lowercase: ${name,,}"
echo "Number of characters: ${#name}"

echo "The current user name is: $USER"
echo "First letter changed to uppercase: ${USER^}"
echo "All letters changed to uppercase: ${USER^^}"
echo "Number of characters: ${#USER}"

numbers=0123456789
echo "Now we give an example of slicing"
echo 'The general syntax is: ${parameter:offset:length}'
echo "The full content of the variable is: $numbers"
echo "offset 2, length 4 gives: ${numbers:2:4}"
echo -e "\nAnother way to use slicing is to leave out the length"
echo 'The syntax in that case is: ${parameter:offset}'
echo "offset 3 gives: ${numbers:3}"
