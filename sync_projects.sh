#!/bin/bash

SRC="/Users/jeffreywolberg/Coding/youtube_page_scrape/index.html"
DEST="/Users/jeffreywolberg/Coding/jeffreywolberg.github.io/projects/youtube_page_scrape/"

rsync -av --exclude='.git' --delete "$SRC" "$DEST"
