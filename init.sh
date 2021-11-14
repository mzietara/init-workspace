#!/bin/bash
set -e

USERNAME=$1
GITHUB_USER=mzietara

if [ $# -eq 0 ]; then
    echo "Please provide one argument which is your username"
    exit 1
fi

echo 🎵 Hello, $USERNAME!
echo 🎵 Updating apt-get...
apt-get update
apt-get upgrade -y

echo 🎵 Installing packages...
apt-get install -y \
    vim \
    ripgrep \
    fzf \
    vim-gtk3 \
    git \
    software-properties-common \
    apt-transport-https \
    ca-certificates \
    curl \
    unzip \
    ctags \
    fonts-powerline \
    yamllint


./scripts/install-go.sh

echo 🎵 Syncing dotfiles...
sudo -u $USERNAME bash scripts/sync-dotfiles.sh $GITHUB_USER $USERNAME
