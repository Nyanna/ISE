#!/bin/bash
clear

for dir in ./*/; do
	dir_name=$(basename "$dir")
	if [[ "$dir_name" =~ ^[0-9]{2} ]]; then
    	sanitized_name=$(echo "$dir_name" | sed 's/[^a-zA-Z0-9_-]/_/g')
    	echo Processing $sanitized_name
    	cd $dir
		pandoc *.md --output="../output/chapter_$sanitized_name.pdf" -s -d ../scripts/pandoc.yml
		cd ..
	fi
done

cd output
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile="Thesis on Infinite Scale Expansion (ISE).plain.pdf" chapter_*.pdf
cd ..

#pandoc
#pandoc -s ./**/*.md -d scripts/pandoc.yml

# search font
# fc-list : family | sort | grep Math