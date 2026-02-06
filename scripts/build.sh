#!/bin/bash
clear

echo Merging Agentic Version
./scripts/merge.sh

echo Building PDF
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
    	
    	cat *.md |
    	sed 's/ℏ/$\\hbar$/g' |
		sed 's/→/$\\to$/g' |
		sed 's/↔/$\\leftrightarrow$/g' |
		sed 's/⇒/$\\Rightarrow$/g' |
		sed 's/⇔/$\\Leftrightarrow$/g' |
		sed 's/∝/$\\propto$/g' |
		sed 's/∩/$\\cap$/g' |
		sed 's/∼/$\\sim$/g' |
		sed 's/≙/$\\widehat{=}$/g' |
		sed 's/≪/$\\ll$/g' |
		sed 's/⊥/$\\perp$/g' |
		sed 's/☉/$\\odot$/g' |
		sed 's/𝜅/$\\kappa$/g' |
		sed 's/ϰ/$\\kappa$/g' |
		sed 's/𝜌/$\\rho$/g' |
		sed 's/ϱ/$\\rho$/g' |
		pandoc --output="../output/chapter_$sanitized_name.pdf" -s -d ../scripts/pandoc.yml
		
		cd ..
	fi
done

echo Combining chapters
cd output
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile="Thesis on Infinite Scale Expansion (ISE).plain.pdf" chapter_*.pdf
cd ..

#pandoc
#pandoc -s ./**/*.md -d scripts/pandoc.yml

# search font
# fc-list : family | sort | grep Math