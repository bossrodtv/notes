#!/bin/bash

sudo -i bash <<EOF
echo "***********************************"
echo "Navigate to the docker folder"
echo "***********************************"
cd /root/docker

echo "***********************************"
echo "Stop the application"
echo "***********************************"
docker compose down

echo "***********************************"
echo "Removing all docker images"
echo "***********************************"
docker image prune -a -f

echo "***********************************"
echo "Start the application"
echo "***********************************"
docker compose up -d

echo "***********************************"
echo "Application is now running!"
echo "***********************************"
EOF
