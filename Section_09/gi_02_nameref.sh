#!/bin/bash
#

d='this is d'
declare -n a=$1
echo "The value of first positional parameter is: $1"
echo "The name of the variable to which a refers is: ${!a}"
echo "The value of a is $a"
a=whatever
