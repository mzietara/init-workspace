set -e
user=mzietara

apt update
apt-get update
apt-get upgrade -y

DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

apt-get install -y git
apt-get install -y software-properties-common
#add-apt-repository -y ppa:jonathonf/vim
#add-apt-repository -y ppa:longsleep/golang-backports
apt update

apt install -y vim

apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

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

curl -o /usr/local/bin/googler
https://raw.githubusercontent.com/jarun/googler/v4.3.1/googler
chmod +x /usr/local/bin/googler
googler -u

bash init-dotfiles.sh $user


