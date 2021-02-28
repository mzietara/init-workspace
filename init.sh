USERNAME=mark
GITHUB_USER=mzietara

set -e
apt update
apt-get update
apt-get upgrade -y

apt install -y vim \
    ripgrep \
    fzf \
    vim-gtk3

apt-get install -y \
    git \
    software-properties-common \
    apt-transport-https \
    ca-certificates \
    curl \
    unzip \
    ctags \
    fonts-powerline \
    yamllint

sudo -u $USERNAME bash init-dotfiles.sh $GITHUB_USER $USERNAME
