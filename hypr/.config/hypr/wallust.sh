#!/bin/bash

# Diretório dos wallpapers
WALLPAPER_DIR="/home/leo/Documents/wallpapers"

# Escolhe um wallpaper aleatório
WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" \) | shuf -n 1)

# Aplica o wallpaper com Waypaper usando o backend Hyprpaper
waypaper --wallpaper "$WALLPAPER" --backend hyprpaper

# Aguarda carregar
sleep 1

# Gera as cores com Wallust usando o mesmo caminho
wallust run -s --backend fastresize -- "$WALLPAPER"

# Recarrega Hyprland
hyprctl reload

