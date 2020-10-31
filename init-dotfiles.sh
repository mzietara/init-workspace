set -e

user=$1
repo=dotfiles
link=true

if [ -z "$1" ]
then
  echo "ERROR[NO_ARG_USER]: You must specify arg user"
  exit
fi
if [ -z "$2" ]
then
  link=false 
  exit
fi
link=$2
if [ -d "~/dotfiles"  ]
then
  rm ~/dotfiles
fi

git clone https://github.com/$user/$repo ~/dotfiles
cd ~/dotfiles

git submodule init
git submodule update

dotfilesDir=~/dotfiles

function linkDotfile {
  dest="${HOME}/${1}"
  dateStr=$(date +%Y-%m-%d-%H%M)

  if [ -h ~/${1} ]; then
    # Existing symlink 
    echo "Removing existing symlink: ${dest}"
    rm ${dest} 

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

