#!/bin/bash

sudo -i bash <<EOF
echo "***********************************"
echo "Navigate to the docker folder"
echo "***********************************"
cd /home/ubuntu/docker

echo "***********************************"
echo "Login to AWS ECR"
echo "***********************************"
aws ecr get-login-password --region <region> | docker login --username AWS --password-stdin <account_id>.dkr.ecr.<region>.amazonaws.com

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
