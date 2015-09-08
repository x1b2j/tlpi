#!/bin/bash

count="$(cat index.html | grep href | cut -d'=' -f5 | cut -d'"' -f2 | sed -e '1,2d' | wc -l)"
#for i in {1..$count}; do
for i in $(seq 1 $count); do
	echo "this is the $i th iteration"
done
