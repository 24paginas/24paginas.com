#!/bin/bash

# for every file in the directory, recursively
for file in $(find . -type f); do
  # if the file is a markdown file
  if [[ $file == *.md ]]; then

    # separate in two files: front matter and content
    awk '/^\---$/ { if(++delim % 2 == 0) { next } } { file = sprintf("chunk%s.txt", int(delim / 2)); print > file; }' < $file

    # brew install yq!!
    # convert media array in a multiple lines, concatenate it with '" "'
    LINE=`yq '.media[]' chunk0.txt | awk -v d='" "' '{s=(NR==1?s:s d)$0}END{print s}'`

    # echo "{% gallery \"$LINE\" %}"

    # remove the original file
    rm $file 
    
    # save new file with front matter, the gallery and the content
    cat chunk0.txt > $file
    echo -e "---\n\n{% gallery \"$LINE\" %}" >> $file
    cat chunk1.txt >> $file

    # remove tmp files
    rm chunk0.txt chunk1.txt

  fi
done

