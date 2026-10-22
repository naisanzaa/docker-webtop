#!/bin/bash 

# run

echo "https://localhost:3001"

#image="ubuntu-kde"
#image="ubuntu-mate"
#image="ubuntu-xfce"
#image="debian-kde"
image="ubuntu-i3"
#image="latest"

docker rm -f $image || echo

docker run -d \
  --name $image \
  --restart always \
  -p 3000:3000 \
  -p 3001:3001 \
  -p 443:3001 \
  --shm-size="2gb" \
  antsable:$image

