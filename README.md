# Setup
0. Install [iTerm2](https://www.iterm2.com/)
0. Install [FiraCode](https://github.com/tonsky/FiraCode)
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
