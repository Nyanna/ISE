#!/bin/bash
clear

for dir in ./*/; do
	dir_name=$(basename "$dir")
	if [[ "$dir_name" =~ ^[0-9]{2} ]]; then
    	sanitized_name=$(echo "$dir_name" | sed 's/[^a-zA-Z0-9_-]/_/g')
    	cd $dir
		echo pandoc *.md -o ../ouput/chapter_$sanitized_name.pdf -s -d ../scripts/pandoc.yml
		cd ..
	fi
done

#pandoc
#pandoc -s ./**/*.md -d scripts/pandoc.yml

# search font
# fc-list : family | sort | grep Math