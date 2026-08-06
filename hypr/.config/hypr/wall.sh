#!/bin/bash

# Diretório dos wallpapers
WALLPAPER_DIR="/home/leo/Documents/wallpapers"

# Escolhe um wallpaper aleatório
WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" \) | shuf -n 1)

# Aplica o wallpaper com Hyprpaper
hyprctl hyprpaper wallpaper "HDMI-A-1,$WALLPAPER"
