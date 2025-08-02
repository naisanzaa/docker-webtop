#!/bin/bash 

# run

images="latest alpine-i3 alpine-mate arch-i3 arch-kde arch-mate arch-xfce debian-i3 debian-kde debian-mate debian-xfce el-i3 el-mate el-xfce fedora-i3 fedora-kde fedora-mate fedora-xfce ubuntu-i3 ubuntu-kde ubuntu-mate ubuntu-xfce"

for image in $images; do
    
    docker run --rm \
      -p 3000:3000 \
      -p 3001:3001 \
      --shm-size="2gb" \
      lscr.io/linuxserver/webtop:$image

done
