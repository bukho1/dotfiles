#!/bin/bash
WALLPAPER_DIR="$HOME/Pictures/wallpapers"
WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" \) | \
    rofi -dmenu -p "Wallpaper" -show-icons)

[ -z "$WALLPAPER" ] && exit 1

hyprctl hyprpaper wallpaper ",$WALLPAPER"
matugen image "$WALLPAPER"
