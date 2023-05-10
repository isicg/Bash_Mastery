#!/bin/bash
# 
# Author: gi
# Created: 2023-05-09
# Last Modified: YYYY-mm-dd
# 
# Description:
# This script generates output to both stderr and stdout.
# 
# Usage:
# l32_step5_redirection.sh
# Can be used to play around with redirecting stdout and stderr.

echo "Error message (1. method)" >&2
echo "Error message (2. method)" 1>&2
echo "Error message (3. method)" >> /dev/stderr

echo "Hello world!"
