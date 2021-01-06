set -e
USERNAME=mark
GITHUB_USER=mzietara


apt update
apt-get update
apt-get upgrade -y

apt install -y vim

apt-get install -y \
    git \
    software-properties-common \
    apt-transport-https \
    ca-certificates \
    curl \

## instal brew for homebrew
#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

## Install ag for searching quickly
#echo "installing ripgrep, a quick searcher"
#brew install ripgrep

## install unzip
apt-get install -y unzip

## ctags
apt-get install -y ctags

## yamllint
apt-get install -y yamllint

## Install go
apt install -y golang

apt-get install -y zsh

curl -o /usr/local/bin/googler https://raw.githubusercontent.com/jarun/googler/v4.3.1/googler
chmod +x /usr/local/bin/googler
googler -u

mkdir /tmp/LS_COLORS && curl -L https://api.github.com/repos/trapd00r/LS_COLORS/tarball/master | tar xzf  - --directory=/tmp/LS_COLORS --strip=1
( cd /tmp/LS_COLORS && sh install.sh  )

bash init-dotfiles.sh $GITHUB_USER $USERNAME


