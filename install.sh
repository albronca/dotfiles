read -d '' DOTFILES << EOF
  aliases bash_profile bashrc fzf.bash git-completion.bash git-prompt.sh
  git-stuff gitconfig gitignore_global gitmodules path prompt
EOF

DIR="$HOME/dotfiles"
OLDDIR="$HOME/dotfiles_backup"

if confirm "Back up existing dotfiles? (y/n)"; then
  echo "📝 Backing up existing dotfiles..."
  BACKUP="$HOME/dotfiles_backup_$(date +"%m_%d_%Y_%H%M%S")"
  mkdir "$BACKUP"

  for DOTFILE in $DOTFILES; do
    [ -f "$HOME/.$DOTFILE" ] && mv "$HOME/.$DOTFILE" "$BACKUPS"
  done

  [ -d ~/.vim ] && mv -f ~/.vim $OLDDIR

  echo "✅ ...done!"
fi

echo "📝 Adding new dotfiles..."

for FILE in $DOTFILES; do
  cp -f $DIR/.$FILE ~/.$FILE
done

cp -rf $DIR/.vim ~/.vim
echo "✅ ...done!"

echo "Please open a fresh terminal 🐊"
