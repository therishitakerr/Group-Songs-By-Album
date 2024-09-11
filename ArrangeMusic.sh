#!/bin/bash

currentDirectory="$1" #pwd if $1 is null

if [[ -z $1 ]]; then
    currentDirectory=$(pwd)
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
