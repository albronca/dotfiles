#!/bin/sh

############
# Homebrew #
############

which brew 1>&/dev/null
if [ ! "$?" -eq 0 ] ; then
  echo "Homebrew not installed. Attempting to install Homebrew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  if [ ! "$?" -eq 0 ] ; then
   echo "Something went wrong. Exiting..." && exit 1
  fi
fi

brew update
brew upgrade
brew install coreutils

#########
# Tools #
#########

brew install fzf
brew install node
brew install the_silver_searcher
brew install tmux
brew install vim
brew install yarn
brew install zsh
brew install zsh-completions

# nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

# Set zsh as default shell
chsh -s /bin/zsh

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Spaceship Prompt
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -sv "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# vimrc
cp -rf $DIR/.vim ~/.vim

# zshrc
ln -sv "$HOME/dotfiles/.zshrc" "$HOME"

# tmuxconf
ln -sv "$HOME/dotfiles/.tmux.conf" "$HOME"
