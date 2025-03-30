#!/bin/bash

# Set the directory where your wallpapers are stored
WALLPAPER_DIR="$HOME/wallpapers"

# List all wallpapers in the directory (both .jpg and .png files)
available_wallpapers=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" \))

# Check if available wallpapers are found
if [[ -z "$available_wallpapers" ]]; then
    echo "No wallpapers found in $WALLPAPER_DIR"
    exit 1
fi

# Use rofi to present the list of wallpapers
selected_wallpaper=$(echo "$available_wallpapers" | rofi -dmenu -p "Select Wallpaper")

# If a wallpaper is selected, set it using swaybg
if [[ -n "$selected_wallpaper" ]]; then
    # Set the selected wallpaper using swaybg
    swaybg -i "$selected_wallpaper" -m fill
fi

