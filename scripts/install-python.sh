#!/bin/bash
set -e

apt -y update
apt install -y software-properties-common
add-apt-repository -y ppa:deadsnakes/ppa
apt -y update
apt install -y python3.8
