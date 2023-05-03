#!/bin/bash

a=3

declare -n b=a

print_ab() {
	echo "a=$a, b=$b"
}

print_ab

b=4

print_ab
