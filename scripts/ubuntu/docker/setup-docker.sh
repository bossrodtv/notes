#!/bin/bash

sudo -i <<EOF

# Update the package list
apt-get update

# Install prerequisites
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

# Add Docker's apt repository.
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Update the package list (again)
apt-get update

# Install Docker
apt-get install -y docker-ce

# Add the current user to the Docker group
# In this script, the 'root' should be replaced with your actual username
usermod -aG docker root

echo "Docker installation done"

EOF
