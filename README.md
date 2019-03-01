# Setup
0. Install [iTerm2](https://www.iterm2.com/)
0. Install patched [FiraCode](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Retina/complete/Fura%20Code%20Retina%20Nerd%20Font%20Complete.ttf)
0. Install Xcode Command Line Tools
```
xcode-select --install
```
0. Clone this repo (including vim submodule)
```
cd && git clone --recursive https://github.com/albronca/dotfiles.git
```
0. Run script to install packages and create symlinks
```
./dotfiles/install.sh
```
0. Update iTerm to load preferences from `~/dotfiles`
