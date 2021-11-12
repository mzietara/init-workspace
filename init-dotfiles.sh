set -e

GITHUB_USER=$1
USERNAME=$2
repo=dotfiles
link=true
HOME_DIR=/home/$USERNAME


if [ -z "$1" ]
then
  echo "ERROR[NO_ARG_USER]: You must specify arg github user"
  exit
fi
if [ -z "$2" ]
then
  HOME_DIR=$HOME
  echo "no username specified, assuming root"
fi

if [ ! -d $HOME_DIR/dotfiles ]; then
  echo "$HOME_DIR/dotfiles exists, not fetching from githubg repo"
  git clone https://github.com/$GITHUB_USER/$repo $HOME_DIR/dotfiles
fi

cd $HOME_DIR/dotfiles

git submodule init
git submodule update

dotfilesDir=$HOME_DIR/dotfiles

function linkDotfile {
  dest="${HOME_DIR}/${1}"
  dateStr=$(date +%Y-%m-%d-%H%M)

  if [ -h ~/${1} ]; then
    # Existing symlink 
    echo "Removing existing symlink: ${dest}"
    rm -f ${dest} 

  elif [ -f "${dest}" ]; then
    # Existing file
    echo "Backing up existing file: ${dest}"
    mv ${dest}{,.${dateStr}}

  elif [ -d "${dest}" ]; then
    # Existing dir
    echo "Backing up existing dir: ${dest}"
    mv ${dest}{,.${dateStr}}
  fi

  echo "Creating new symlink: ${dest}"
  ln -s ${dotfilesDir}/${1} ${dest}
}

if [ links ]
echo "linking dotfiles..."
then
  linkDotfile .vim
  linkDotfile .vimrc
  linkDotfile .ackrc
  linkDotfile .bashrc
  linkDotfile .bash_aliases
  linkDotfile .gitconfig
  linkDotfile .tmux.conf
  linkDotfile .goomwwmrc
  linkDotfile .inputrc
  linkDotfile .xinitrc
  linkDotfile .curlrc
  linkDotfile .gf
  linkDotfile .bash_functions
fi

