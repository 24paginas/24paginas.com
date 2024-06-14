#!/bin/bash

# for every file in the directory, recursively
for file in $(find . -type f); do
  # if the file is a markdown file
  if [[ $file == *.md ]]; then

    # separate in two files: front matter and content
    awk '/^\---$/ { if(++delim % 2 == 0) { next } } { file = sprintf("chunk%s.txt", int(delim / 2)); print > file; }' < $file

    # brew install yq!!
    LINE=`yq '.media[]' $file | awk -v d='" "' '{s=(NR==1?s:s d)$0}END{print s}'`

    echo "{% gallery \"$LINE\" %}"

    rm $file 
    
    cat chunk0.txt > $file
    echo -e "---\n\n{% gallery \"$LINE\" %}" >> $file
    cat chunk1.txt >> $file

    rm chunk0.txt chunk1.txt

  fi
done

