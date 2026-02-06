#!/bin/bash
clear

for dir in ./*/; do
	dir_name=$(basename "$dir")
	if [[ "$dir_name" =~ ^[0-9]{2} ]]; then
    	sanitized_name=$(echo "$dir_name" | sed 's/[^a-zA-Z0-9_-]/_/g')
    	echo Processing $sanitized_name
    	cd $dir
    	
    	#copy up subchapters
		for dir in ./*/; do
			dir_name=$(basename "$dir")
			if [[ "$dir_name" =~ ^[0-9]{2} ]]; then
		    	sanitized_subname=$(echo "$dir_name" | sed 's/[^a-zA-Z0-9_-]/_/g')
		    	echo Processing subchapter $sanitized_subname
		    	cd $dir
		    	
		    	cat *.md > "../$sanitized_subname.out.md"
				cd ..
			fi
		done
    	
    	cat *.md > "../output/chapter_$sanitized_name.merge.md"
		
		cd ..
	fi
done

echo Combining chapters
cd output
cat chapter_*.merge.md > "Thesis on Infinite Scale Expansion (ISE).agentic.md" 
cd ..