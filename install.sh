brew install stow

# stow dotfiles
stow git
stow tmux
stow zsh

# add zsh as a login shell
command -v zsh | sudo tee -a /etc/shells

# use zsh as default shell
sudo chsh -s $(which zsh) $USER

brew install antidote

source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
# bundle zsh plugins 
antidote bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

# Use kitty terminal on MacOS
# [ `uname -s` = 'Darwin' ] && stow kitty