for DOTFILE in $HOME/.{aliases,fzf.bash,git-stuff,path,prompt}; do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done

