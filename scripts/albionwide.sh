#!/bin/bash

state_file="/tmp/hyprland_res_hdmi_a_1.state"

# Se o arquivo não existe, assume que estamos em 900p
if [ ! -f "$state_file" ]; then
    echo "900" > "$state_file"
fi

current_state=$(cat "$state_file")

if [ "$current_state" = "900" ]; then
    # Muda para 800p
    hyprctl eval 'hl.monitor({ output = "HDMI-A-1", mode = "1600x800@60", position = "0x0", scale = 1, disabled = false })'
    notify-send "Hyprland" "Resolução: 1600x800@60"
    echo "800" > "$state_file"
else
    # Muda para 900p
    hyprctl eval 'hl.monitor({ output = "HDMI-A-1", mode = "1600x900@60", position = "0x0", scale = 1, disabled = false })'
    notify-send "Hyprland" "Resolução: 1600x900@60"
    echo "900" > "$state_file"
fi