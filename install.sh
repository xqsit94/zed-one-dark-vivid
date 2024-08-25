#!/bin/bash

# Define source and destination directories
SOURCE_DIR="themes"
DEST_DIR="$HOME/.config/zed/themes"

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
  echo "Source directory '$SOURCE_DIR' does not exist."
  exit 1
fi

# Create destination directory if it does not exist
mkdir -p "$DEST_DIR"

# Copy JSON files from source to destination
cp "$SOURCE_DIR"/*.json "$DEST_DIR"

# Check if the copy was successful
if [ $? -eq 0 ]; then
  echo "Themes copied successfully to '$DEST_DIR'."
else
  echo "Failed to copy themes."
  exit 1
fi
