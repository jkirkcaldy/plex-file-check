#! /bin/sh

echo Starting now. If there have been many files added, this may take a long time!

cd "/mnt/plex/TV Shows"

find . -ctime -5 -type f -iname "*.mkv" ! -iname "*.mp4" ! -iname "*.mov" -exec  ~/scripts/checkfile.py \{\} \; > /var/log/plex-file-check/TV_SHOWS.log

echo TV Shows have finished. View the log at /var/log/plex-file-check/MOVIES.log

cd "/mnt/plex/Movies"

find . -ctime -5 -type f -iname "*.mkv" ! -iname "*.mp4" ! -iname "*.mov" -exec  ~/scripts/checkfile.py \{\} \; > /var/log/plex-file-check/MOVIES.log

echo Movies have finished. View the log at /var/log/plex-file-check/MOVIES.log
