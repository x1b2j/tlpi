#!/bin/bash
wget -q http://man7.org/tlpi/code/online/dist/lib/
count="$(cat index.html | grep href | cut -d'=' -f5 | cut -d'"' -f2 | sed -e '1,2d' | wc -l)"
cat index.html | grep href | cut -d'=' -f5 | cut -d'"' -f2 | sed -e '1,2d' > file_list
for i in $(seq 1 $count); do
	file=$(sed -n "$i"p file_list)
	wget -q http://man7.org/tlpi/code/online/dist/lib/$file
	echo "$file has been downloaded ..."
done
