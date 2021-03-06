export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME='spaceship'
# ZSH_THEME='agnoster'
SPACESHIP_PROMPT_ORDER=(
  user
  dir
  host
  git
  node
  ruby
  exec_time
  line_sep
  jobs
  char
)
SPACESHIP_CHAR_SYMBOL='↪ '
SPACESHIP_RUBY_SYMBOL='⧩ '

plugins=(
  git
  nvm
  osx
  rails
  tmuxinator
  yarn
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Setup fzf
# ---------
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ $- == *i* ]] && source '/usr/local/opt/fzf/shell/completion.zsh' 2> /dev/null
source '/usr/local/opt/fzf/shell/key-bindings.zsh'
PATH=$PATH:/usr/local/sbin

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export EDITOR='vim'

# fix tmuxinator window titles
export DISABLE_AUTO_TITLE=true

# fix HEAD^
unsetopt nomatch

# Aliases
alias be='bundle exec'
alias dt='cd ~/Desktop'
alias dl='cd ~/Downloads'
alias mux='tmuxinator'
alias reload='source ~/.zshrc'
alias tmuxconf='vim ~/.tmux.conf'
alias vimrc='vim ~/.vim/vimrc'
alias v='vim'
alias zshrc='vim ~/.zshrc'
alias diary='vim "$HOME/diary/`date +%Y_%m_%d`.md"'
