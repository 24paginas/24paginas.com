#!/bin/bash

# for every file in the directory, recursively
for file in $(find . -type f); do
  # if the file is a markdown file
  if [[ $file == *.md ]]; then

    # clean blank lines at the end of the file
    perl -0777 -pe 's/^\n+|\n\K\n+$//g' $file | sponge $file

  fi
done

