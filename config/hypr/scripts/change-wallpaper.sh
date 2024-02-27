#!/bin/bash
path=~/.config/hypr
source $path/scripts/globalvariables
images=($(find $path/wallpapers -type f))
swww img ${images[$nextindex]} \
      --transition-type wipe \
      --transition-fps=60 \
      --transition-duration 1.5
nextindex=$(( (nextindex + 1) % ${#images[@]} ))
echo "nextindex=$nextindex" > $path/scripts/globalvariables

