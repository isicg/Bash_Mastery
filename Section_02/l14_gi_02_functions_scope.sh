#!/bin/bash

var1='A'
var2='B'

my_function() {
	local var1='C'
	var2='D'
	echo "Inside function: var1: $var1, var2: $var2"
	return 0
}

echo "Before executing function: var1: $var1, var2: $var2"

my_function

echo "After executing function: var1: $var1, var2: $var2"

exit 0
