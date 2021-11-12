USERNAME=$(whoami)
GITHUB_USER=mzietara

echo !! Hello, $USERNAME!\n
set -e
echo !! Updating apt-get...
apt-get update
apt-get upgrade -y

echo !! Installing packages...
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

echo !! Installing dotfiles...
sudo -u $USERNAME bash init-dotfiles.sh $GITHUB_USER $USERNAME
