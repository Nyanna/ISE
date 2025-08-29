#!/bin/bash
pandoc -s ./**/*.md -d scripts/pandoc.yml

# search font
# fc-list : family | sort | grep Math