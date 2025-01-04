#!/bin/bash

# Script to set the wallpaper randomly

# Get the directory where the script is located
script_dir=$(dirname "$(realpath "$0")")

# Find all jpg and png files in the script's directory
images=("$script_dir"/*.jpg "$script_dir"/*.png)

# Check if any images are found
if [ ${#images[@]} -eq 0 ]; then
  echo "No .jpg or .png files found in the script's directory."
  exit 1
fi

# Randomly select an image
random_image="${images[$RANDOM % ${#images[@]}]}"

# Set the selected image as wallpaper using feh
feh --bg-scale "$random_image" --bg-scale "$random_image"

echo "Wallpaper set to: $random_image"
