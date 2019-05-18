#! /bin/sh
echo What directory would you like to check?
read dir

echo "How long far back do you want to go (in days)"

read days

echo Starting now. If there have been many files added, this may take a long time!

cd $dir

find . -ctime -$days -type f -iname "*.mkv" ! -iname "*.mp4" ! -iname "*.mov" -exec  ~/scripts/checkfile.py \{\} \; > /var/log/plex-file-check/$dir.log

echo $dir have finished. View the log at /var/log/plex-file-check/$dir.log


