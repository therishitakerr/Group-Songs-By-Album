#!/bin/bash

# Process each media file in the current directory
for file in *.mp3 *.opus; do
    if [[ -f "$file" ]]; then
        # Extract album information from the file
        album=$(mediainfo --Inform="General;%Album%" "$file" | sed 's/:/-/g')
        echo "$album"
        
        # Create the album directory and move the file
        mkdir -p "$album"
        mv "$file" "$album/"
    fi
done
