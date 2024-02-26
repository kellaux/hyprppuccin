#!/bin/bash
if [ -z "$(cat ~/.cache/swww/*)" ]; then
  swww img ~/.config/hypr/wallpaper/1.png
fi
