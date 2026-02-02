#!/bin/bash 

# build

image="ubuntu-kde"
image="ubuntu-mate"
image="ubuntu-xfce"
image="debian-kde"
image="ubuntu-i3"
#image="latest"

docker build \
  --pull \
  -t lscr.io/linuxserver/webtop:$image .
  
