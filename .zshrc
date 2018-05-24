export ZSH=/Users/abronca/.oh-my-zsh

ZSH_THEME="spaceship"
SPACESHIP_PROMPT_ORDER=(
  user
  dir
  host
  git
  ruby
  exec_time
  line_sep
  jobs
  char
  vi_mode
)
SPACESHIP_VI_MODE_NORMAL="❮"
SPACESHIP_VI_MODE_INSERT=" "
SPACESHIP_VI_MODE_COLOR="yellow"
SPACESHIP_VI_MODE_SUFFIX=""
SPACESHIP_CHAR_SYMBOL="↪"

plugins=(
  git
  nvm
  osx
  rails
  tmuxinator
  vi-mode
  yarn
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Setup fzf
# ---------
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null
source "/usr/local/opt/fzf/shell/key-bindings.zsh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export EDITOR='vim'

# fix tmuxinator window titles
export DISABLE_AUTO_TITLE=true

# Aliases
alias be='bundle exec'
alias dt='cd ~/Desktop'
alias dl='cd ~/Downloads'
alias dev='cd ~/Development'
alias mux='tmuxinator'
alias reload='source ~/.zshrc'
alias tmuxconf='vim ~/.tmux.conf'
alias vimrc='vim ~/.vim/vimrc'
alias v='vim'
alias zshrc='vim ~/.zshrc'
