#!/bin/bash

OS_TYPE=$(uname)

if [ "$OS_TYPE" = "Linux" ]; then
# pisces machine at home
	echo "Running on Linux"
	SRC="/home/jeffrey/Coding/youtube_page_scrape/index.html"
	DEST="/home/jeffrey/Coding/jeffreywolberg.github.io/projects/youtube_page_scrape/"
elif [ "$OS_TYPE" = "Darwin" ]; then
# My local mac
	echo "Running on Mac"
	SRC="/Users/jeffreywolberg/Coding/youtube_page_scrape/index.html"
	DEST="/Users/jeffreywolberg/Coding/jeffreywolberg.github.io/projects/youtube_page_scrape/"
else
	echo "Unknown OS: $OS_TYPE"
fi

mkdir -p "$DEST"
rsync -av --checksum --exclude='.git' --delete "$SRC" "$DEST"
