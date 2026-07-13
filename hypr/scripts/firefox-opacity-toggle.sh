#!/usr/bin/env bash

CONFIG="$HOME/.config/hypr/hyprland.lua"
STATE="/tmp/firefox-opacity"

if [[ -f "$STATE" ]]; then
    sed -i 's/opacity = 1\.0/opacity = 0.85/' "$CONFIG"
    rm "$STATE"
else
    sed -i 's/opacity = 0\.85/opacity = 1.0/' "$CONFIG"
    touch "$STATE"
fi

hyprctl reload config-only