#!/bin/bash
# 
# Author: gi
# Created: 2023-05-25
# Last Modified: YYYY-mm-dd
# 
# Description:
# <brief explanation of what does the script do>
# 
# Usage:
# l61_case_statements_project.sh

PS3="Please select one of the above cities: "
cities=("Tokyo" "London" "Los Angeles" "Moscow" "Dubai" "Manchester")
cities=("${cities[@]}" "New York" "Paris" "Bangalore" "Johannesburg")
cities=("${cities[@]}" "Istanbul" "Milan" "Abu Dhabi" "Pune" "Nairobi")
cities=("${cities[@]}" "Berlin" "Karachi")
#select city in "Tokyo" "London" "Los Angeles"
select city in "${cities[@]}"
do
	echo "You selected $city"
	case "$city" in
		"Tokyo") country="Japan";;
		"London" | "Manchester") country="Great Britain";;
		"Los Angeles" | "New York") country="United States of America";;
		"Moscow") country="Russia";;
		"Dubai" | "Abu Dhabi") country="United Arab Emirates";;
		"Paris") country="France";;
		"Bangalore" | "Pune") country="India";;
		"Johannesburg") country="South Africa";;
		"Istanbul") country="Turkey";;
		"Milan") country="Italy";;
		"Nairobi") country="Kenya";;
		"Berlin") country="Germany";;
		"Karachi") country="Pakistan";;
		*) country="Unknown";;
	esac
	break
done
echo "$city is in $country"

