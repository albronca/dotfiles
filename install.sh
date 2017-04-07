read -d '' DOTFILES << EOF
  aliases             bash_profile  bashrc    fzf.bash
  git-completion.bash git-prompt.sh git-stuff gitconfig
  gitignore_global    gitmodules    path      prompt
EOF

DIR="$HOME/dotfiles"

confirm() {
  read -r -p "${1:-Are you sure? [y/N]} " RESPONSE
  case "$RESPONSE" in
    [yY][eE][sS]|[yY]) true;;
    *) false;;
  esac
}

if confirm "Back up existing dotfiles? (y/n)"; then
  echo "📝  Backing up existing dotfiles..."
  BACKUPS="$HOME/dotfiles_backup_$(date +"%m_%d_%Y_%H%M%S")"
  mkdir "$BACKUPS"

  for DOTFILE in $DOTFILES; do
    [ -f "$HOME/.$DOTFILE" ] && mv "$HOME/.$DOTFILE" "$BACKUPS"
  done

  [ -d ~/.vim ] && mv -f ~/.vim $BACKUPS

  echo "✅  done!"
fi

echo "📝  Adding new dotfiles..."

for FILE in $DOTFILES; do
  cp -f $DIR/.$FILE ~/.$FILE
done

cp -rf $DIR/.vim ~/.vim
echo "✅  done!"

echo "Please open a fresh terminal 🐊"
