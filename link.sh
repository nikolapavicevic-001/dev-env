#!/usr/bin/env bash

# NVIM
rm -rf ~/.config/nvim
ln -s $HOME/personal/dev-env/dotfiles/nvim ~/.config/nvim

# ZSH
rm -rf ~/.zshrc
rm -rf ~/.zsh_profile
ln -s $HOME/personal/dev-env/dotfiles/zsh/.zshrc ~/.zshrc
ln -s $HOME/personal/dev-env/dotfiles/zsh/.zsh_profile ~/.zsh_profile

# TMUX
rm -rf ~/.tmux.conf
rm -rf ~/.config/tmux/.tmux.conf
ln -s $HOME/personal/dev-env/dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -s $HOME/personal/dev-env/dotfiles/tmux/.tmux.conf ~/.config/tmux/.tmux.conf

# ALACRITTY
rm -rf ~/.config/alacritty
ln -s $HOME/personal/dev-env/dotfiles/alacritty ~/.config/alacritty

# EXECUTABLES
mkdir -p $HOME/.local/bin
rm -rf ~/.local/bin/tmux-sessionizer
ln -s $HOME/personal/dev-env/dotfiles/executables/tmux-sessionizer ~/.local/bin/tmux-sessionizer
