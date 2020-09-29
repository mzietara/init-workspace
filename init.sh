set -e

apt update
apt-get update
apt-get upgrade -y

DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

apt-get install -y git
apt-get install -y software-properties-common
add-apt-repository -y ppa:jonathonf/vim
apt install -y vim

apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common


## Install ag for searching quickly
echo "installing ag, a quick searcher"
apt install silversearcher-ag

## install unzip
apt install unzip

## ctags
apt-get install -y ctags

## yamllint
apt-get install -y yamllint

## Install go
apt install -y golang

sh init-dotfiles
