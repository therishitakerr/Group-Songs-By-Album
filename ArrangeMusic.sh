#!/bin/bash

for file in *; do
	if [ -f "$file" ]; then
		if [[ ($file == *.mp3) || ($file == *.opus) ]]; then
			album=$(mediainfo --Inform="General;%Album%" "$file" | sed s/:/-/g)
			echo "$album"
			mkdir -p "$album"
			mv "$file" "$album"
		fi
	fi
done
exit
