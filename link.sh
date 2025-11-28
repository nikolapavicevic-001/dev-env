#!/usr/bin/env bash

set -e

DOTFILES_DIR="$HOME/personal/dev-env/dotfiles"
SCRIPTS_DIR="$HOME/personal/dev-env/scripts"

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

link_file() {
    local source="$1"
    local target="$2"

    mkdir -p "$(dirname "$target")"

    if [ -e "$target" ] || [ -L "$target" ]; then
        rm -rf "$target"
    fi

    ln -sf "$source" "$target"
    echo -e "${GREEN}✓${NC} Linked: $target -> $source"
}

echo "Setting up dotfiles..."

# NVIM
link_file "$DOTFILES_DIR/nvim" "$HOME/.config/nvim"

# ZSH
link_file "$DOTFILES_DIR/zsh/.zshrc" "$HOME/.zshrc"
link_file "$DOTFILES_DIR/zsh/.zsh_profile" "$HOME/.zsh_profile"

# TMUX
link_file "$DOTFILES_DIR/tmux/.tmux.conf" "$HOME/.tmux.conf"
link_file "$DOTFILES_DIR/tmux/.tmux.conf" "$HOME/.config/tmux/.tmux.conf"

# ALACRITTY
link_file "$DOTFILES_DIR/alacritty" "$HOME/.config/alacritty"

# EXECUTABLES
link_file "$SCRIPTS_DIR/tmux-sessionizer" "$HOME/.local/bin/tmux-sessionizer"
link_file "$SCRIPTS_DIR/dev-commit" "$HOME/.local/bin/dev-commit"

# Make executables executable
chmod +x "$HOME/.local/bin/tmux-sessionizer"
chmod +x "$HOME/.local/bin/dev-commit"

# WAYBAR
link_file "$DOTFILES_DIR/waybar/config.jsonc" "$HOME/.config/waybar/config.jsonc"
link_file "$DOTFILES_DIR/waybar/style.css" "$HOME/.config/waybar/style.css"
link_file "$DOTFILES_DIR/waybar/scripts/waybar-wttr.py" "$HOME/.config/waybar/scripts/waybar-wttr.py"
chmod +x "$HOME/.config/waybar/scripts/waybar-wttr.py"

# HYPRLAND
link_file "$DOTFILES_DIR/hypr/hyprland.conf" "$HOME/.config/hypr/hyprland.conf"

#ROFI
link_file "$DOTFILES_DIR/rofi" "$HOME/.config/rofi"

echo -e "\n${GREEN}✓ Dotfiles setup complete!${NC}"
