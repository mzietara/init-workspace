set -e
USERNAME=mark
GITHUB_USER=mzietara


apt update
apt-get update
apt-get upgrade -y

apt install -y vim \
    ripgrep \
    fzf

apt-get install -y \
    git \
    software-properties-common \
    apt-transport-https \
    ca-certificates \
    curl \
    unzip \
    ctags \
    fonts-powerline \
    yamllint \
    golang

curl -o /usr/local/bin/googler https://raw.githubusercontent.com/jarun/googler/v4.3.1/googler
chmod +x /usr/local/bin/googler
googler -u

sudo -u $USERNAME bash init-dotfiles.sh $GITHUB_USER $USERNAME
## install brew for homebrew
#sudo -u $USERNAME /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
