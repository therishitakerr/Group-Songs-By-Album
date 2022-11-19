#!/data/data/com.termux/files/usr/bin/bash

for file in *; do
	if [ -f "$file" ]; then
		if [[ ($file == *.mp3) || ($file == *.opus) ]]; then

			album=$(mediainfo --Inform="General;%Album%" "$file" | sed s/:/-/g)
			echo $album
			if [ ! -d "$album" ]; then
				mkdir "$album"
			fi
			if [ -d "$album" ]; then
				mv "$file" "$album"
			fi
		fi
	fi
done
exit
