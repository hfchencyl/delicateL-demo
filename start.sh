#!/bin/bash
echo "starting exec delicate-demo ..."

# 1,delete the cont and img
docker stop delicate-demo-cont
docker rm delicate-demo-cont
docker rmi delicate-demo-img:v1

# 2, build dockerfile
docker build -t delicate-demo-img:v1 .

#3,run docker
docker run --name delicate-demo-cont --network mynet --network-alias net.delicate -d delicate-demo-img:v1

echo "started exec delicate-demo ..."