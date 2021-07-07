#!/bin/bash
set -eu -o pipefail

NODE_VERSION=14.16.1
YARN_VERSION=1.22.10

# This performs a manual install of Node.
echo "Installing node ${NODE_VERSION}"
sudo rpm -i https://rpm.nodesource.com/pub_14.x/el/7/x86_64/nodejs-${NODE_VERSION}-1nodesource.x86_64.rpm
echo "Installing yarn ${YARN_VERSION}"
sudo npm install -g yarn@${YARN_VERSION}

echo "Installing development tools"
sudo yum groupinstall -y "Development Tools"