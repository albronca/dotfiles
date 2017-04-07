read -d '' DOTFILES << EOF
  aliases bash_profile bashrc fzf.bash git-completion.bash git-prompt.sh
  git-stuff gitconfig gitignore_global gitmodules path prompt
EOF

DIR="$HOME/dotfiles"
OLDDIR="$HOME/dotfiles_backup"

echo "📝 Backing up existing dotfiles..."
mkdir $OLDDIR

for FILE in $DOTFILES; do
  [ -f ~/.$FILE ] && mv -f ~/.$FILE $OLDDIR
done

[ -d ~/.vim ] && mv -f ~/.vim $OLDDIR

echo "✅ ...done!"


echo "📝 Copying new dotfiles..."

for FILE in $DOTFILES; do
  cp -f $DIR/.$FILE ~/.$FILE
done

cp -rf $DIR/.vim ~/.vim
echo "✅ ...done!"

echo "Please open a fresh terminal 🐊"
