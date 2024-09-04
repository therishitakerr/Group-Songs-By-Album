#!/bin/bash

currentDirectory=""
if [ -z "$1" ]; then
    currentDirectory=$(pwd) # Use the current directory if $1 is null
else
    currentDirectory="$1" # Use $1 if it's not null
fi

# Process each media file in the current directory
for file in "$currentDirectory"/*.mp3 "$currentDirectory"/*.wav "$currentDirectory"/*.flac "$currentDirectory"/*.aac "$currentDirectory"/*.ogg "$currentDirectory"/*.m4a "$currentDirectory"/*.wma "$currentDirectory"/*.opus; do
    if [[ -f "$file" ]]; then
        # Extract album information from the file
        album=$(mediainfo --Inform="General;%Album%" "$file" | sed 's/:/-/g')
        echo "$album"

        # Create the album directory and move the file
        mkdir -p "$currentDirectory/$album"
        mv "$file" "$currentDirectory/$album/"
    fi
done
