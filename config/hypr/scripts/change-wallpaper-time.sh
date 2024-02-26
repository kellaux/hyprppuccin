#!/bin/bash
path=~/wallpapers
ttype=M
time=$(date +%$ttype)
swww init
images=($(find $path -type f))
while true; do
  for i in "${images[@]}"
  do
    while true; do
	    if [ $(date +%$ttype) -gt $time ]; then
      time=$(date +%$ttype)
	    	swww img $i \
      --transition-type wipe \
      --transition-fps=60 \
      --transition-duration 1.5
        echo $i
        break
	  fi 
	  done
  done
done


