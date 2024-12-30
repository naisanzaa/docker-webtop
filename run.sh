#!/bin/bash 

# run

docker run --rm \
  -p 3000:3000 \
  -p 3001:3001 \
  --shm-size="2gb" \
  lscr.io/linuxserver/webtop:arm64v8-arch-xfce
  
