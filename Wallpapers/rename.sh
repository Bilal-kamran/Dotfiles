#!/bin/bash

# Script to rename all the images to 1,2,3... and so on...

# Counter for the new names
counter=1

# Loop through all jpg and png files in the current directory
for file in *.jpg *.png; do
  # Check if the file exists (in case no matching files are found)
  if [ -f "$file" ]; then
    # Extract the extension
    extension="${file##*.}"

    # Rename the file
    mv "$file" "$counter.$extension"

    # Increment the counter
    ((counter++))
  fi
done

echo "Renaming complete."
