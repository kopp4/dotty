#!/bin/bash

# Set the folder to the current directory or change it to a specific path
# FOLDER="."
FOLDER="/Users/koppa/Desktop/ytdl"

# List of video extensions to search for
# EXTENSIONS="mp4|mkv|avi|mov|flv|webm"
EXTENSIONS="mp4"

# Find all video files (case-insensitive), choose one at random
VIDEO=$(find "$FOLDER" -type f -iregex ".*\.$EXTENSIONS" | shuf -n 1)

open -a Anki
open -a Firefox

# Check if a file was found and open it with mpv (or replace with your preferred player)
if [[ -n "$VIDEO" ]]; then
    echo "Playing: $VIDEO"
    # mpv "$VIDEO"
    open -a mpv "$VIDEO"
else
    echo "No video files found in $FOLDER"
fi
