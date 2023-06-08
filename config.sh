#!/bin/bash

SECRET_KEY="~/.ssh/garr-ds-rsa-0.pem"
USER="ubuntu"

# ds-net-1
SERVER_BC_ADDRESS="90.147.185.8"

# Docker buildx settings.
BUILD_PLATFORMS="linux/amd64"
DOCKERHUB_IMAGE="lozioo/blockchain:latest"
