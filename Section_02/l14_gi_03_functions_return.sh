#!/bin/bash

return_side_effect () {
	funct_side_effect="This variable is created and set in return_side_effect"
	return 0
}

echo "before: variable <funct_side_effect>=$funct_side_effect"
return_side_effect
echo "after: variable <funct_side_effect>=$funct_side_effect"

return_output () {
	local func_result="This is the result"
	echo "$func_result"
	return 0
}

func_result_gi=$(return_output)
echo "The return value of the function is: $func_result_gi"
