!#/bin/bash

while read i; do
	file+=( "$i" )
done < <(ls | sort -R)
