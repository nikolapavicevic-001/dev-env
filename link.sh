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
rm -rf ~/.local/bin/dev-commit
ln -s $HOME/personal/dev-env/scripts/tmux-sessionizer ~/.local/bin/tmux-sessionizer
ln -s $HOME/personal/dev-env/scripts/dev-commit ~/.local/bin/dev-commit

# Hyprland

rm -rf ~/.config/hypr/hyprland.conf
ln -s $HOME/personal/dev-env/dotfiles/hyprland/hyprland.conf ~/.config/hypr/hyprland.conf

rm -rf ~/.config/hypr/hyprlock.conf
ln -s $HOME/personal/dev-env/dotfiles/hyprland/hyprlock.conf ~/.config/hypr/hyprlock.conf

rm -rf ~/.config/hypr/hyprpaper.conf
ln -s $HOME/personal/dev-env/dotfiles/hyprland/hyprpaper.conf ~/.config/hypr/hyprpaper.conf

# WAYBAR

rm -rf ~/.config/waybar/config.jsonc
ln -s $HOME/personal/dev-env/dotfiles/waybar/config.jsonc ~/.config/waybar/config.jsonc

rm -rf ~/.config/waybar/style.css
ln -s $HOME/personal/dev-env/dotfiles/waybar/style.css ~/.config/waybar/style.css


