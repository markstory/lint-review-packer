#!/usr/bin/env bash

# Install and enable docker.
DEBIAN_FRONTEND=noninteractive apt-get install -y docker.io
systemctl start docker
systemctl enable docker

# Enable ubuntu user to use docker
usermod -aG docker ubuntu

# Get lintreview
git clone https://github.com/markstory/lint-review /tmp/lint-review

# Build docker images.
cd /tmp/lint-review && make images
rm -rf /tmp/lint-review
