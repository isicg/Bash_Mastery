#!/bin/bash

read -r -p "What is your first name?:"  firstname
read -r -p "What is your last name?: " lastname
read -r -N 4 -p "What is your extension? (must be 4 digits): " ext
echo # for formatting
read -r -N 4 -s -p "What access code would you like to use when dialling in (must be 4 digits)?: " access
echo # for formatting
echo $firstname,$lastname,$ext,$access >> extensions.csv
