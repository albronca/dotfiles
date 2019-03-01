## Prerequisites
- [iTerm2](https://www.iterm2.com/)
- Patched [FiraCode](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Retina/complete/Fura%20Code%20Retina%20Nerd%20Font%20Complete.ttf)
- Xcode Command Line Tools `xcode-select --install`

## Setup
1. Clone this repo (including vim submodule)
```
cd && git clone --recursive https://github.com/albronca/dotfiles.git
```
2. Run script to install packages and create symlinks
```
./dotfiles/install.sh
```
3. iTerm > Preferences > Load preferences from a custom folder or URL: `~/dotfiles`
